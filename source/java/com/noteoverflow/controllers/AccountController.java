package com.noteoverflow.controllers;


import com.noteoverflow.models.LoginFormParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.noteoverflow.models.RegisterFormParser;

@Controller
public class AccountController {
	
        @RequestMapping(value="/u/feed")
	public String renderUserDashboardView(ModelMap model) {
	    model.addAttribute("pageName","Kullanıcı paneli");  
            return "account/feed";
	   }
       
        
        @RequestMapping(value="/admin/dashboard")
	public String renderAdminDashboadView(ModelMap model) {
              model.addAttribute("pageName","Yönetici paneli");
	      return "admin/dasboard";
	   }
       
        
        @RequestMapping(value="/u/notifications",method=RequestMethod.POST)
	public String renderNotificationView(ModelMap model) {
              model.addAttribute("pageName","Bildirimler");             
	      return "account/notifications";
	   }
        
        @RequestMapping(value="/logout.htm")
	public String renderLogoutView(ModelMap model) {
              model.addAttribute("pageName","Çıkış");             
	      return "account/logout";
	   }
        
        @RequestMapping(value="/success",method=RequestMethod.POST)
	public String renderWelcomeView(
                ModelMap model,
                @ModelAttribute("loginFormParser") LoginFormParser loginParser){
            
            model.addAttribute("pageName","Welcome page");             	     
            return "actions/success";
	   }

   
}
