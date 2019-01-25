/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
/**
 *
 * @author trabdlkarim
 */
public class UserJDBCTemplate implements UserDAO{
    
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;
    
    @Override
    public void setDataSource(DataSource ds) {
        this.dataSource = ds;
        this.jdbcTemplate = new JdbcTemplate(ds);
    }

    @Override
    public void create(String name, String surname, String email, String phone) {
       String SQL = "INSERT INTO uyeler (uye_adi,uye_soyadi,email,telefon) values (?,?,?,?)";
       jdbcTemplate.update( SQL, name, surname,email,phone);
       System.out.println("New record created");
      
    }

    @Override
    public User getUser(int id) {
        String SQL = "SELECT uye_adi, uye_soyadi, email, telefon FROM uyeler WHERE uye_id = ?";
        User user = jdbcTemplate.queryForObject(SQL, 
         new Object[]{id}, new UserMapper());
      
      return user;
    }

    @Override
    public List<User> listAllUsers() {
        String SQL = "SELECT uye_id,uye_adi, uye_soyadi, email, telefon FROM uyeler";
        List <User> users = jdbcTemplate.query(SQL, new UserMapper());
        return users;
    }

    @Override
    public void delete(int id) {
       String SQL = "DELETE FROM uyeler WHERE uye_id = ?";
      jdbcTemplate.update(SQL, id);
      System.out.println("Deleted Record with ID = " + id );
     
    }

    @Override
    public void updateUsername(int id, String username) {
     String SQL = "UPDATE user SET username = ? WHERE uye_id = ?";
      jdbcTemplate.update(SQL,username, id);
      System.out.println("Updated Record with ID = " + id );
    }
    
}
