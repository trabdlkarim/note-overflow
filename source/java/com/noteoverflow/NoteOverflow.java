/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow;
import com.noteoverflow.models.User;
import java.sql.*;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.noteoverflow.models.UserJDBCTemplate;
import org.springframework.context.support.FileSystemXmlApplicationContext;
/**
 *
 * @author trabdlkarim
 */
public class NoteOverflow {
   
  public static void main(String args[]){
   ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
   
    UserJDBCTemplate userJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
       
    System.out.println("------Listing Multiple Records--------" );
    List<User> users = userJDBCTemplate.listAllUsers();
      
    for (User record : users) {
         System.out.print("ID : " + record.getId() );
         System.out.print(", Name : " + record.getName() );
         System.out.println(", Surname : " + record.getSurname());
      }  
 }
}
