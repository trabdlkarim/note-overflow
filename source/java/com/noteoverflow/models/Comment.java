

package com.noteoverflow.models;

public class Comment {
    private int commentId;
    private int lecNoteId;
    private String content;
    private String datetime;
    private int commentOwner;

    public int getCommentId() {return commentId;}
    public void setCommentId(int commentId) {this.commentId = commentId;}
    public int getLecNoteId() {return lecNoteId;}
    public void setLecNoteId(int lecNoteId){this.lecNoteId = lecNoteId;}
    public String getContent() {return content;}
    public void setContent(String content) {this.content = content;}
    public String getDatetime() {return datetime;}
    public void setDatetime(String datetime) {this.datetime = datetime;}
    public int getCommentOwner() {return commentOwner;}
    public void setCommentOwner(int commentOwner){
    this.commentOwner = commentOwner;}
    
   }
   
   
