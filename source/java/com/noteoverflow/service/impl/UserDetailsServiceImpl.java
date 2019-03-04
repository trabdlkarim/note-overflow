/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.service.impl;

import com.noteoverflow.dao.UserDetailsDAO;
import com.noteoverflow.dao.impl.UserDetailsDAOImpl;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.service.UserDetailsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;


/**
 *
 * @author trabdlkarim
 */

public class UserDetailsServiceImpl implements UserDetailsService{

    @Autowired
    private UserDetailsDAO userDetailsDAO;
    
    @Override
    public UserDetails getUserDetails(String username) {
      return userDetailsDAO.getUserDetails(username);
    }

    @Override
    public List<UserDetails> getFriendsList(int id) {
       return userDetailsDAO.getFriendsList(id);
    }
    
}