package com.noteoverflow.controllers;


import com.noteoverflow.errors.ResourceNotFoundException;
import com.noteoverflow.models.Course;
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
	public String renderUserDashboardView(ModelMap model, Principal principal) {
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
	public String renderFriendListView(ModelMap model,Principal principal) {
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            model.addAttribute("currentUser",user);  
            model.addAttribute("currentUserFriendsCount", 
                  userDetailsService.getFriendsCount(user.getUserID()));
            model.addAttribute("currentUserFriendsList",
                  userDetailsService.getFriendsList(user.getUserID()));
            model.addAttribute("pageName","Arkadaşlar");             
	    return "account/friends";
	   }
        
        @RequestMapping(value="/user/lecture_notes")
	public String renderUserLectureNotesView(ModelMap model,Principal principal) {
	    currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            model.addAttribute("currentUser",user);
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
                
            String postId = request.getParameter("postId");
            postId = postId.substring(48);
            int  noteId = Integer.parseInt(postId);
            currentUserEmail = principal.getName();
            LectureNote note = lectureNoteService.getLectureNoteById(noteId);
            UserDetails owner = userDetailsService.getUserDetailsById(note.getLecNoteOwnerID());
            Course course = courseDetailsService.getCourseById(note.getLecNoteCourseID());
            Post post = new Post(note,owner,course);
            
            model.addAttribute("currentUser",
                  userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("pageName","Ders Notu Sayfası");
            model.addAttribute("post",post);
            return "account/post";
            
            }catch(Exception e){
                throw new ResourceNotFoundException(); 
            }
	   }
        
        
        @RequestMapping(value="/user/messages")
	public String renderUserMessageView(ModelMap model,Principal principal) {
            currentUserEmail= principal.getName();
            model.addAttribute("currentUser",
                  userDetailsService.getUserDetailsByEmail(currentUserEmail));
	    model.addAttribute("pageName","Mesajlarım");  
            return "account/messages";
	   }
        
        @RequestMapping(value="/user/profile")
	public String renderCurrentUserProfileView(
            ModelMap model,
            Principal principal) {
            currentUserEmail = principal.getName();
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("user",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
	    model.addAttribute("pageName","Kullanıcı Profili");  
            return "account/profile";
	   }
        
        @RequestMapping(value="/user/{username}/profile.htm")
	public String renderUserProfileView(
            @PathVariable("username") String username, 
            ModelMap model, Principal principal) {
            
            try{
             UserDetails user= userDetailsService.getUserDetailsByUsername(username);
             model.addAttribute("user",user);
            }catch(EmptyResultDataAccessException e){
              throw new ResourceNotFoundException(); 
            }
            
            currentUserEmail = principal.getName();
            UserDetails currentUser = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            model.addAttribute("currentUser",currentUser);
	    model.addAttribute("pageName","Kullanıcı Profili"); 
            return "account/profile";
	   }
        
         @RequestMapping(value="/user/settings")
	public String renderUserSettingsView(ModelMap model,Principal principal) {
            currentUserEmail = principal.getName();
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
	    model.addAttribute("pageName","Ayarlar");  
            return "account/settings";
	   }
        
        
        @RequestMapping(value="/user/notifications")
	public String renderNotificationView(ModelMap model,Principal principal) {
            currentUserEmail = principal.getName();
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("pageName","Bildirimler");             
	    return "account/notifications";
	   }
        
       
        
        @RequestMapping(value="/user/timeline")
	public String renderTimelineView(ModelMap model,Principal principal) {
            currentUserEmail = principal.getName();
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("pageName","Zaman Tüneli");             
	    return "account/timeline";
	   }
        
         @RequestMapping(value="/user/stats", method = RequestMethod.GET)
    public String renderUserStatsView(ModelMap model,Principal principal) {
        currentUserEmail = principal.getName();
        model.addAttribute("currentUser",
                userDetailsService.getUserDetailsByEmail(currentUserEmail));  
        String title = "İstatistik";
        model.addAttribute("pageName",title);
        
        return "account/stats";
	}
        @RequestMapping(value="/logout.htm")
	public String renderLogoutView(ModelMap model) {
              model.addAttribute("pageName","Çıkış");             
	      return "account/logout";
	   }
        

   
}
