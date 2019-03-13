/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import com.noteoverflow.models.parser.AddLectureNoteFormParser;
import com.noteoverflow.models.parser.ContactUsFormParser;
import com.noteoverflow.models.parser.ForgotPasswordFormParser;
import com.noteoverflow.models.parser.LoginFormParser;
import com.noteoverflow.models.parser.RegisterFormParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author trabdlkarim
 */
@Controller
public class FormActionController {
    
    
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
                ModelMap model,
                @ModelAttribute("contactUsFormParser") ContactUsFormParser parser
                ) 
        {
              model.addAttribute("parser", parser);
	      return "actions/contact_security_check";
	   }
        
        
        @RequestMapping(value="/do/registerSecurityCheck")
	public String renderRegisterSecurityCheckView(
                ModelMap model,
                @ModelAttribute("registerFormParser") RegisterFormParser parser
                ) 
        {
              model.addAttribute("parser", parser);
	      return "actions/register_security_check";
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
        
        @RequestMapping(value="/do/addLectureNoteSecurityCheck")
	public String renderaddLectureNoteSecurityCheckView(
                ModelMap model,
                @ModelAttribute("addLectureNoteFormParser") AddLectureNoteFormParser parser
                ) 
        {
              model.addAttribute("parser", parser);
	      return "actions/add_note_secu_check";
	   }
        
        
}
