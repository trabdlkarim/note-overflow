
package com.noteoverflow.models;

public class Notification {
    
    private int notificationId;
    private int receiverId;
    private String content;
    private String datetime;

    public int getNotificationId() {return notificationId;}
    public void setNotificationId(int notificationId) {
        this.notificationId = notificationId;
    }
    public int getReceiverId() {return receiverId;}
    public void setReceiverId(int receiverId) {this.receiverId = receiverId;}
    public String getContent(){return content;}
    public void setContent(String content) {this.content = content;}
    public String getDatetime() {return datetime;}
    public void setDatetime(String datetime) {this.datetime = datetime;}
    
}
