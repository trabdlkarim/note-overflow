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
 
    public UserDetails getUserDetails(String username);

    public List<UserDetails> getFriendsList(int id);   
}
