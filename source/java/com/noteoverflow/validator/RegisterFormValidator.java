/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.validator;

import com.noteoverflow.models.parser.RegisterFormParser;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author trabdlkarim
 */
public class RegisterFormValidator implements Validator {

    @Override
    public boolean supports(Class<?> type) {
       return RegisterFormParser.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object target, Errors errors) {
        RegisterFormParser parser = (RegisterFormParser) target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "register.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "surname", "register.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "register.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "register.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "register.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "repeatPassword", "register.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "studentNo", "register.required");
        
        if(parser.getPassword().length()<6){
         errors.rejectValue("password", "error.registerPassword");
        }
        
        if(!parser.getPassword().equals(parser.getRepeatPassword())){
            errors.rejectValue("repeatPassword","error.registerRepeatPassword");
        }
        
        if(parser.getPhone().length()!=10){
          try{
             int phone = Integer.parseInt(parser.getPhone());
          }catch(Exception e){
             errors.rejectValue("phone","error.registerPhone");
          }
        }
         String name = parser.getName();
         String surname = parser.getSurname();
         String email = parser.getEmail();
        if(name.length()<2){
          errors.rejectValue("name","error.registerName");
        }
        if( name.lastIndexOf(".")!=-1 || name.lastIndexOf("-")!=-1
            || name.lastIndexOf("@")!=-1  || name.lastIndexOf("_")!=-1
             || name.lastIndexOf("%")!=-1  || name.lastIndexOf("#")!=-1 
                || name.contains("*")){
          errors.rejectValue("name", "error.registerName");
        }
        
        if(surname.length()<2){
          errors.rejectValue("surname","error.registerSurname");
        }
        
        if( surname.lastIndexOf(".")!=-1 || surname.lastIndexOf("-")!=-1
            || surname.lastIndexOf("@")!=-1  || surname.lastIndexOf("_")!=-1
             || surname.lastIndexOf("%")!=-1  || surname.lastIndexOf("#")!=-1 
                || surname.contains("*")){
          errors.rejectValue("surname", "error.registerSurname");
        }
        
        if(email.length()<5){
         errors.rejectValue("email", "error.registerEmail");
        }
    }
    
}
