/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import com.noteoverflow.models.ForgotPasswordFormParser;
import com.noteoverflow.models.LoginFormParser;
import com.noteoverflow.models.RegisterFormParser;
import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author trabdlkarim
 */

@Controller
public class UserFormController {
        
        @Autowired
	private UserDetailsService userDetailsService; 
        private String username;
        
        @RequestMapping(value="/login")
	public ModelAndView renderLoginView() {
            LoginFormParser loginFormParser = new LoginFormParser();
            ModelAndView model = new ModelAndView();
            model.setViewName("forms/login"); 
            model.addObject("pageName","Giriş");
            model.addObject("loginFormParser",loginFormParser);
	    return model;
	   }
        
        @RequestMapping(value="/signup")
	public String renderRegisterView(ModelMap model) {
            model.addAttribute("registerFormParser", new RegisterFormParser());
            model.addAttribute("pageName","Kayıdol");
            return "forms/register";
	   }
        
        @RequestMapping(value="/reset_password")
	public String renderForgotPasswordView(ModelMap model) {
            model.addAttribute("forgotPasswordFormParser", new ForgotPasswordFormParser());
            model.addAttribute("pageName","Şifre Unuttum");
            return "forms/forgot-password";
	   }
        
        @RequestMapping(value="/pages/contact", method = RequestMethod.GET)
        public String renderContactView(ModelMap model, Principal principal) {
	  username = principal.getName();
          model.addAttribute("currentUser",userDetailsService.getUserDetails(username)); 
          String title = "Bize Ulaşın";
          model.addAttribute("pageName",title);   
          return "forms/contact";
	 }
        
        @RequestMapping(value="/do/loginSecurityCheck.htm")
	public String renderLoginSecurityCheckView(ModelMap model) {
            
	      return "actions/login_security_check";
	   }
}
