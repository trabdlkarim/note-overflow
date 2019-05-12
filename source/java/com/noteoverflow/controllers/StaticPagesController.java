/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers;

import com.noteoverflow.models.FriendRequest;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
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
    
    @Autowired
    private UserDetailsService userDetailsService; 
    private String username;    
    
    @RequestMapping(value="/pages/about")
    public String renderAboutView(ModelMap model,Principal principal,HttpServletRequest request) {
        username = principal.getName();
        UserDetails user = userDetailsService.getUserDetailsByEmail(username);
        model.addAttribute("currentUser",user); 
        List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
            model.addAttribute("friendRequests",friendRequests);
            model.addAttribute("friendRequestCount",friendRequestCount);
            
            String topNavCancelFriendRequest = request.getParameter("topNavCancelFriendRequest");
            String topNavConfirmFriendRequest = request.getParameter("topNavConfirmFriendRequest");
            String topNavFriendId = request.getParameter("topNavFriendId");
             
            if(topNavFriendId!=null && topNavConfirmFriendRequest!=null){
                 int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               this.userDetailsService.acceptFiendRequest(fr);

            }

            if(topNavFriendId!=null && topNavCancelFriendRequest!=null){
                 int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               this.userDetailsService.cancelFriendRequest(fr);

            }
            
        String title = "Hakkımızda";
        model.addAttribute("pageName",title);
        
        return "static/about";
	}
       
    @RequestMapping(value="/pages/terms")
    public String renderTermsView(ModelMap model,Principal principal,HttpServletRequest request) {
        username = principal.getName();
        UserDetails user = userDetailsService.getUserDetailsByEmail(username);
        model.addAttribute("currentUser",user);
        
        List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
            model.addAttribute("friendRequests",friendRequests);
            model.addAttribute("friendRequestCount",friendRequestCount);
            
            String topNavCancelFriendRequest = request.getParameter("topNavCancelFriendRequest");
            String topNavConfirmFriendRequest = request.getParameter("topNavConfirmFriendRequest");
            String topNavFriendId = request.getParameter("topNavFriendId");
             
            if(topNavFriendId!=null && topNavConfirmFriendRequest!=null){
                 int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               this.userDetailsService.acceptFiendRequest(fr);

            }

            if(topNavFriendId!=null && topNavCancelFriendRequest!=null){
                 int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               this.userDetailsService.cancelFriendRequest(fr);

            }
            
        String title = "Kullanım Şartları";
        model.addAttribute("pageName",title);
        
        return "static/terms";
	}
        
    @RequestMapping(value="/pages/privacy")
    public String renderPrivacyView(ModelMap model,Principal principal,HttpServletRequest request) {
        username = principal.getName();
        UserDetails user = userDetailsService.getUserDetailsByEmail(username);
        model.addAttribute("currentUser",user);
        
        List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
            model.addAttribute("friendRequests",friendRequests);
            model.addAttribute("friendRequestCount",friendRequestCount);
            
            String topNavCancelFriendRequest = request.getParameter("topNavCancelFriendRequest");
            String topNavConfirmFriendRequest = request.getParameter("topNavConfirmFriendRequest");
            String topNavFriendId = request.getParameter("topNavFriendId");
             
            if(topNavFriendId!=null && topNavConfirmFriendRequest!=null){
                 int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               this.userDetailsService.acceptFiendRequest(fr);

            }

            if(topNavFriendId!=null && topNavCancelFriendRequest!=null){
                 int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               this.userDetailsService.cancelFriendRequest(fr);

            }
            
        String title = "Gizlilik Politikası";
        model.addAttribute("pageName",title);
        
        return "static/privacy";
	}
    
        
   
    @RequestMapping(value="pages/links")
    public String renderResourcesView(ModelMap model,Principal principal,HttpServletRequest request){
      String title = "Linkler";
      model.addAttribute("pageName",title);
      username = principal.getName();
      UserDetails user = userDetailsService.getUserDetailsByEmail(username);
      model.addAttribute("currentUser",user);
      List<UserDetails> friendRequests = userDetailsService.getUserFriendRequests(user.getUserID());
            int friendRequestCount = 0; 
            if(!friendRequests.isEmpty()) friendRequestCount = friendRequests.size();
            model.addAttribute("friendRequests",friendRequests);
            model.addAttribute("friendRequestCount",friendRequestCount);
            
            String topNavCancelFriendRequest = request.getParameter("topNavCancelFriendRequest");
            String topNavConfirmFriendRequest = request.getParameter("topNavConfirmFriendRequest");
            String topNavFriendId = request.getParameter("topNavFriendId");
             
            if(topNavFriendId!=null && topNavConfirmFriendRequest!=null){
                 int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               this.userDetailsService.acceptFiendRequest(fr);

            }

            if(topNavFriendId!=null && topNavCancelFriendRequest!=null){
                 int fid = Integer.parseInt(topNavFriendId);
               FriendRequest fr = new FriendRequest();
               fr.setUserId(user.getUserID());
               fr.setFriendId(fid);
               this.userDetailsService.cancelFriendRequest(fr);

            }
            
      return "static/resources";
       
   }
}
