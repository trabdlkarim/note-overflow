/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author trabdlkarim
 */
@Controller
public class StaticPagesController {
    
    @Autowired
    private UserDetailsService userDetailsService; 
    private String username;    
    
    @RequestMapping(value="/pages/about", method = RequestMethod.GET)
    public String renderAboutView(ModelMap model,Principal principal) {
        username = principal.getName();
        model.addAttribute("currentUser",
                userDetailsService.getUserDetailsByEmail(username));     
        String title = "Hakkımızda";
        model.addAttribute("pageName",title);
        
        return "static/about";
	}
       
    @RequestMapping(value="/pages/terms", method = RequestMethod.GET)
    public String renderTermsView(ModelMap model,Principal principal) {
        username = principal.getName();
        model.addAttribute("currentUser",
                userDetailsService.getUserDetailsByEmail(username));
        String title = "Kullanım Şartları";
        model.addAttribute("pageName",title);
        
        return "static/terms";
	}
        
    @RequestMapping(value="/pages/privacy", method = RequestMethod.GET)
    public String renderPrivacyView(ModelMap model,Principal principal) {
        username = principal.getName();
        model.addAttribute("currentUser",
                userDetailsService.getUserDetailsByEmail(username));             
        String title = "Gizlilik Politikası";
        model.addAttribute("pageName",title);
        
        return "static/privacy";
	}
    
        
    @RequestMapping(value="/pages/stats", method = RequestMethod.GET)
    public String renderStatsView(ModelMap model,Principal principal) {
        username = principal.getName();
        model.addAttribute("currentUser",
                userDetailsService.getUserDetailsByEmail(username));  
        String title = "İstatistik";
        model.addAttribute("pageName",title);
        
        return "static/stats";
	}
    @RequestMapping(value="pages/links")
    public String renderResourcesView(ModelMap model,Principal principal){
      String title = "Linkler";
      model.addAttribute("pageName",title);
      username = principal.getName();
      model.addAttribute("currentUser",
              userDetailsService.getUserDetailsByEmail(username));
      return "static/resources";
       
   }
}
