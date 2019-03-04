package com.noteoverflow.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;



@Controller
public class UserAccountController {
        @Autowired
	private UserDetailsService userDetailsService; 
        private String username;
        @RequestMapping(value="/user/feed")
	public String renderUserDashboardView(ModelMap model, Principal principal) {
            username = principal.getName();
            model.addAttribute("pageName","Kullanıcı Paneli");
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));
            return "account/feed";
	   }
        
        @RequestMapping(value="/user/lecture_notes")
	public String renderUserLectureNotesView(ModelMap model,Principal principal) {
	    username = principal.getName();
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));
            model.addAttribute("pageName","Ders Notlarim");  
            return "account/notes";
	   }
        @RequestMapping(value="/user/messages")
	public String renderUserMessageView(ModelMap model,Principal principal) {
            username = principal.getName();
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));
	    model.addAttribute("pageName","Mesajlarım");  
            return "account/messages";
	   }
        
         @RequestMapping(value="/user/profile")
	public String renderUserProfileView(ModelMap model,Principal principal) {
            username = principal.getName();
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));
	    model.addAttribute("pageName","Profil");  
            return "account/profile";
	   }
        
         @RequestMapping(value="/user/settings")
	public String renderUserSettingsView(ModelMap model,Principal principal) {
            username = principal.getName();
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));
	    model.addAttribute("pageName","Ayarlar");  
            return "account/settings";
	   }
        
        
        @RequestMapping(value="/user/notifications")
	public String renderNotificationView(ModelMap model,Principal principal) {
            username = principal.getName();
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));
            model.addAttribute("pageName","Bildirimler");             
	    return "account/notifications";
	   }
        
         @RequestMapping(value="/user/friends")
	public String renderFriendListView(ModelMap model,Principal principal) {
            username = principal.getName();
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));  
            model.addAttribute("pageName","Arkadaşlar");             
	    return "account/friends";
	   }
        
        
         @RequestMapping(value="/user/add_new_note")
	public String renderAddNewNoteView(ModelMap model,Principal principal) {
            username = principal.getName();
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));
            model.addAttribute("pageName","Yeni Ders Notu Ekle ");             
	    return "forms/new_note";
	   }
        
        @RequestMapping(value="/user/timeline")
	public String renderTimelineView(ModelMap model,Principal principal) {
            username = principal.getName();
            model.addAttribute("currentUser",userDetailsService.getUserDetails(username));
            model.addAttribute("pageName","Zaman Tüneli");             
	    return "account/timeline";
	   }
        
        @RequestMapping(value="/logout.htm")
	public String renderLogoutView(ModelMap model) {
              model.addAttribute("pageName","Çıkış");             
	      return "account/logout";
	   }
        

   
}
