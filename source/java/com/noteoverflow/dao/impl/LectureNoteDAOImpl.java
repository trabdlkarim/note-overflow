/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.dao.impl;

import com.noteoverflow.dao.*;
import com.noteoverflow.models.Count;
import com.noteoverflow.models.LectureNote;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.models.mapper.CountRowMapper;
import com.noteoverflow.models.mapper.LectureNoteRowMapper;
import com.noteoverflow.models.mapper.UserDetailsRowMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author trabdlkarim
 */
public class LectureNoteDAOImpl implements LectureNoteDAO {
    
    @Autowired
    private JdbcTemplate jdbcTemplate;
    private String SQL;
    
    @Transactional
    @Override
    public List<LectureNote> getUserLectureNotes(int userID, String noteStatus) {
    SQL = "SELECT not_id, ders_id, not_basligi, not_aciklamasi, not_dosyasi, "
          + "not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE uye_id = ? AND not_durumu = ? ORDER BY eklendigi_tarih DESC";
     List <LectureNote> noteList = (List<LectureNote>) 
        jdbcTemplate.query(SQL, new Object[]{userID,noteStatus},new LectureNoteRowMapper());
        return noteList;    
    }
    
    @Transactional
    @Override
    public List<LectureNote> getUserLectureNotes(int userID) {
        
        String SUBQUERY1 = "SELECT not_id, ders_id, not_basligi, not_aciklamasi, not_dosyasi, "
          + "not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE uye_id = ?";
        
        String SUBQUERY2 = "SELECT n.not_id, n.ders_id, n.not_basligi, n.not_aciklamasi, n.not_dosyasi, "
          + "n.not_durumu, n.uye_id, n.begen_sayisi, n.eklendigi_tarih FROM "
          + "ortak_notlar AS o, notlar AS n WHERE o.not_id = n.not_id "
          + "AND o.uye_id = ? ORDER BY eklendigi_tarih DESC";
        String OPERATOR= " UNION ";
        SQL = SUBQUERY1 + OPERATOR + SUBQUERY2;
         List <LectureNote> noteList = (List<LectureNote>) 
        jdbcTemplate.query(SQL, new Object[]{userID,userID},new LectureNoteRowMapper());
        
         return noteList;    
        
    }
    
    @Transactional
    @Override
    public List<LectureNote> getLectureNotesSharedWithUser(int userID) {
       SQL = "SELECT n.not_id, n.ders_id, n.not_basligi, n.not_aciklamasi, n.not_dosyasi, "
          + "n.not_durumu, n.uye_id, n.begen_sayisi, n.eklendigi_tarih FROM "
          + "ortak_notlar AS o, notlar AS n WHERE o.not_id = n.not_id "
          + "AND o.uye_id = ? ORDER BY eklendigi_tarih DESC";
         List <LectureNote> noteList = (List<LectureNote>) 
        jdbcTemplate.query(SQL, new Object[]{userID},new LectureNoteRowMapper());
        return noteList;   
    }

    @Transactional
    @Override
    public List<LectureNote> getAllPublicNotes() {
       String status= "PUBLIC";
       SQL = "SELECT not_id, ders_id, not_basligi, not_aciklamasi, not_dosyasi, "
          + "not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE not_durumu = ? ORDER BY eklendigi_tarih DESC";
        List <LectureNote> noteList = (List<LectureNote>) 
        jdbcTemplate.query(SQL, new Object[]{status},new LectureNoteRowMapper());
        return noteList;   

    }
    
    @Transactional
    @Override
    public List<LectureNote> generateUserFeed(int userID){
        String privacyPublic= "PUBLIC";
        String privacyShared= "SHARED";
        
        String SUBQUERY1="SELECT not_id, ders_id, not_basligi, not_aciklamasi, "
          + "not_dosyasi, not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE not_durumu = ?";
        
        String SUBQUERY2="SELECT not_id, ders_id, not_basligi, not_aciklamasi, "
          + "not_dosyasi, not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE not_durumu = ? AND uye_id = ?";
        
        String SUBQUERY3 = "SELECT n.not_id, n.ders_id, n.not_basligi, "
            + "n.not_aciklamasi, n.not_dosyasi, "
            + "n.not_durumu, n.uye_id, n.begen_sayisi, n.eklendigi_tarih FROM "
            + "ortak_notlar AS o, notlar AS n WHERE o.not_id = n.not_id "
            + "AND o.uye_id = ? ORDER BY eklendigi_tarih DESC";
        
        String OPERATOR = " UNION ";
        
        SQL = SUBQUERY1 + OPERATOR + SUBQUERY2 + OPERATOR + SUBQUERY3 ;
        List <LectureNote> feed = (List<LectureNote>) 
        jdbcTemplate.query(SQL, new Object[]{privacyPublic,privacyShared,userID,userID},
                new LectureNoteRowMapper());
        return feed; 
    }
    
