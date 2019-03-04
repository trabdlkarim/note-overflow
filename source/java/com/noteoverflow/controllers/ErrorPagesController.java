/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import com.noteoverflow.models.RegisterFormParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author trabdlkarim
 */

@Controller
public class ErrorPagesController {
    
    @RequestMapping(value="/error/access_denied")
    public String renderRegisterView(ModelMap model) {
            String title = "403 Access Denied";
            model.addAttribute("pageName",title);
            return "errors/403";
	   }
}
