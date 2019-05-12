/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noteoverflow;

import com.noteoverflow.models.UserDetails;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import javax.servlet.ServletContext;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author trabdlkarim
 */
public class FileUploadUtils {
    
    public static String getFileExtension(final String path) {
       if (path != null && path.lastIndexOf('.') != -1) {
          return path.substring(path.lastIndexOf('.'));
         }
        return null;
    }
    public static String getFileExtension(final File file) {
        String path = file.getName();
       if (path != null && path.lastIndexOf('.') != -1) {
          return path.substring(path.lastIndexOf('.'));
         }
        return null;
    }

    public static String getFileName(String fileName) {
         if (fileName != null && fileName.lastIndexOf('.') != -1) {
          return fileName.substring(0,fileName.lastIndexOf('.'));
         }
        return fileName;
       
    }
    public static String getFileName(final File file) {
         String fileName = file.getName();
         if (fileName != null && fileName.lastIndexOf('.') != -1) {
          return fileName.substring(0,fileName.lastIndexOf('.'));
         }
        return fileName;
       
    }
    
    public static File createUniqueEmptyFile(String prefix, String suffix, 
            File directory)throws IOException{
        return File.createTempFile(prefix, suffix, directory);
    }
    
    public static void copyBytes(InputStream source, OutputStream dest) 
            throws IOException{
        int read = 0;    
        byte[] buffer = new byte[1024];
       
        while((read=source.read(buffer))!=-1){
            dest.write(buffer, 0, read);
        }
        
    }
    
    public static void copyBytes(InputStream source, OutputStream dest,byte[] buffer)
            throws IOException {
        int read = 0;    
       
        while((read=source.read(buffer))!=-1){
            dest.write(buffer, 0, read);
        }
    }
    
    public static String saveLectureNote(MultipartFile uploadedFile,ServletContext context,UserDetails user) {
            String suffix = FileUploadUtils.getFileExtension(uploadedFile.getOriginalFilename());
            String prefix = FileUploadUtils.generateRandomAphanumeric(16);
            String lecNotesRootPath = context.getInitParameter("lecNoteUploadLocation");
            File directory = FileUploadUtils.creatDirectory(lecNotesRootPath,user.getUsername());
            try{
               File tempFile = FileUploadUtils.createUniqueEmptyFile(prefix, suffix, directory);
               OutputStream out = new FileOutputStream(tempFile);
               InputStream in = uploadedFile.getInputStream();
               FileUploadUtils.copyBytes(in, out);
               return tempFile.getName();
            
              }
            catch(IOException io){
             io.printStackTrace(System.out);
             return null;            
            }
    
    }
    
    public static boolean deleteLecture(String filename,ServletContext context,UserDetails user){
        String lecNotesRootPath = context.getInitParameter("lecNoteUploadLocation");
        lecNotesRootPath = lecNotesRootPath + File.separator + user.getUsername(); 
        File fileToBeDeleted = new File(lecNotesRootPath,filename);
        return fileToBeDeleted.delete();
    }
    public static File creatDirectory(File file){
        file.mkdirs();
        return file;
    
    }
    public static File creatDirectory(String parent,String child){
        File directory = new File(parent,child);
        if (directory.mkdirs()){
         System.out.println("Directory created successfully.");
         return directory;
        }
        return directory;
    }

    public static File createDirectory(String path){
        
        File directory = new File(path);
        directory.mkdirs();
        return directory;
    
    }
    
     public static File createDirectory(File parent,String child){
        File directory = new File(parent,child);
        directory.mkdirs();
        return directory;
    
    }
    
    public static boolean deleteFile(File file){
     return file.delete();
    }
    
    public static boolean deleteFile(File parent,String child){
     return new File(parent,child).delete();
    }
    
    public static boolean deleteFile(String parent,String child){
     return new File(parent,child).delete();
    }
    
    public static boolean deleteFile(String path){
     return new File(path).delete();
    }
    
    public static String generateRandomAphanumeric(int count){
        String datetime = new Date().toString();
        datetime = datetime.replace(" ", "");
        datetime = datetime.replace(":", "");
        String randChars = RandomStringUtils.randomAlphanumeric(count);
        return datetime + randChars;
    }
}