    @Transactional
    @Override
    public void addNewLectureNote(LectureNote note) {
        SQL = "INSERT INTO notlar(not_basligi, not_aciklamasi, uye_id, not_durumu,"
            + "ders_id, not_dosyasi) VALUES(?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(
           SQL, 
           new Object[]{note.getLecNoteTitle(), note.getLecNoteDesc(), 
                        note.getLecNoteOwnerID(), note.getLecNoteStatus(),
                        note.getLecNoteCourseID(),note.getLecNoteFile()});
    }
    
    @Transactional
    @Override
    public void updateLectureNote(int oldNoteID, LectureNote note) {
      SQL = "UPDATE notlar SET not_basligi = ?, not_aciklamasi = ?, ders_id = ?,"
              + "not_durumu = ?, not_dosyasi = ? WHERE not_id = ?";
      jdbcTemplate.update(
           SQL, 
           new Object[]{
               note.getLecNoteTitle(), note.getLecNoteDesc(), 
               note.getLecNoteCourseID(),note.getLecNoteStatus(),
               note.getLecNoteFile(),oldNoteID});
    }
    
    @Transactional
    @Override
    public void deleteLectureNote(int noteID) {
       SQL ="DELETE FROM notlar WHERE not_id = ?";
       jdbcTemplate.update(SQL,noteID);
    }
    
    @Transactional
    @Override
    public void shareLectureNote(List <UserDetails> friends, int noteID) {
        SQL = "INSERT INTO ortak_notlar(uye_id,not_id) VALUES(?,?)";
        friends.forEach((friend) -> {
            jdbcTemplate.update(SQL, friend.getUserID(), noteID);
        });
    }
    
    @Transactional
    @Override
    public void updateSharedNotesTable(){
     SQL = "DELETE FROM ortak_notlar WHERE not_id IN "
           + "(SELECT not_id FROM ortak_notlar AS o, notlar AS n WHERE "
           + "o.not_id = n.not_id AND not_durumu IS NOT 'SHARED')";
     jdbcTemplate.update(SQL);
    }
    
    @Transactional
    @Override
    public void deleteUserFromSharedNotesTable(int userID, int noteID){
       SQL ="DELETE FROM ortak_notlar WHERE uye_id = ? AND not_id = ?";
       jdbcTemplate.update(SQL, userID, noteID);
    }
    
    @Override
    public void deleteNotesFromSharedNotesTable(int noteID){
       SQL ="DELETE FROM ortak_notlar WHERE not_id = ?";
       jdbcTemplate.update(SQL, noteID);
    }
     @Transactional
    @Override
    public LectureNote getLectureNoteById(int noteId) {
        SQL="SELECT not_id, ders_id, not_basligi, not_aciklamasi, "
          + "not_dosyasi, not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE not_id = ?";
       LectureNote note = (LectureNote) jdbcTemplate.queryForObject(SQL,
               new Object[]{noteId},
               new LectureNoteRowMapper());
       return note;
    }
    @Transactional
    @Override
    public List<LectureNote> getAllUserSharedLectureNotes(int userID) {
        String privacy = "SHARED";
        String SUBQUERY1 = "SELECT not_id, ders_id, not_basligi, not_aciklamasi, not_dosyasi, "
          + "not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE uye_id = ? AND not_durumu = ?";
        
        String SUBQUERY2 = "SELECT n.not_id, n.ders_id, n.not_basligi, n.not_aciklamasi, n.not_dosyasi, "
          + "n.not_durumu, n.uye_id, n.begen_sayisi, n.eklendigi_tarih FROM "
          + "ortak_notlar AS o, notlar AS n WHERE o.not_id = n.not_id "
          + "AND o.uye_id = ? ORDER BY eklendigi_tarih DESC";
        String OPERATOR= " UNION ";
        SQL = SUBQUERY1 + OPERATOR + SUBQUERY2;
         List <LectureNote> noteList = (List<LectureNote>) 
        jdbcTemplate.query(SQL, new Object[]{userID,privacy,userID},new LectureNoteRowMapper());
        
         return noteList;         
    }
     @Transactional
    @Override
    public void updateLectureNotePrivacy(int noteId,String privacy) {
        SQL = "UPDATE notlar SET not_durumu = ? WHERE not_id = ?";
        jdbcTemplate.update(SQL,new Object[]{privacy,noteId}); 
    }
    @Transactional
    @Override
    public Count getSharedNoteUsersCount(int noteId) {
      SQL ="SELECT COUNT(uye_id)  AS 'count'  FROM ortak_notlar WHERE not_id = ?";
       return jdbcTemplate.queryForObject(SQL,new Object[]{noteId},new CountRowMapper()); 
    }

    @Override
    public List<UserDetails> getSharedNoteUsersList(int noteId) {
         
        SQL = "SELECT u.uye_id, u.uye_adi, u.uye_soyadi, u.username, u.username2, u.telefon, "
          + "u.profil_resmi FROM ortak_notlar AS o, uyeler AS u WHERE o.uye_id = u.uye_id "
          + "AND o.not_id = ? ORDER BY o.tarih DESC";
         return (List<UserDetails>) jdbcTemplate.query(SQL, new Object[]{noteId},new UserDetailsRowMapper());
    }

    @Override
    public List<LectureNote> getRelatedLectureNotes(int courseId, int noteId,int limit,int userId) {
        
        String privacyPublic= "PUBLIC";
        String privacyShared= "SHARED"; 
        
        String SUBQUERY1="SELECT not_id, ders_id, not_basligi, not_aciklamasi, "
          + "not_dosyasi, not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE not_durumu = ? AND ders_id = ? AND not_id != ?";
        
        String SUBQUERY2="SELECT not_id, ders_id, not_basligi, not_aciklamasi, "
          + "not_dosyasi, not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE not_durumu = ? AND uye_id = ? AND ders_id = ? AND not_id != ?";
        
        String SUBQUERY3 = "SELECT n.not_id, n.ders_id, n.not_basligi, "
            + "n.not_aciklamasi, n.not_dosyasi, "
            + "n.not_durumu, n.uye_id, n.begen_sayisi, n.eklendigi_tarih FROM "
            + "ortak_notlar AS o, notlar AS n WHERE o.not_id = n.not_id "
            + "AND o.uye_id = ? AND ders_id = ? AND o.not_id != ? ORDER BY eklendigi_tarih DESC LIMIT ?";
        
        String OPERATOR = " UNION ";
        
        SQL = SUBQUERY1 + OPERATOR + SUBQUERY2 + OPERATOR + SUBQUERY3 ;
        List <LectureNote> relatedNotes = (List<LectureNote>) 
        jdbcTemplate.query(SQL,new Object[]{privacyPublic,courseId,noteId,
                                            privacyShared,userId,courseId,noteId,
                                            userId,courseId,noteId,limit},
                new LectureNoteRowMapper());
        return relatedNotes; 
    }

    @Override
    public List<LectureNote> search(String regex,int userID) {
        String pattern ="%"+regex+"%";
         String status= "PUBLIC";
         
       String SUBQUERY0 = "SELECT not_id, ders_id, not_basligi, not_aciklamasi, not_dosyasi, "
          + "not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE not_durumu = ? AND not_basligi LIKE ? ";
       
        String SUBQUERY1 = "SELECT not_id, ders_id, not_basligi, not_aciklamasi, not_dosyasi, "
          + "not_durumu, uye_id, begen_sayisi, eklendigi_tarih  "
          + "FROM notlar WHERE uye_id = ? AND not_basligi LIKE ?";
        
        String SUBQUERY2 = "SELECT n.not_id, n.ders_id, n.not_basligi, n.not_aciklamasi, n.not_dosyasi, "
          + "n.not_durumu, n.uye_id, n.begen_sayisi, n.eklendigi_tarih FROM "
          + "ortak_notlar AS o, notlar AS n WHERE o.not_id = n.not_id "
          + "AND o.uye_id = ? AND not_basligi LIKE ? ORDER BY eklendigi_tarih DESC";
        
        String OPERATOR = " UNION ";
        
        SQL = SUBQUERY0 + OPERATOR + SUBQUERY1 + OPERATOR + SUBQUERY2;
         List <LectureNote> noteList = (List<LectureNote>) 
        jdbcTemplate.query(SQL, new Object[]{status,pattern,userID,
            pattern,userID,pattern},new LectureNoteRowMapper());
        
         return noteList;  
    }
    
}
