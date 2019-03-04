package com.noteoverflow.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {    
   @RequestMapping(value="/welcome")
    public String renderHomeView(ModelMap model)
        {
           model.addAttribute("pageName","Anasayfa");
           return "index";
	  }
}
