/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.service.impl;

import com.noteoverflow.dao.CourseDAO;
import com.noteoverflow.models.Course;
import com.noteoverflow.service.CourseDetailsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author trabdlkarim
 */
public class CourseServiceImpl implements CourseDetailsService {
    @Autowired
    private CourseDAO courseDAO;
    
    @Override
    public List<Course> getAllCourses() {
     return  courseDAO.getAllCourses();
    }

    @Override
    public Course getCourseById(int id) {
        return courseDAO.getCourseById(id);
    }

    @Override
    public Course getCourseByName(String name) {
        return courseDAO.getCourseByName(name);
    }
    
}
