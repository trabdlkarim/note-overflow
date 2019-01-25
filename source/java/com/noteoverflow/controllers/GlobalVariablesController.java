/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 *
 * @author trabdlkarim
 */

@ControllerAdvice
public final class GlobalVariablesController {
    
    @ModelAttribute
    public void addAttributesToGlobalModel(ModelMap model){
       model.addAttribute("systemName","Note Overflow"); 
       model.addAttribute("systemVersion","v1.0.20");
       model.addAttribute("copyright","copyright 2019. All Rights Reserved");
    }
}
