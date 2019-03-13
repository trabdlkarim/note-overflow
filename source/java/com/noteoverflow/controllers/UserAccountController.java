package com.noteoverflow.controllers;


import com.noteoverflow.models.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;



@Controller
public class UserAccountController {
        
        @Autowired
	private UserDetailsService userDetailsService; 
        private String currentUserEmail ;
        
        @RequestMapping(value="/user/feed")
	public String renderUserDashboardView(ModelMap model, Principal principal) {
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            model.addAttribute("pageName","Kullanıcı Paneli");
            model.addAttribute("currentUser",user);
            model.addAttribute("currentUserFriendsCount", 
                  userDetailsService.getFriendsCount(user.getUserID()));
            model.addAttribute("currentUserFriendsList",
                  userDetailsService.getFriendsList(user.getUserID()));
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
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("pageName","Ders Notlarim");  
            return "account/notes";
	   }
        
        @RequestMapping(value="/user/post")
	public String renderPostView(ModelMap model,Principal principal) {
	    currentUserEmail = principal.getName();
            model.addAttribute("currentUser",
                  userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("pageName","Ders Notu Sayfası");
            model.addAttribute("lectureNoteID",145);
            return "account/post";
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
            currentUserEmail = principal.getName();
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
	    model.addAttribute("pageName","Kullanıcı Profili"); 
            model.addAttribute("user",userDetailsService.getUserDetailsByUsername(username));
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
        
       
        
        
         @RequestMapping(value="/user/add_new_note")
	public String renderAddNewNoteView(ModelMap model,Principal principal) {
            currentUserEmail = principal.getName();
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("pageName","Yeni Ders Notu Ekle ");             
	    return "forms/new_note";
	   }
        
        @RequestMapping(value="/user/timeline")
	public String renderTimelineView(ModelMap model,Principal principal) {
            currentUserEmail = principal.getName();
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(currentUserEmail));
            model.addAttribute("pageName","Zaman Tüneli");             
	    return "account/timeline";
	   }
        
        @RequestMapping(value="/logout.htm")
	public String renderLogoutView(ModelMap model) {
              model.addAttribute("pageName","Çıkış");             
	      return "account/logout";
	   }
        

   
}
