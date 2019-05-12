
package com.noteoverflow.models;
public class UserDetails {
        private String name;
        private String surname;
        private int userID;
        private String username;
        private String phone;
        private String email;
        private String avatar;
        public String getName() {return name;}
        public void setName(String name) {this.name = name;}
        public String getSurname() {return surname;}
        public void setSurname(String surname) {this.surname = surname;}
        public int getUserID() {return userID;}
        public void setUserID(int id) {this.userID = id;}
        public String getUsername() {return username;}
        public void setUsername(String email) { this.username = email;}
        public String getPhone() {return phone;}
        public void setPhone(String phone) {this.phone = phone;}
        public String getEmail() { return email;}
        public void setEmail(String email) { this.email = email; }
        public String getAvatar() {return avatar;}
        public void setAvatar(String avatar) {this.avatar = avatar;}
}

