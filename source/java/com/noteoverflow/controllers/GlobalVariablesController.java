/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author trabdlkarim
 */
@Controller
@ControllerAdvice
public final class GlobalVariablesController {
    
    @ModelAttribute
    public void addAttributesToGlobalModel(HttpServletRequest request,ModelMap model){
       boolean isAdmin = request.isUserInRole("ROLE_ADMIN");     
       model.addAttribute("isUserAnAdministrator",isAdmin);
       model.addAttribute("systemName","Note Overflow"); 
       model.addAttribute("appVersion","v1.0.20");
       model.addAttribute("rootContext","/noteoverflow");
       model.addAttribute("appAssets","/noteoverflow/assets");
       model.addAttribute("appLicense","copyright 2019. All Rights Reserved");
       model.addAttribute("avatarPath","/noteoverflow/cdn/media/dbms/img/avatar");
       model.addAttribute("lectureNotePath","/noteoverflow/cdn/media/dbms/notes");

    }
}
