/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.service.impl;

import com.noteoverflow.dao.LectureNoteDAO;
import com.noteoverflow.models.LectureNote;
import com.noteoverflow.models.UserDetails;
import com.noteoverflow.service.LectureNoteDetailsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author trabdlkarim
 */
public class LectureNoteServiceImpl implements LectureNoteDetailsService {
    
    @Autowired
    private LectureNoteDAO lectureNoteDAO;

    @Override
    public List<LectureNote> getUserLectureNotes(int userID, String noteStatus) {
       
        return lectureNoteDAO.getUserLectureNotes(userID, noteStatus);
    }

    @Override
    public List<LectureNote> getLectureNotesSharedWithUser(int userID) {
        return lectureNoteDAO.getLectureNotesSharedWithUser(userID);
    }

    @Override
    public List<LectureNote> getAllPublicNotes() {
        return lectureNoteDAO.getAllPublicNotes();
    }

    @Override
    public List<LectureNote> generateUserFeed(int userID) {
        return lectureNoteDAO.generateUserFeed(userID);
    }

    @Override
    public void addNewLectureNote(LectureNote note) {
        this.lectureNoteDAO.addNewLectureNote(note);
    }

    @Override
    public void updateLectureNote(int oldNoteID, LectureNote newNote) {
        this.lectureNoteDAO.updateLectureNote(oldNoteID, newNote);
    }

    @Override
    public void deleteLectureNote(int noteID) {
     this.lectureNoteDAO.deleteLectureNote(noteID);
    }

    @Override
    public void shareLectureNote(List<UserDetails> friends, int noteID) {
     this.lectureNoteDAO.shareLectureNote(friends, noteID);
    }

    @Override
    public void updateSharedNotesTable() {
        this.lectureNoteDAO.updateSharedNotesTable();
    }

    @Override
    public void deleteUserFromSharedNotesTable(int userID, int noteID) {
        this.lectureNoteDAO.deleteUserFromSharedNotesTable(userID, noteID);
    }

    @Override
    public LectureNote getLectureNoteById(int noteId) {
        return lectureNoteDAO.getLectureNoteById(noteId);
    }

    @Override
    public List<LectureNote> getUserLectureNotes(int userID) {
        return lectureNoteDAO.getUserLectureNotes(userID);
    }

    @Override
    public int getUserLectureNotesCount(int userID) {
        return this.getUserLectureNotes(userID).size();
    }

    @Override
    public List<LectureNote> getAllUserSharedLectureNotes(int userID) {
        return this.lectureNoteDAO.getAllUserSharedLectureNotes(userID);
    }

}
