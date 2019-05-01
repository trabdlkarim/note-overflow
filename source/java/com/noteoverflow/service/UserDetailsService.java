/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.service;

import com.noteoverflow.models.UserDetails;
import java.util.List;

/**
 *
 * @author trabdlkarim
 */
public interface UserDetailsService {
 
    public UserDetails getUserDetailsByEmail(String email);
    
    public UserDetails getUserDetailsByUsername(String username); 
    
    public int getFriendsCount(int id);

    public List<UserDetails> getFriendsList(int id);
    
     public UserDetails getUserDetailsById(int userId);
}
