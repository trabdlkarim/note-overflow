/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow.dao;

import com.noteoverflow.models.LectureNote;
import com.noteoverflow.models.UserDetails;
import java.util.List;

/**
 *
 * @author trabdlkarim
 */
public interface LectureNoteDAO {
    
    public List<LectureNote> getUserLectureNotes(int userID, String noteStatus);
    public List<LectureNote> getUserLectureNotes(int userID);
    public List<LectureNote> getLectureNotesSharedWithUser(int userID);
    public List<LectureNote> getAllUserSharedLectureNotes(int userID);
    public List<LectureNote> getAllPublicNotes();
    public List<LectureNote> generateUserFeed(int userID);
    public LectureNote getLectureNoteById(int noteId);
    public void addNewLectureNote(LectureNote note);
    public void updateLectureNote(int oldNoteID, LectureNote newNote);
    public void deleteLectureNote(int noteID );
    public void shareLectureNote(List <UserDetails> friends, int noteID);
    public void updateSharedNotesTable();
    public void deleteUserFromSharedNotesTable(int userID,int noteID);

}
