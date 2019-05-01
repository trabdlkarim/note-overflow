/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models.parser;


import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author trabdlkarim
 */
public class AddLectureNoteFormParser {
    
    private String lecNoteTitle;
    private String lecNoteCourse;
    private String lecNoteDesc;
    private CommonsMultipartFile lecNoteFile;
    private String lecNoteStatus;

    public String getLecNoteTitle() {
        return lecNoteTitle;
    }

    public void setLecNoteTitle(String lecNoteTitle) {
        this.lecNoteTitle = lecNoteTitle;
        
    }

    public String getLecNoteCourse() {
        return lecNoteCourse;
    }

    public void setLecNoteCourse(String lecNoteCourse) {
        this.lecNoteCourse = lecNoteCourse;
    }

    public String getLecNoteDesc() {
        return lecNoteDesc;
    }

    public void setLecNoteDesc(String lecNoteDesc) {
        this.lecNoteDesc = lecNoteDesc;
    }

    public CommonsMultipartFile getLecNoteFile() {
        return lecNoteFile;
    }

    public void setLecNoteFile(CommonsMultipartFile lecNoteFile) {
        
        this.lecNoteFile = lecNoteFile;
    }

    public String getLecNoteStatus() {
        return lecNoteStatus;
    }

    public void setLecNoteStatus(String lecNoteStatus) {
        this.lecNoteStatus = lecNoteStatus;
    }
  
    
}
