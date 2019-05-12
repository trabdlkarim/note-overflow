
package com.noteoverflow.models;

public class Activity {
    
    private int activityId;
    private int userId;
    private int lecNoteId;
    private String datetime;
    private String content;
    
    public int getActivityId() {return activityId;}
    public void setActivityId(int activityId) {this.activityId = activityId;}
    public int getUserId() {return userId;}
    public void setUserId(int userId) {this.userId = userId;}
    public int getLecNoteId() {return lecNoteId;}
    public void setLecNoteId(int lecNoteId) {this.lecNoteId = lecNoteId;}
    public String getDatetime() {return datetime;}
    public void setDatetime(String datetime) { this.datetime = datetime;}
    public String getContent() {return content;}
    public void setContent(String content){this.content = content;}
   
    
    
}
