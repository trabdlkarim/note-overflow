package com.noteoverflow.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String renderLoginView(ModelMap model) {
	      return "account/login";
	   }
        @RequestMapping(value="dashboard",method=RequestMethod.GET)
	public String renderDashboardView(ModelMap model) {
	      return "account/dashboard";
	   }
        @RequestMapping(value="register",method=RequestMethod.GET)
	public String renderRegisterView(ModelMap model) {
	      return "register";
	   }
        @RequestMapping(value="notifications",method=RequestMethod.GET)
	public String renderNotificationView(ModelMap model) {
	      return "account/notifications";
	   }

}
