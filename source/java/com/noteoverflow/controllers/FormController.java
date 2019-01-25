/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import com.noteoverflow.models.ForgotPasswordFormParser;
import com.noteoverflow.models.LoginFormParser;
import com.noteoverflow.models.RegisterFormParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author trabdlkarim
 */

@Controller
public class FormController {
        @RequestMapping(value="/login")
	public String renderLoginView(ModelMap model) {
            LoginFormParser loginFormParser = new LoginFormParser();
            model.addAttribute("pageName","Giriş");
            model.addAttribute("loginFormParser",loginFormParser);
	    return "forms/login";
	   }
        
        @RequestMapping(value="/signup")
	public String renderRegisterView(ModelMap model) {
            model.addAttribute("registerFormParser", new RegisterFormParser());
            model.addAttribute("pageName","Kayıdol");
            return "forms/register";
	   }
        
        @RequestMapping(value="/reset-password")
	public String renderForgotPasswordView(ModelMap model) {
            model.addAttribute("forgotPasswordFormParser", new ForgotPasswordFormParser());
            model.addAttribute("pageName","Şifre Unuttum");
            return "forms/forgot-password";
	   }
        
        @RequestMapping(value="/pages/contact", method = RequestMethod.GET)
        public String renderContactView(ModelMap model) {
	   
          String title = "İletişim";
           model.addAttribute("pageName",title);   
           return "forms/contact";
	   }
        @RequestMapping(value="/error")
	public String renderErrorView(ModelMap model) {
            
	      return "forms/error";
	   }
        @RequestMapping(value="/do/loginSecurityCheck.htm")
	public String renderLoginSecurityCheckView(ModelMap model) {
            
	      return "actions/login_security_check";
	   }
}
