/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.service;

import com.noteoverflow.models.Course;
import java.util.List;

/**
 *
 * @author trabdlkarim
 */
public interface CourseDetailsService {
    public List<Course> getAllCourses();
    public Course getCourseById(int id);
    public Course getCourseByName(String name);
}
