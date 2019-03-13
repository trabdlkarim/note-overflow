/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models.mapper;
import com.noteoverflow.models.Course;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author trabdlkarim
 */
public class CourseRowMapper implements RowMapper<Course> {

    @Override
    public Course mapRow(ResultSet rs, int i) throws SQLException {
      Course course = new Course();
      course.setCourseID(rs.getInt("ders_id"));
      course.setName(rs.getString("ders_adi"));
      course.setTerm(rs.getString("ders_yariyili"));
      course.setDescription(rs.getString("ders_icerigi"));
      return course;
    }
    
}
