package com.noteoverflow.controllers;


import com.noteoverflow.errors.ResourceNotFoundException;
import com.noteoverflow.models.Course;
import com.noteoverflow.models.FriendRequest;
import com.noteoverflow.models.LectureNote;
import com.noteoverflow.models.Post;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.service.CourseDetailsService;
import com.noteoverflow.service.LectureNoteDetailsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class UserAccountController {
        
        @Autowired
	private UserDetailsService userDetailsService;
        @Autowired
        private CourseDetailsService courseDetailsService;
        @Autowired
	private LectureNoteDetailsService lectureNoteService;
        private String currentUserEmail ;
        
        @RequestMapping(value="/user/feed")
	public String renderUserDashboardView(ModelMap model, Principal principal,
                HttpServletRequest request) {
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            List<LectureNote> notes = lectureNoteService.generateUserFeed(user.getUserID());
            
            if(notes != null){
                List<Post> posts = new ArrayList();
                
              for(LectureNote note : notes){
                 UserDetails  owner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
                 Course   course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
                   posts.add(new Post(note,owner,course));
                 }
                model.addAttribute("posts", posts);
            }
            
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
               System.out.println("testConfirm");
               this.userDetailsService.acceptFiendRequest(fr);
               System.out.println("testConfirm2");

            }

            if(topNavFriendId!=null && topNavCancelFriendRequest!=null){
               int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               System.out.println("test");
               this.userDetailsService.cancelFriendRequest(fr);
               System.out.println("test2");

            }
            
            model.addAttribute("pageName","Notların Akışı Duvarı");
            model.addAttribute("currentUser",user);
            model.addAttribute("currentUserFriendsCount", 
                  userDetailsService.getFriendsCount(user.getUserID()));
            model.addAttribute("currentUserFriendsList",
                  userDetailsService.getFriendsList(user.getUserID()));
             model.addAttribute("currentUserNotesCount",
                  lectureNoteService.getUserLectureNotesCount(user.getUserID()));
            return "account/feed";
	   }
        
        @RequestMapping(value="/user/friends")
	public String renderFriendListView(ModelMap model,Principal principal,
                HttpServletRequest request) {
            
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            String cancelFriendRequest = request.getParameter("cancelFriendRequest");
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
            
          if(cancelFriendRequest!=null){
               int fid = Integer.parseInt(cancelFriendRequest);
               userDetailsService.unfriendUser(user.getUserID(), fid);
          }
         
            model.addAttribute("currentUser",user);  
            model.addAttribute("currentUserFriendsCount", 
                  userDetailsService.getFriendsCount(user.getUserID()));
            model.addAttribute("currentUserFriendsList",
                  userDetailsService.getFriendsList(user.getUserID()));
            model.addAttribute("pageName","Arkadaşlar");
            
	    return "account/friends";
	   }
        
         @RequestMapping(value="/user/shared_note_users_list")
	public String renderSharedNoteUsersListView(ModelMap model,Principal principal,
                HttpServletRequest request) {
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            String deleteNote = request.getParameter("deleteNote");
            String deleteUser =  request.getParameter("deleteUser");
            
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
            
            try{
            String nid = request.getParameter("nid");
            nid = nid.substring(48);
            int  noteId = Integer.parseInt(nid);
            LectureNote note = lectureNoteService.getLectureNoteById(noteId);
            if(note.getLecNoteOwnerID()!=user.getUserID()){
                if(note.getLecNoteStatus()!="SHARED"){
                   throw new ResourceNotFoundException(); 
                }
            }
            Course course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
            Post post = new Post(note,user,course);
            model.addAttribute("currentUser",user);
            
            if(deleteUser!=null){ 
               if(deleteNote!=null){
                 if(!deleteUser.isEmpty() && !deleteNote.isEmpty()){
                  int lecNoteId = Integer.parseInt(deleteNote.substring(48));
                  int userId = Integer.parseInt(deleteUser);
                  lectureNoteService.deleteUserFromSharedNotesTable(userId, lecNoteId);
                  if(lectureNoteService.getSharedNoteUsersCount(noteId).getCount()== 0){
                   lectureNoteService.updateLectureNotePrivacy(noteId,"PRIVATE");
               }
             }
            }
           }
            model.addAttribute("sharedNoteUsersCount", 
                  lectureNoteService.getSharedNoteUsersCount(noteId));
            model.addAttribute("sharedNoteUsersList",
                  lectureNoteService.getSharedNoteUsersList(noteId));
            
            model.addAttribute("post",post);
            model.addAttribute("pageName","Notun Paylaşımı Listesi");             

            return "account/shared_note_users_list";
            }
            catch(Exception e){
                throw new ResourceNotFoundException(); 
            }
            
	   }
        
        @GetMapping(value="/user/lecture_notes")
	public String renderUserLectureNotesView(ModelMap model,Principal principal,
                HttpServletRequest request) {
	    currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            model.addAttribute("currentUser",user);
            
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
        
        @RequestMapping(value="/user/post")
	public String renderPostView(ModelMap model,Principal principal,
                                    HttpServletRequest request) {
	    
            try{
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
           
            String postId = request.getParameter("postId");
             String deleteNote = request.getParameter("deleteNote");
             String deleteUser =  request.getParameter("deleteUser");
           
            postId = postId.substring(48);
            int  noteId = Integer.parseInt(postId);

            LectureNote note = lectureNoteService.getLectureNoteById(noteId);
            UserDetails owner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
            Course course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
            Post post = new Post(note,owner,course);
             int i = post.getNoteFileName().lastIndexOf(".");
             String fileExt= post.getNoteFileName().substring(i);
            if(owner.getUserID() == user.getUserID()){
                if(note.getLecNoteStatus().equals("SHARED")){
                  model.addAttribute("sharedNoteUsersCount", 
                                     lectureNoteService.getSharedNoteUsersCount(noteId));
                  model.addAttribute("sharedNoteUsersList",
                                     lectureNoteService.getSharedNoteUsersList(noteId));        
                }
            }
            List<LectureNote> relatedLecNotes = lectureNoteService.getRelatedLectureNotes(course.getCourseID(),
                                             noteId, 5, user.getUserID());
             
            if(relatedLecNotes!=null){
               List<Post> relatedPosts = new ArrayList();  
               for(LectureNote lecNote: relatedLecNotes){
                   UserDetails  noteOwner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
                   Course   lecCourse = courseDetailsService.getCourseById(note.getLecNoteCourseID());
                   relatedPosts.add(new Post(lecNote,noteOwner,lecCourse));
                }
               model.addAttribute("relatedPosts",relatedPosts);  
             }
            
            if(deleteUser!=null){ 
               if(deleteNote!=null){
                 if(!deleteUser.isEmpty() && !deleteNote.isEmpty()){
                  int lecNoteId = Integer.parseInt(deleteNote.substring(48));
                  int userId = Integer.parseInt(deleteUser);
                  lectureNoteService.deleteUserFromSharedNotesTable(userId, lecNoteId);
                  if(lectureNoteService.getSharedNoteUsersCount(noteId).getCount()== 0){
                   lectureNoteService.updateLectureNotePrivacy(noteId,"PRIVATE");
               }
             }
            }
           }
            
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
            model.addAttribute("pageName","Ders Notu Sayfası");
            model.addAttribute("post",post);
            model.addAttribute("lecnote_file_ext",fileExt);
            return "account/post";
            
            }catch(Exception e){
                throw  e; 
            }
	   }
        
        
        @RequestMapping(value="/user/messages")
	public String renderUserMessageView(ModelMap model,Principal principal,
                HttpServletRequest request) {
            currentUserEmail= principal.getName();
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
	    model.addAttribute("pageName","Mesajlarım");  
            return "account/messages";
	   }
        
        @RequestMapping(value="/user/profile")
	public String renderCurrentUserProfileView(
            ModelMap model,HttpServletRequest request,
            Principal principal) {
            currentUserEmail = principal.getName();
            UserDetails user = this.userDetailsService.getUserDetailsByEmail(currentUserEmail);
            model.addAttribute("currentUser",user);
            model.addAttribute("user",user);
	    model.addAttribute("pageName","Kullanıcı Profili");  
            
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
            return "account/profile";
	   }
        
        @RequestMapping(value="/user/{username}/profile.htm")
	public String renderUserProfileView(
            @PathVariable("username") String username, HttpServletRequest request, 
            ModelMap model, Principal principal) {
            
            try{
             UserDetails friend= userDetailsService.getUserDetailsByUsername(username);
             model.addAttribute("user",friend);
            }catch(EmptyResultDataAccessException e){
              throw new ResourceNotFoundException(); 
            }
            
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
	    model.addAttribute("pageName","Kullanıcı Profili"); 
            return "account/profile";
	   }
        
         @RequestMapping(value="/user/settings")
	public String renderUserSettingsView(ModelMap model,Principal principal,
                HttpServletRequest request) {
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
	    model.addAttribute("pageName","Ayarlar");  
            return "account/settings";
	   }
        
        
        @RequestMapping(value="/user/notifications")
	public String renderNotificationView(ModelMap model,Principal principal,
                HttpServletRequest request) {
            currentUserEmail = principal.getName();
            
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
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
            model.addAttribute("friendRequests",friendRequests);
            model.addAttribute("friendRequestCount",friendRequestCount);
            
             model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("pageName","Bildirimler");             
	    return "account/notifications";
	   }
        
       
        
        @RequestMapping(value="/user/timeline")
	public String renderTimelineView(ModelMap model,Principal principal,
                HttpServletRequest request) {
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
            model.addAttribute("pageName","Zaman Tüneli");             
	    return "account/timeline";
	   }
        
       @RequestMapping(value="/user/stats")
       public String renderUserStatsView(ModelMap model,Principal principal,
            HttpServletRequest request) {
        currentUserEmail = principal.getName();
        
        UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
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
            
            model.addAttribute("friendRequests",friendRequests);
            model.addAttribute("friendRequestCount",friendRequestCount);
            
        model.addAttribute("currentUser",user);  
        String title = "İstatistik";
        model.addAttribute("pageName",title);
        
        return "account/stats";
	}
    
    
        @RequestMapping(value="/logout.htm")
	public String renderLogoutView(ModelMap model) {
              model.addAttribute("pageName","Çıkış");             
	      return "account/logout";
	   }
        
        @RequestMapping(value="/user/friends/requests.htm")
        public String renderFriendRequestView(ModelMap model,Principal principal,
            HttpServletRequest request){
            
            currentUserEmail = principal.getName();
        
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            
            List<UserDetails> sentFriendRequests = userDetailsService.getUserSentRequests(user.getUserID());
            
             String confirmFriendRequest = request.getParameter("confirmFriendRequest");
             String cancelFriendRequest = request.getParameter("cancelFriendRequest");
             String receivedFriendRequestId = request.getParameter("receivedFriendRequestId");
             
             String cancelSentFriendRequest = request.getParameter("cancelSentFriendRequest");
             
            int friendRequestCount = 0;
            int sentFriendRequestCount = 0; 
            
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
            if(!sentFriendRequests.isEmpty()) sentFriendRequestCount = sentFriendRequests.size();
            
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
            
        if(confirmFriendRequest!=null && receivedFriendRequestId!=null){
             int fid = Integer.parseInt(receivedFriendRequestId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.acceptFiendRequest(fr);
        
        }
        
        if(cancelFriendRequest!=null && receivedFriendRequestId!=null){
           int fid = Integer.parseInt(receivedFriendRequestId);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.cancelFriendRequest(fr);
        
        }
        
        if(cancelSentFriendRequest!=null){
          int fid = Integer.parseInt(cancelSentFriendRequest);
           FriendRequest fr = new FriendRequest();
           fr.setUserId(user.getUserID());
           fr.setFriendId(fid);
           this.userDetailsService.cancelFriendRequest(fr);
        
        }
        
         
        model.addAttribute("friendRequests",friendRequests);
        model.addAttribute("friendRequestCount",friendRequestCount);

        model.addAttribute("sentFriendRequests",sentFriendRequests);
        model.addAttribute("sentFriendRequestCount",sentFriendRequestCount);
    
        model.addAttribute("currentUser",user);  
        model.addAttribute("pageName","Arkadaşlık İstekleri");
        
        return "account/requests";
        
        }
        

   
}
