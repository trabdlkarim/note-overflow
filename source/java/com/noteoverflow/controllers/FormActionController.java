/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.noteoverflow.controllers;

import com.noteoverflow.FileUploadUtils;
import com.noteoverflow.models.Course;
import com.noteoverflow.models.FriendRequest;
import com.noteoverflow.models.LectureNote;
import com.noteoverflow.models.Post;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.models.parser.AddLectureNoteFormParser;
import com.noteoverflow.models.parser.ContactUsFormParser;
import com.noteoverflow.models.parser.ForgotPasswordFormParser;
import com.noteoverflow.models.parser.LoginFormParser;
import com.noteoverflow.models.parser.RegisterFormParser;
import com.noteoverflow.service.CourseDetailsService;
import com.noteoverflow.service.LectureNoteDetailsService;
import com.noteoverflow.service.UserDetailsService;
import com.noteoverflow.validator.AddLectureNoteFormValidator;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import com.noteoverflow.validator.RegisterFormValidator;
/**
 *
 * @author trabdlkarim
 */
@Controller
public class FormActionController {
    @Autowired
    private ServletContext context; 
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private CourseDetailsService courseDetailsService;
    @Autowired
    private LectureNoteDetailsService lectureNoteService;
    @Autowired    
    private AddLectureNoteFormValidator addLecNoteFormvalidator;
    @Autowired
    private RegisterFormValidator registerFormValidator;    
    private String currentUserEmail ;
    
    @RequestMapping(value="/do/loginSecurityCheck")
    public String renderLoginSecurityCheckView(
                ModelMap model, 
                @ModelAttribute("loginFormParser") LoginFormParser parser) 
        {
              model.addAttribute("parser", parser);
	      return "actions/login_security_check";
	 }
        
        @RequestMapping(value="/do/contactUsSecurityCheck")
	public String renderContactUsSecurityCheckView(
                ModelMap model, Principal principal,
                @ModelAttribute("contactUsFormParser") ContactUsFormParser parser,
                HttpServletRequest request
                ) 
        {
            
              model.addAttribute("parser", parser);
	      return "actions/contact_security_check";
	   }
        
        
        @PostMapping(value="/signup")
	public String renderRegisterSecurityCheck(
                ModelMap model,
                @ModelAttribute("registerFormParser") RegisterFormParser parser,
                BindingResult result
                ) 
        {
           registerFormValidator.validate(parser, result);
           if (result.hasErrors()) {
            return "forms/register"; 
            } 
              userDetailsService.registerNewUser(parser);
             
	      return "actions/signup_success";
	   }
        
        @RequestMapping(value="/do/forgotPasswordSecurityCheck")
	public String renderfortgotPasswdSecurityCheckView(
                ModelMap model,
                @ModelAttribute("forgotPasswordFormParser") ForgotPasswordFormParser parser
                ) 
        {
              model.addAttribute("parser", parser);
	      return "actions/forgot_passwd_secu_check";
	   }
        
