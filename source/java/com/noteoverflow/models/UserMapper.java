/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author trabdlkarim
 */
public class UserMapper implements RowMapper<User> {

    @Override
    public User mapRow(ResultSet rs, int rowNumber) throws SQLException {
      User user = new User();
      user.setId(rs.getInt("uye_id"));
      user.setName(rs.getString("uye_adi"));
      user.setSurname(rs.getString("uye_soyadi"));
      user.setEmail(rs.getString("email"));
      user.setPhone(rs.getString("telefon"));
      return user; 
    }
     
}
