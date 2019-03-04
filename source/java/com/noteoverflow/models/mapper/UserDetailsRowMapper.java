/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models.mapper;

import com.noteoverflow.models.UserDetails;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author trabdlkarim
 */
public class UserDetailsRowMapper implements RowMapper<UserDetails>  {

    @Override
    public UserDetails mapRow(ResultSet rs, int i) throws SQLException {
      UserDetails user = new UserDetails();
      user.setUserID(rs.getInt("uye_id"));
      user.setName(rs.getString("uye_adi"));
      user.setSurname(rs.getString("uye_soyadi"));
      user.setUsername(rs.getString("username2"));
      user.setPhone(rs.getString("telefon"));
      user.setEmail("username");
      return user; 
    }
    
}
