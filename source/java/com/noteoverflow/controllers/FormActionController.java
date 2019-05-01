/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.noteoverflow.controllers;

import com.noteoverflow.FileUploadUtils;
import com.noteoverflow.models.Course;
import com.noteoverflow.models.LectureNote;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.models.parser.AddLectureNoteFormParser;
import com.noteoverflow.models.parser.ContactUsFormParser;
import com.noteoverflow.models.parser.ForgotPasswordFormParser;
import com.noteoverflow.models.parser.LoginFormParser;
import com.noteoverflow.models.parser.RegisterFormParser;
import com.noteoverflow.service.CourseDetailsService;
import com.noteoverflow.service.LectureNoteDetailsService;
import com.noteoverflow.service.UserDetailsService;
import com.noteoverflow.validator.AddLectureNoteFormValidator;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Principal;
import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author trabdlkarim
 */
@Controller
public class FormActionController {
    @Autowired
    private ServletContext context; 
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private CourseDetailsService courseDetailsService;
    @Autowired
    private LectureNoteDetailsService lectureNoteService;
    @Autowired    
    private AddLectureNoteFormValidator validator;    
    
    
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
        
        @PostMapping(value="/user/add_new_note")
	public String renderaddLectureNoteSecurityCheckView(
                ModelMap model,Principal principal,
                @ModelAttribute("addLecNoteFormParser") 
                AddLectureNoteFormParser parser, BindingResult result)throws IOException
        {
             List<Course> courses = courseDetailsService.getAllCourses();
                String username = principal.getName();
                UserDetails user = userDetailsService.getUserDetailsByEmail(username);
                model.addAttribute("currentUser",user);
                model.addAttribute("courses",courses);
                model.addAttribute("pageName","Yeni Ders Notu Ekle ");
            
            validator.validate(parser, result);
            
            if (result.hasErrors()) {
            model.addAttribute("success","false");
            model.addAttribute("errorMessage"," Hata! Lütfen gerekli alanlar doldurunuz.");
            return "forms/new_note"; 
            }  
            
            
            CommonsMultipartFile uploadedFile = parser.getLecNoteFile();
            
            String suffix = FileUploadUtils.getFileExtension(uploadedFile.getOriginalFilename());
            String prefix = FileUploadUtils.generateRandomAphanumeric(16);
            String lecNotesRootPath = context.getInitParameter("lecNoteUploadLocation");
            File directory = FileUploadUtils.creatDirectory(lecNotesRootPath,user.getUsername());
            File tempFile = FileUploadUtils.createUniqueEmptyFile(prefix, suffix, directory);
            
            OutputStream out = new FileOutputStream(tempFile);
            InputStream in = uploadedFile.getInputStream();
            FileUploadUtils.copyBytes(in, out);
            
            LectureNote newNote = new LectureNote();
            newNote.setLecNoteTitle(parser.getLecNoteTitle());
            newNote.setLecNoteDesc(parser.getLecNoteDesc());
            newNote.setLecNoteCourseID(courseDetailsService.getCourseByName(
                    parser.getLecNoteCourse()).getCourseID());
            newNote.setLecNoteOwnerID(user.getUserID());
            newNote.setLecNoteStatus(parser.getLecNoteStatus());
            newNote.setLecNoteFile(tempFile.getName());
            
            lectureNoteService.addNewLectureNote(newNote);
            
            model.addAttribute("success","true");
            model.addAttribute("successMessage"," Notunuz başırıyla eklendi!");
            parser.setLecNoteTitle("");
            parser.setLecNoteCourse("");
            parser.setLecNoteDesc("");
            return "forms/new_note";
	   }
        
        
}
