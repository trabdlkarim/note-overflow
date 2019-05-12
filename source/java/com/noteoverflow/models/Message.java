
package com.noteoverflow.models;

public class Message {
   private int messageId;
   private int senderId;
   private int receiverId;
   private String content;
   private String datetime;

    public int getMessageId() {return messageId;}
    public void setMessageId(int messageId){this.messageId = messageId; }
    public int getSenderId() {return senderId;}
    public void setSenderId(int senderId) {this.senderId = senderId;}
    public int getReceiverId() {return receiverId;}
    public void setReceiverId(int receiverId) {this.receiverId = receiverId;}
    public String getContent() {return content;}
    public void setContent(String content) {this.content = content;}
    public String getDatetime() {return datetime;}
    public void setDatetime(String datetime) { this.datetime = datetime; }
    
}
