/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.validator;
import com.noteoverflow.models.parser.AddLectureNoteFormParser;
import org.springframework.validation.Errors;    
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author trabdlkarim
 */
public class AddLectureNoteFormValidator implements Validator {
    
    @Override
    public boolean supports(Class<?> type) {
        return AddLectureNoteFormParser.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object target, Errors errors) {
        AddLectureNoteFormParser attrib = (AddLectureNoteFormParser) target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lecNoteTitle", "lecNoteTitle.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lecNoteCourse", "lecNoteCourse.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lecNoteDesc", "lecNoteDesc.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lecNoteFile", "lecNoteFile.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lecNoteStatus", "lecNoteStatus.required");
        
        if(attrib.getLecNoteCourse().equalsIgnoreCase("None")){
          errors.rejectValue("lecNoteCourse", "error.lecNoteCourse");
        }
        
        if(attrib.getLecNoteDesc().length()<50){
          errors.rejectValue("lecNoteDesc", "error.lecNoteDesc");
          
        }
        
        if(attrib.getLecNoteTitle().length()<10){
          errors.rejectValue("lecNoteTitle", "error.lecNoteTitle");
        }
        
        if(attrib.getLecNoteFile().isEmpty()){
          errors.rejectValue("lecNoteFile", "error.lecNoteFile");
        }
        
        if(!(attrib.getLecNoteStatus().equals("PRIVATE") || 
           attrib.getLecNoteStatus().equals("PUBLIC")) ){
          errors.rejectValue("lecNoteStatus", "error.lecNoteStatus");
        }
    }
    
}
