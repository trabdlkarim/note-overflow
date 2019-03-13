/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models.parser;

/**
 *
 * @author trabdlkarim
 */
public class LoginFormParser {
    private String username;
    private String password;
    private String rememberMeCheckbox;
    

    public String getRememberMeCheckbox() {
        return rememberMeCheckbox;  
    }

    public void setRememberMeCheckbox(String rememberMeCheckbox) {
        this.rememberMeCheckbox = rememberMeCheckbox;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
}
