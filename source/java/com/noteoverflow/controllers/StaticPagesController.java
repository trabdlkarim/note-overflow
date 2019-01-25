/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

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
        
    @RequestMapping(value="/pages/about", method = RequestMethod.GET)
    public String renderAboutView(ModelMap model) {
             
        String title = "Hakkımızda";
        model.addAttribute("pageName",title);
        
        return "static/about";
	}
   
}
