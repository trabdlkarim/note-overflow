/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow;

import java.io.File;
import java.util.Date;


/**
 *
 * @author trabdlkarim
 */
public class NoteOverflow {
   
  public static void main(String args[]){
    String datetime = new Date().toString();
    //datetime = datetime.replace(" ", "");
    //datetime = datetime.replace(":", "");
   System.out.println(datetime);
   System.out.println(System.currentTimeMillis());

  }
}
