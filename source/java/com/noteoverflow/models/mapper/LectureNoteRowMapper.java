/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.models.mapper;


import com.noteoverflow.models.LectureNote;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author trabdlkarim
 */
public class LectureNoteRowMapper implements RowMapper<LectureNote> {

    @Override
    public LectureNote mapRow(ResultSet rs, int i) throws SQLException {
        LectureNote note = new LectureNote();
        note.setLecNoteID(rs.getInt("not_id"));
        note.setLecNoteCourseID(rs.getInt("ders_id"));
        note.setLecNoteTitle(rs.getString("not_basligi"));
        note.setLecNoteDesc(rs.getString("not_aciklamasi"));
        note.setLecNoteFile(rs.getString("not_dosyasi"));
        note.setLecNoteOwnerID(rs.getInt("uye_id"));
        note.setLecNoteStatus(rs.getString("not_durumu"));
        note.setLecNoteLikeCount(rs.getInt("begen_sayisi"));
        note.setLecNoteTimeStamp(rs.getString("eklendigi_tarih"));
        return note;

    }
    
}
