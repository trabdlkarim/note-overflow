/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.dao;

import com.noteoverflow.models.FriendRequest;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.models.parser.RegisterFormParser;
import java.util.List;

/**
 *
 * @author trabdlkarim
 */
public interface UserDetailsDAO {
    
    public UserDetails getUserDetailsByEmail(String email);

    public List<UserDetails> getFriendsList(int id);
    
    public UserDetails getUserDetailsByUsername(String username);
    public UserDetails getUserDetailsById(int userId);
    public void registerNewUser(RegisterFormParser parser);
    public List<UserDetails> search(String regex);
    public void sendFiendRequest(FriendRequest request);
    public void acceptFiendRequest(FriendRequest request);    
    public void cancelFriendRequest(FriendRequest request);
    public List<UserDetails> getUserFriendRequests(int userId);
    public List<UserDetails> getUserSentRequests(int userId);
    public void unfriendUser(int userId, int friendId);
    
}
