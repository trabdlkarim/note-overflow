/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;
import com.noteoverflow.models.LoginFormParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.noteoverflow.models.RegisterFormParser;

/**
 *
 * @author trabdlkarim
 */

@Controller
public class AdminAccountController {
 
    @RequestMapping(value="/admin/sysadmin")
	public String renderAdminDashboadView(ModelMap model) {
              model.addAttribute("pageName","Yönetici paneli");
	      return "admin/dashboard";
	   }
       
}