        @PostMapping(value="/user/add_new_note")
	public String renderaddLectureNoteSecurityCheckView(
                ModelMap model,Principal principal,HttpServletRequest request,
                @ModelAttribute("addLecNoteFormParser") 
                AddLectureNoteFormParser parser, BindingResult result)throws IOException
        {
             List<Course> courses = courseDetailsService.getAllCourses();
             String username = principal.getName();
             UserDetails user = userDetailsService.getUserDetailsByEmail(username);
                     
            List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
            
           model.addAttribute("friendRequests",friendRequests);
           model.addAttribute("friendRequestCount",friendRequestCount); 
           
         String topNavCancelFriendRequest = request.getParameter("topNavCancelFriendRequest");
         String topNavConfirmFriendRequest = request.getParameter("topNavConfirmFriendRequest");
         String topNavFriendId = request.getParameter("topNavFriendId");
       
         if(topNavFriendId!=null && topNavConfirmFriendRequest!=null){
             int fid = Integer.parseInt(topNavFriendId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.acceptFiendRequest(fr);
        
        }
        
        if(topNavFriendId!=null && topNavCancelFriendRequest!=null){
             int fid = Integer.parseInt(topNavFriendId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.cancelFriendRequest(fr);
        
        }   
        model.addAttribute("currentUser",user);
        model.addAttribute("courses",courses);
        model.addAttribute("pageName","Yeni Ders Notu Ekle ");
            
            addLecNoteFormvalidator.validate(parser, result);
            
            if (result.hasErrors()) {
            model.addAttribute("success","false");
            model.addAttribute("errorMessage"," Hata! Lütfen gerekli alanlar doldurunuz.");
            return "forms/new_note"; 
            }  
            
            
            CommonsMultipartFile uploadedFile = parser.getLecNoteFile();
            
            String suffix = FileUploadUtils.getFileExtension(uploadedFile.getOriginalFilename());
            String prefix = FileUploadUtils.generateRandomAphanumeric(16);
            String lecNotesRootPath = context.getInitParameter("lecNoteUploadLocation");
            File directory = FileUploadUtils.creatDirectory(lecNotesRootPath,user.getUsername());
            File tempFile = FileUploadUtils.createUniqueEmptyFile(prefix, suffix, directory);
            
            OutputStream out = new FileOutputStream(tempFile);
            InputStream in = uploadedFile.getInputStream();
            FileUploadUtils.copyBytes(in, out);
            
            LectureNote newNote = new LectureNote();
            newNote.setLecNoteTitle(parser.getLecNoteTitle());
            newNote.setLecNoteDesc(parser.getLecNoteDesc());
            newNote.setLecNoteCourseID(courseDetailsService.getCourseByName(
                    parser.getLecNoteCourse()).getCourseID());
            newNote.setLecNoteOwnerID(user.getUserID());
            newNote.setLecNoteStatus(parser.getLecNoteStatus());
            newNote.setLecNoteFile(tempFile.getName());
            
            lectureNoteService.addNewLectureNote(newNote);
            
            model.addAttribute("success","true");
            model.addAttribute("successMessage"," Notunuz başırıyla eklendi!");
            parser.setLecNoteTitle("");
            parser.setLecNoteCourse("");
            parser.setLecNoteDesc("");
            return "forms/new_note";
	   }
        
        @PostMapping(value="/user/lecture_notes")
	public String editLectureNoteHandler(ModelMap model,Principal principal,
                @ModelAttribute("editedPost") Post editedPost, HttpServletRequest request, 
                BindingResult result)
        {
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            
            List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
            
           model.addAttribute("friendRequests",friendRequests);
           model.addAttribute("friendRequestCount",friendRequestCount); 
           
         String topNavCancelFriendRequest = request.getParameter("topNavCancelFriendRequest");
         String topNavConfirmFriendRequest = request.getParameter("topNavConfirmFriendRequest");
         String topNavFriendId = request.getParameter("topNavFriendId");
        
         if(topNavFriendId!=null && topNavConfirmFriendRequest!=null){
             int fid = Integer.parseInt(topNavFriendId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.acceptFiendRequest(fr);
        
        }
        
        if(topNavFriendId!=null && topNavCancelFriendRequest!=null){
             int fid = Integer.parseInt(topNavFriendId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.cancelFriendRequest(fr);
        
        }
        
        
        model.addAttribute("currentUser",user);
            
           String unshareLecNote = request.getParameter("unshareLecNote");
           String deleteLecNote =  request.getParameter("deleteLecNote");
           
           String sharedLecNote = request.getParameter("lecNotePrivacyStatus");
           String notePrivacyStatus = request.getParameter("notePrivacyStatus");
           
           String sharedNoteUsersList = request.getParameter("sharedNoteUsersList");
           
           if((notePrivacyStatus!=null)&& (!notePrivacyStatus.isEmpty())){
               int noteId = Integer.parseInt(sharedLecNote.substring(48));
               if(notePrivacyStatus.equals("PUBLIC")){
                 lectureNoteService.updateLectureNotePrivacy(noteId,"PUBLIC");
                 lectureNoteService.deleteNotesFromSharedNotesTable(noteId);
               }
               else if(notePrivacyStatus.equals("PRIVATE")){
                 lectureNoteService.updateLectureNotePrivacy(noteId,"PRIVATE");
                 lectureNoteService.deleteNotesFromSharedNotesTable(noteId);
               }
               else if(notePrivacyStatus.equals("SHARED")){
                   if((sharedNoteUsersList != null)){
                     if(!sharedNoteUsersList.isEmpty()){
                     String[] usernames = sharedNoteUsersList.split(",");
                     ArrayList<UserDetails> users = new ArrayList();
                   for(String username:usernames){
                    UserDetails newUser = userDetailsService.getUserDetailsByEmail(username);
                    users.add(newUser);
                    }
                    lectureNoteService.shareLectureNote(users, noteId);
                    lectureNoteService.updateLectureNotePrivacy(noteId,"SHARED");
                   }
                   }
               }
           }
           
           if(unshareLecNote!=null){ 
               if(!unshareLecNote.isEmpty()){
              int noteId = Integer.parseInt(unshareLecNote.substring(48));
              int userId = user.getUserID();
              lectureNoteService.deleteUserFromSharedNotesTable(userId, noteId);
              if(lectureNoteService.getSharedNoteUsersCount(noteId).getCount()== 0){
                  lectureNoteService.updateLectureNotePrivacy(noteId,"PRIVATE");
            }
           }
           }
           
           
           if(deleteLecNote!=null && !deleteLecNote.isEmpty()){
                int noteId = Integer.parseInt(deleteLecNote.substring(48));
                String fileName = lectureNoteService.getLectureNoteById(noteId).getLecNoteFile();
                
                String lecNotesRootPath = context.getInitParameter("lecNoteUploadLocation");
                lecNotesRootPath = lecNotesRootPath + File.separator + user.getUsername(); 
               //File fileToBeDeleted = new File(lecNotesRootPath,fileName);
               
                if( FileUploadUtils.deleteLecture(fileName, context, user)){
                 lectureNoteService.deleteNotesFromSharedNotesTable(noteId);
                 lectureNoteService.deleteLectureNote(noteId);
               }
           }
          if(editedPost!=null){
            if(editedPost.getPostId()!=null){
               if(!editedPost.getPostId().isEmpty()){
                
                   int noteId = Integer.parseInt(editedPost.getPostId().substring(48));
                   LectureNote editedLecNote = lectureNoteService.getLectureNoteById(noteId);
                   String editedPostDesc = request.getParameter("postDesc");
                   
                if(editedPost.getTitle()!=null){
                  if(!editedPost.getTitle().isEmpty()){
                     if(editedPostDesc!=null){
                         if(!editedPostDesc.isEmpty()){
                             if(editedPost.getCourseName()!=null){
                                if(!editedPost.getCourseName().isEmpty()
                                   && editedPost.getCourseName()!="None"){

                                    editedLecNote.setLecNoteTitle(editedPost.getTitle());
                                    editedPost.setDescription(editedPostDesc);
                                    editedLecNote.setLecNoteDesc(editedPost.getDescription());
                                    int courseId = courseDetailsService.getCourseByName(editedPost.getCourseName()).getCourseID();
                                    editedLecNote.setLecNoteCourseID(courseId);
                                if(editedPost.getNoteFile().getSize()!=0){
                                   CommonsMultipartFile uploadedFile = editedPost.getNoteFile();
                                   String newFileName = FileUploadUtils.saveLectureNote(uploadedFile,context,user);
                                   if(newFileName!=null)editedLecNote.setLecNoteFile(newFileName);
                                }
                       lectureNoteService.updateLectureNote(noteId, editedLecNote);
                      }
                    }
                   }
                 }    
                }                
              }
             } 
           }
          }
              
          
            
            List<Course> courses = courseDetailsService.getAllCourses();
            List<LectureNote> publicNotes = lectureNoteService.getUserLectureNotes(user.getUserID(),"PUBLIC");
            List<LectureNote> privateNotes = lectureNoteService.getUserLectureNotes(user.getUserID(),"PRIVATE");
            List<LectureNote> sharedNotes = lectureNoteService.getAllUserSharedLectureNotes(user.getUserID());
            List<LectureNote> allUserNotes = lectureNoteService.getUserLectureNotes(user.getUserID());

            List<Post> publicPosts = null;
            List<Post> privatePosts = null;
            List<Post> sharedPosts = null;
            List<Post> allUserPosts = null;
            
            int allUserPostsCount = 0;
            int publicPostsCount = 0;
            int privatePostsCount = 0;
            int sharedPostsCount = 0;
            
            if(publicNotes!=null){
                publicPosts = new ArrayList();
               for(LectureNote note: publicNotes){
                   UserDetails  owner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
                   Course   course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
                   publicPosts.add(new Post(note,owner,course));
                }
               publicPostsCount = publicPosts.size();
             }
            
            if(privateNotes!=null){
                privatePosts = new ArrayList();
               for(LectureNote note: privateNotes){
                  UserDetails  owner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
                  Course   course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
                  privatePosts.add(new Post(note,owner,course));
                }
               privatePostsCount = privatePosts.size();
            }
            
            if(sharedNotes!=null){
                sharedPosts = new ArrayList();
                for(LectureNote note: sharedNotes){
                  UserDetails  owner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
                  Course   course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
                  sharedPosts.add(new Post(note,owner,course));
                }
                sharedPostsCount = sharedPosts.size();
            }
            
            if(allUserNotes!=null){
                allUserPosts = new ArrayList();
                for(LectureNote note: allUserNotes){
                  UserDetails  owner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
                  Course   course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
                  allUserPosts.add(new Post(note,owner,course));
                }
                allUserPostsCount = allUserPosts.size();
            }
            
            model.addAttribute("pageName","Ders Notlarım");
            
            model.addAttribute("allUserPosts",allUserPosts);
            model.addAttribute("allUserPostsCount",allUserPostsCount);
            
            model.addAttribute("publicPosts",publicPosts);
            model.addAttribute("publicPostsCount",publicPostsCount);

            model.addAttribute("sharedPosts",sharedPosts);
            model.addAttribute("sharedPostsCount",sharedPostsCount);
            
            model.addAttribute("privatePosts",privatePosts);
            model.addAttribute("privatePostsCount",privatePostsCount);
            model.addAttribute("courses",courses);
            model.addAttribute("editedPost",new Post());
            return "account/notes";
        
        } 
    
        
        @RequestMapping(value="/user/search.htm")
        public String renderSearchResult(ModelMap model,Principal principal, 
                                         HttpServletRequest request){
         currentUserEmail = principal.getName();
         UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
         
         List<UserDetails> friendList = this.userDetailsService.getFriendsList(user.getUserID());
         List<UserDetails> sentRequestList = this.userDetailsService.getUserSentRequests(user.getUserID());
         
         List<Integer> friendIds = new ArrayList();
         List<Integer> sentRequests = new ArrayList(); 
         
         for(UserDetails u:friendList){
          friendIds.add(new Integer(u.getUserID()));
         }
         
         for(UserDetails u:sentRequestList){
          sentRequests.add(new Integer(u.getUserID()));
         }
         int lecNoteSearchResultsCount =0;
         int userSearchResultsCount =0;
         
         String searchInput = request.getParameter("q");
         
         String friendId = request.getParameter("friendId");
         String cancelFriendRequest = request.getParameter("cancelFriendRequest");
         
         String topNavCancelFriendRequest = request.getParameter("topNavCancelFriendRequest");
         String topNavConfirmFriendRequest = request.getParameter("topNavConfirmFriendRequest");
         String topNavFriendId = request.getParameter("topNavFriendId");
         
         if(searchInput!=null){
           model.addAttribute("searchInput",searchInput);
           List<UserDetails> userSearchResult = userDetailsService.searchUser(searchInput);
           List<LectureNote> notes = this.lectureNoteService.searchLectureNote(searchInput,user.getUserID());
           List<Post> lecNoteSearchResults = new ArrayList();
               for(LectureNote note: notes){
                  UserDetails  owner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
                  Course   course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
                  lecNoteSearchResults.add(new Post(note,owner,course));
                }
        
               lecNoteSearchResultsCount = lecNoteSearchResults.size();
               userSearchResultsCount = userSearchResult.size();
               model.addAttribute("userSearchResults",userSearchResult);
               model.addAttribute("lecNoteSearchResults",lecNoteSearchResults);
           
         }
         
         
        if(topNavFriendId!=null && topNavConfirmFriendRequest!=null){
             int fid = Integer.parseInt(topNavFriendId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.acceptFiendRequest(fr);
        
        }
        
        if(topNavFriendId!=null && topNavCancelFriendRequest!=null){
             int fid = Integer.parseInt(topNavFriendId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.cancelFriendRequest(fr);
        
        }
         
        if(friendId!=null){
           int fid = Integer.parseInt(friendId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.sendFiendRequest(fr);
         
           }
        
        if(cancelFriendRequest!=null){
           int fid = Integer.parseInt(cancelFriendRequest);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.cancelFriendRequest(fr);
         
           }
            List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
            
         model.addAttribute("friendRequests",friendRequests);
         model.addAttribute("friendRequestCount",friendRequestCount);
         
         model.addAttribute("friendIDs",friendIds);
         model.addAttribute("sentRequests",sentRequests);
         
         model.addAttribute("lecNoteSearchResultsCount",lecNoteSearchResultsCount);
         model.addAttribute("userSearchResultsCount",userSearchResultsCount); 
         model.addAttribute("currentUser",user);
         model.addAttribute("pageName","Search Result");
            return "actions/top-search";
        }
}
