/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models;
import java.util.List;
import javax.sql.DataSource;
/**
 *
 * @author trabdlkarim
 */
public interface UserDAO {
     /** 
      * This is the method to be used to initialize
      * database resources ie. connection.
     * @param ds
   */
   public void setDataSource(DataSource ds);
   
   /** 
      * This is the method to be used to create
      * a record in the User table.
     * @param name
     * @param surname
     * @param email
     * @param phone
   */
   public void create(String name, String surname, String email, String phone);
   
   /** 
      * This is the method to be used to list down
      * a record from the Student table corresponding
      * to a passed student id.
     * @param id
     * @return 
   */
   public User getUser(int id);
   
   /** 
      * This is the method to be used to list down
      * all the records from the Student table.
     * @return 
   */
   public List<User> listAllUsers();
   
   /** 
      * This is the method to be used to delete
      * a record from the Student table corresponding
      * to a passed student id.
     * @param id
   */
   public void delete(int id);
   
   /** 
      * This is the method to be used to update
      * a record into the Student table.
     * @param id
     * @param name
     * @param surname
   */
   public void updateUsername(int id, String username );
}
