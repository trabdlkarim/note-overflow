/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.dao.impl;

import com.noteoverflow.dao.UserDetailsDAO;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.models.mapper.UserDetailsRowMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author trabdlkarim
 */

public class UserDetailsDAOImpl implements UserDetailsDAO {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    private String sql;
    /** 
     * This methods allows to get the user with the given id.
     * @param username
     * @return
     */
    @Transactional
    @Override
    public UserDetails getUserDetails(String username) {
        
     sql = "SELECT uye_id, uye_adi, uye_soyadi, username, username2, telefon "
            + "FROM uyeler WHERE username = ?";
     UserDetails userDetails = (UserDetails) jdbcTemplate.queryForObject(
             sql,
             new Object[] {username},
             new UserDetailsRowMapper());
     
     return userDetails;
    }

    @Override
    public List<UserDetails> getFriendsList(int id) {
        sql = "SELECT u.uye_id, u.uye_adi, u.uye_soyadi, u.username, u.username2, u.telefon "
               + "FROM arkadaslar as f, uyeler as u WHERE f.arkadas_id = u.uye_id "
               + "AND f.uye_id = ?";
        List <UserDetails> friendsList = (List<UserDetails>) 
                jdbcTemplate.queryForObject(sql, new Object[] {id},
                                            new UserDetailsRowMapper());
     
     return friendsList;
    }

    
}
