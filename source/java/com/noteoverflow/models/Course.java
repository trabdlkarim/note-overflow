
package com.noteoverflow.models;

public class Course {
    private String name;
    private String term;
    private String description;
    private int courseID;

    public String getName() {return name;}
    public void setName(String name) {this.name = name;}
    public String getTerm() {return term;}
    public void setTerm(String term) {this.term = term;}
    public String getDescription() {return description;}
    public void setDescription(String description) {
           this.description = description;
           }
    public int getCourseID() {return courseID;}
    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }
    
  }
