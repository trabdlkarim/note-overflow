
package com.noteoverflow.models;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


public class Post {
    private String noteFileName;
    private String ownerAvatar;
    private String date;
    private String time;
    private String description;
    private String courseName;
    private String courseTerm;
    private String title;
    private String ownerFullname;
    private String ownerUsername;
    private int ownerId;
    private String postId;
    private String privacy;
    private int noteId;
    private CommonsMultipartFile noteFile;
    
    public Post(){}
    public Post(LectureNote note, UserDetails owner, Course course){
        
     this.postId = RandomStringUtils.randomAlphanumeric(48)+note.getLecNoteID();
        this.postId = this.postId.toUpperCase();
        this.noteFileName = note.getLecNoteFile();
        this.title = note.getLecNoteTitle();
        this.privacy = note.getLecNoteStatus();
        this.description = note.getLecNoteDesc();
        this.noteId = note.getLecNoteID();
        
        String timestamp = note.getLecNoteTimeStamp();
        String [] datetime = timestamp.split(" ");
        this.date = datetime[0].replace("-", "/");
        int i = datetime[1].lastIndexOf(":");
        this.time = datetime[1].substring(0,i);
        
        this.courseName = course.getName();
        this.courseTerm = course.getTerm();
          
        this.ownerAvatar = owner.getAvatar();
        this.ownerUsername = owner.getUsername();
        this.ownerFullname = owner.getName()+" "+owner.getSurname();
        this.ownerId = owner.getUserID();
       
    }
    public String getNoteFileName() {
        return noteFileName;
    }

    public void setNoteFileName(String noteFileName) {
        this.noteFileName = noteFileName;
    }

    public String getOwnerAvatar() {
        return ownerAvatar;
    }

    public void setOwnerAvatar(String avatar) {
        this.ownerAvatar = avatar;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseTerm() {
        return courseTerm;
    }

    public void setCourseTerm(String courseTerm) {
        this.courseTerm = courseTerm;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String Title) {
        this.title = Title;
    }

    public String getOwnerFullname() {
        return ownerFullname;
    }

    public void setOwnerFullname(String ownerFullname) {
        this.ownerFullname = ownerFullname;
    }
    
    public String getOwnerUsername() {
        return ownerUsername;
    }

    public void setOwnerUsername(String username) {
        this.ownerUsername = username;
    }

    public String getPostId() {
        return postId;
    }

    public void setPostId(String id) {
        this.postId = id;
    }

    public String getPrivacy() {
        return privacy;
    }

    public void setPrivacy(String privacy) {
        this.privacy = privacy;
    }

    public int getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(int ownerId) {
        this.ownerId = ownerId;
    }

    public int getNoteId() {
        return noteId;
    }

    public void setNoteId(int noteId) {
        this.noteId = noteId;
    }

    public CommonsMultipartFile getNoteFile() {
        return noteFile;
    }

    public void setNoteFile(CommonsMultipartFile noteFile) {
        this.noteFile = noteFile;
    }
    
   
}
