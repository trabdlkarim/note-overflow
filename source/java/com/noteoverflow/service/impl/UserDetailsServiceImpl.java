/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.service.impl;

import com.noteoverflow.dao.UserDetailsDAO;
import com.noteoverflow.models.FriendRequest;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.models.parser.RegisterFormParser;
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
    public UserDetails getUserDetailsByEmail(String email) {
      return userDetailsDAO.getUserDetailsByEmail(email);
    }
    
    @Override
    public UserDetails getUserDetailsByUsername(String username) {
      return userDetailsDAO.getUserDetailsByUsername(username);
    }

    @Override
    public List<UserDetails> getFriendsList(int id) {
       return userDetailsDAO.getFriendsList(id);
    }
    
    @Override
    public int getFriendsCount(int id){
        return this.getFriendsList(id).size();
    }

    @Override
    public UserDetails getUserDetailsById(int userId) {
       return userDetailsDAO.getUserDetailsById(userId);
    }

    @Override
    public void registerNewUser(RegisterFormParser parser) {
        this.userDetailsDAO.registerNewUser(parser);
    }

    @Override
    public List<UserDetails> searchUser(String pattern) {
        return this.userDetailsDAO.search(pattern);
    }

    @Override
    public void sendFiendRequest(FriendRequest request) {
        this.userDetailsDAO.sendFiendRequest(request);
    }

    @Override
    public void acceptFiendRequest(FriendRequest request) {
        this.userDetailsDAO.acceptFiendRequest(request);
    }

    @Override
    public List<UserDetails> getUserFriendRequests(int userId) {
       return  this.userDetailsDAO.getUserFriendRequests(userId);
    }
    
    @Override
    public List<UserDetails> getUserSentRequests(int userId) {
       return  this.userDetailsDAO.getUserSentRequests(userId);
    }

    @Override
    public void cancelFriendRequest(FriendRequest request) {
        this.userDetailsDAO.cancelFriendRequest(request);
    }

    @Override
    public void unfriendUser(int userId, int friendId) {
        this.userDetailsDAO.unfriendUser(userId, friendId);
    }
    
}
