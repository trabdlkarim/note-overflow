/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.dao.impl;

import com.noteoverflow.dao.UserDetailsDAO;
import com.noteoverflow.models.FriendRequest;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.models.mapper.UserDetailsRowMapper;
import com.noteoverflow.models.parser.RegisterFormParser;
import java.util.List;
import org.apache.commons.lang3.RandomStringUtils;
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
     * @param email
     * @return
     */
    @Transactional
    @Override
    public UserDetails getUserDetailsByEmail(String email) {
        
     sql = "SELECT uye_id, uye_adi, uye_soyadi, username, username2, telefon, "
            + "profil_resmi FROM uyeler WHERE username = ?";
     UserDetails userDetails = (UserDetails) jdbcTemplate.queryForObject(
             sql,
             new Object[] {email},
             new UserDetailsRowMapper());
     
     return userDetails;
    }

    @Transactional
    @Override
    public UserDetails getUserDetailsByUsername(String username) {
        
     sql = "SELECT uye_id, uye_adi, uye_soyadi, username, username2, telefon, "
            + "profil_resmi FROM uyeler WHERE username2 = ?";
     
     UserDetails userDetails = (UserDetails) jdbcTemplate.queryForObject(
             sql,
             new Object[] {username},
             new UserDetailsRowMapper());
    
     return userDetails;
    }
    
    @Transactional
    @Override
    public List<UserDetails> getFriendsList(int id) {
        String sql0 = "SELECT u.uye_id, u.uye_adi, u.uye_soyadi, u.username, u.username2, u.telefon, "
               + "u.profil_resmi, f.arkadas_olma_tarihi FROM arkadaslar as f, uyeler as u WHERE f.arkadas_id = u.uye_id "
               + "AND f.uye_id = ? ";
        
        String sql1=  "SELECT u.uye_id, u.uye_adi, u.uye_soyadi, u.username, u.username2, u.telefon, "
               + "u.profil_resmi,ark.arkadas_olma_tarihi FROM arkadaslar as ark, uyeler as u WHERE ark.uye_id = u.uye_id "
               + "AND ark.arkadas_id = ? ORDER BY arkadas_olma_tarihi DESC";
        sql = sql0 + " UNION "+ sql1;
        
        List <UserDetails> friendsList = (List<UserDetails>) 
                jdbcTemplate.query(sql, new Object[] {id,id},
                                   new UserDetailsRowMapper());
     
     return friendsList;
    }

    @Override
    public UserDetails getUserDetailsById(int userId) {
         sql = "SELECT uye_id, uye_adi, uye_soyadi, username, username2, telefon, "
            + "profil_resmi FROM uyeler WHERE uye_id = ?";
     
     UserDetails userDetails = (UserDetails) jdbcTemplate.queryForObject(
             sql,
             new Object[] {userId},
             new UserDetailsRowMapper());
    
     return userDetails;
    }

    @Override
    public void registerNewUser(RegisterFormParser parser) {
        sql = "INSERT IGNORE INTO uyeler(uye_adi,uye_soyadi,username,username2,password,telefon)"
               + "VALUES(?,?,?,?,?,?)";
        String fname = parser.getName();
        String lname = parser.getSurname();
        String rand = RandomStringUtils.randomNumeric(4);
        String username = fname.toLowerCase().split(" ")[0]
                          +"."+lname.toLowerCase().split(" ")[0]+"."+rand;
        
        jdbcTemplate.update(sql,new Object[]{fname,lname,parser.getEmail(),
                            username,parser.getPassword(),parser.getPhone()});
    }

    @Override
    public List<UserDetails> search(String regex) {
        String pattern = "%"+regex+"%";
        sql = "SELECT uye_id, uye_adi, uye_soyadi, username, username2, telefon, "
            + "profil_resmi FROM uyeler WHERE uye_adi LIKE ? "
            + "OR uye_soyadi LIKE ? OR username2 LIKE ?";
         List <UserDetails> results = (List<UserDetails>) 
                jdbcTemplate.query(sql, new Object[] {pattern,pattern,pattern},
                                   new UserDetailsRowMapper());
         return results;
    }

    @Override
    public void sendFiendRequest(FriendRequest request) {
        sql = "INSERT INTO arkadaslik_istekleri(uye_id,arkadas_id)"
                + "VALUES(?,?)";
         jdbcTemplate.update(sql,new Object[]{request.getUserId(),request.getFriendId()});
    }

    @Override
    public void acceptFiendRequest(FriendRequest request) {
        sql = "INSERT IGNORE INTO arkadaslar(uye_id,arkadas_id)"
                + "VALUES(?,?)";
        jdbcTemplate.update(sql,new Object[]{request.getUserId(),request.getFriendId()});
        this.cancelFriendRequest(request);
       
    } 

    @Override
    public List<UserDetails> getUserFriendRequests(int userId) {
       sql = "SELECT u.uye_id, u.uye_adi, u.uye_soyadi, u.username, u.username2, u.telefon, "
               + "u.profil_resmi FROM arkadaslik_istekleri as f, uyeler as u WHERE f.uye_id = u.uye_id "
               + "AND f.arkadas_id = ? ORDER BY f.tarih DESC";
        List <UserDetails> requests = (List<UserDetails>) 
                jdbcTemplate.query(sql, new Object[] {userId},
                                   new UserDetailsRowMapper());
     
     return requests;
    }
    
     @Override
    public List<UserDetails> getUserSentRequests(int userId) {
       sql = "SELECT u.uye_id, u.uye_adi, u.uye_soyadi, u.username, u.username2, u.telefon, "
               + "u.profil_resmi FROM arkadaslik_istekleri as f, uyeler as u WHERE f.arkadas_id = u.uye_id "
               + "AND f.uye_id = ? ORDER BY f.tarih DESC";
        List <UserDetails> requests = (List<UserDetails>) 
                jdbcTemplate.query(sql, new Object[] {userId},
                                   new UserDetailsRowMapper());
     

     return requests;
    }

    @Override
    public void cancelFriendRequest(FriendRequest request) {
       sql = "DELETE FROM arkadaslik_istekleri WHERE uye_id = ? AND arkadas_id = ?";
       jdbcTemplate.update(sql,new Object[]{request.getUserId(),request.getFriendId()});
       jdbcTemplate.update(sql,new Object[]{request.getFriendId(),request.getUserId()});       
       
    }

    @Override
    public void unfriendUser(int userId,int friendId) {
       sql = "DELETE FROM arkadaslar WHERE uye_id = ? AND arkadas_id = ?";
       jdbcTemplate.update(sql,new Object[]{userId,friendId});
       jdbcTemplate.update(sql,new Object[]{friendId,userId});   
    }
    


}
