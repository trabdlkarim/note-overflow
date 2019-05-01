/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.dao.impl;

import com.noteoverflow.dao.*;
import com.noteoverflow.models.Course;
import com.noteoverflow.models.mapper.CourseRowMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author trabdlkarim
 */
public class CourseDAOImpl implements CourseDAO {
    
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    private String query;
    
    @Transactional
    @Override
    public List<Course> getAllCourses() {
        query = "SELECT ders_id, ders_adi, ders_icerigi, ders_yariyili "
                + "FROM dersler ORDER BY ders_adi";
        List <Course> courseList = (List<Course>) 
        jdbcTemplate.query(query, new Object[]{},new CourseRowMapper());
        return courseList;
    }

    @Override
    public Course getCourseById(int id) {
      query = "SELECT ders_id, ders_adi, ders_icerigi, ders_yariyili " + 
              "FROM dersler WHERE ders_id = ?";
      Course course = (Course) 
      jdbcTemplate.queryForObject(query, new Object[]{id},new CourseRowMapper());
      return course;
    }

    @Override
    public Course getCourseByName(String name) {
      query = "SELECT ders_id, ders_adi, ders_icerigi, ders_yariyili " + 
              "FROM dersler WHERE ders_adi = ?";
      Course course = (Course) 
      jdbcTemplate.queryForObject(query, new Object[]{name},new CourseRowMapper());
      return course;
    }
    
}
