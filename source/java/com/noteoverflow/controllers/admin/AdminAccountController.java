/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.controllers.admin;
import com.noteoverflow.models.FriendRequest;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.models.parser.LoginFormParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.noteoverflow.models.parser.RegisterFormParser;
import com.noteoverflow.service.CourseDetailsService;
import com.noteoverflow.service.LectureNoteDetailsService;
import com.noteoverflow.service.UserDetailsService;
import java.security.Principal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author trabdlkarim
 */

@Controller
public class AdminAccountController {
    @Autowired
	private UserDetailsService userDetailsService;
        @Autowired
        private CourseDetailsService courseDetailsService;
        @Autowired
	private LectureNoteDetailsService lectureNoteService;
        private String currentUserEmail ;
 
    @RequestMapping(value="/admin/sysadmin")
	public String renderAdminDashboadView(ModelMap model,Principal principal,HttpServletRequest request) {
              currentUserEmail = principal.getName();
              UserDetails user = userDetailsService.getUserDetailsByEmail(currentUserEmail);
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
            
              model.addAttribute("pageName","Yönetici paneli");
	      return "admin/dashboard";
	   }
       
}
