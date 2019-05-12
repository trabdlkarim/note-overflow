
package com.noteoverflow.controllers;


import com.noteoverflow.models.UserDetails;
import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorPagesController {
    @Autowired
    private UserDetailsService userDetailsService;
    private String currentUserEmail ;
    @RequestMapping(value="/error/403")
    public String renderAccessDeniedView(ModelMap model,Principal principal) {
            String title = "403 Erişim Engllendi";
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            model.addAttribute("pageName",title);
            model.addAttribute("currentUser",user);
            return "errors/403";
	   }
    @RequestMapping(value="/error/404")
    public String renderResourceNotFoundView(ModelMap model,Principal principal) {
            String title = "404 Sayfa Bulunmadı";
            currentUserEmail = principal.getName();
            UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
            model.addAttribute("pageName",title);
            model.addAttribute("currentUser",user);
            return "errors/custom_not_found_error";
	   }
}
