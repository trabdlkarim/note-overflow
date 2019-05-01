/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models;

/**
 *
 * @author trabdlkarim
 */
public class LectureNote {
    private int lecNoteID;
    private String lecNoteTitle;
    private String lecNoteDesc;
    private int lecNoteOwnerID;
    private String lecNoteStatus;
    private int lecNoteCourseID;
    private String lecNoteFile;
    private int lecNoteLikeCount;
    private String lecNoteTimeStamp;

    public int getLecNoteID() {
        return lecNoteID;
    }

    public void setLecNoteID(int lecNoteID) {
        this.lecNoteID = lecNoteID;
    }

    public String getLecNoteTitle() {
        return lecNoteTitle;
    }

    public void setLecNoteTitle(String lecNoteTitle) {
        this.lecNoteTitle = lecNoteTitle;
    }

    public String getLecNoteDesc() {
        return lecNoteDesc;
    }

    public void setLecNoteDesc(String lecNoteDesc) {
        this.lecNoteDesc = lecNoteDesc;
    }

    public int getLecNoteOwnerID() {
        return lecNoteOwnerID;
    }

    public void setLecNoteOwnerID(int lecNoteOwnerID) {
        this.lecNoteOwnerID = lecNoteOwnerID;
    }

    public String getLecNoteStatus() {
        return lecNoteStatus;
    }

    public void setLecNoteStatus(String lecNoteStatus) {
        this.lecNoteStatus = lecNoteStatus;
    }

    public int getLecNoteCourseID() {
        return lecNoteCourseID;
    }

    public void setLecNoteCourseID(int lecNoteCourse) {
        this.lecNoteCourseID = lecNoteCourse;
    }

    public String getLecNoteFile() {
        return lecNoteFile;
    }

    public void setLecNoteFile(String lecNoteFile) {
        this.lecNoteFile = lecNoteFile;
    }

    public int getLecNoteLikeCount() {
        return lecNoteLikeCount;
    }

    public void setLecNoteLikeCount(int lecNoteLikeCount) {
        this.lecNoteLikeCount = lecNoteLikeCount;
    }

    public String getLecNoteTimeStamp() {
        return lecNoteTimeStamp;
    }

    public void setLecNoteTimeStamp(String lecNoteTimeStamp) {
        this.lecNoteTimeStamp = lecNoteTimeStamp;
    }
    
    
    
}
