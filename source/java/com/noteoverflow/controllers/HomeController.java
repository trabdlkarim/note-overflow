package com.noteoverflow.controllers;


import com.noteoverflow.models.LoginFormParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value="/welcome")
	public String renderHomeView(ModelMap model)
               {
                   model.addAttribute("pageName","Anasayfa");
	           return "index";
	        }
}
