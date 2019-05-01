/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import com.noteoverflow.models.Course;
import com.noteoverflow.models.parser.AddLectureNoteFormParser;
import com.noteoverflow.models.parser.ContactUsFormParser;
import com.noteoverflow.models.parser.ForgotPasswordFormParser;
import com.noteoverflow.models.parser.LoginFormParser;
import com.noteoverflow.models.parser.RegisterFormParser;
import com.noteoverflow.service.CourseDetailsService;
import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author trabdlkarim
 */

@Controller
public class FormController {
        
        @Autowired
	private UserDetailsService userDetailsService;
        
        @Autowired
	private CourseDetailsService courseDetailsService;
        
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
          ContactUsFormParser contactUsFormParser = new ContactUsFormParser();
          String title = "Bize Ulaşın";
          model.addAttribute("currentUser",userDetailsService.getUserDetailsByEmail(username)); 
          model.addAttribute("contactUsFormParser", contactUsFormParser);
          model.addAttribute("pageName",title);   
          return "forms/contact";
	 }
        @GetMapping(value="/user/add_new_note")
	public String renderAddNewNoteView(ModelMap model,Principal principal) {
            AddLectureNoteFormParser parser = new AddLectureNoteFormParser();
            List<Course> courses = courseDetailsService.getAllCourses();
            username = principal.getName();
            model.addAttribute("currentUser",
                    userDetailsService.getUserDetailsByEmail(username));
            model.addAttribute("courses",courses);
            model.addAttribute("pageName","Yeni Ders Notu Ekle ");
            
            model.addAttribute("addLecNoteFormParser",parser);
	    return "forms/new_note";
	   }
}
