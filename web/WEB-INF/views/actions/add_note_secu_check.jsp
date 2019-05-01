<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>
<!DOCTYPE html>
<!--% 
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("lecNoteUploadLocation");
   String tempFilePath = context.getInitParameter("tempFileUploadLocation");
   
   // Verify the content type
   String contentType = request.getContentType();
   
 if(contentType.indexOf("multipart/form-data") >= 0){
      
     DiskFileItemFactory factory = new DiskFileItemFactory();
      
    // set maximum size that will be stored in memory
    factory.setSizeThreshold(maxMemSize);
    
    // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File(tempFilePath));
      
   // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax(maxFileSize);
      try{
        // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator it = fileItems.iterator();
         
         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         while ( it.hasNext () ) {
         FileItem fileItem = (FileItem) it.next();
          if ( !fileItem.isFormField()) {
               // Get the uploaded file parameters
               String fieldName = fileItem.getFieldName();
               String fileName = fileItem.getName();
               boolean isInMemory = fileItem.isInMemory();
               long sizeInBytes = fileItem.getSize();
               
               // Write the file
               /*
               if( fileName.lastIndexOf("\\") >= 0 ) {
                   out.println("err1");
                  file = new File(filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                   out.println("err2");
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }*/
               out.println("err3");
               file = new File(filePath+fileName) ;
               fileItem.write( file ) ;
               out.println("Uploaded Filename: " + filePath + 
               fileName + "<br>");
          }
         }
         out.println("</body>");
         out.println("</html>");
      }
      catch(Exception ex){
      out.println("Error:");
      out.println(ex.getMessage());
      }
 }
 else {
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No File Uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
     }
  
%-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add New Lecture Note Action Page</h1>
        <p>Note Title: ${parser.lecNoteTitle}</p>
        <p>Course Name: ${parser.lecNoteCourse}</p>
        <p>Note Description: ${parser.lecNoteDesc}</p>
        <p>File Name: ${parser.lecNoteFile.getOriginalFilename()}</p>
        <p>File Size: ${parser.lecNoteFile.getSize()} (bytes)</p>
        <p>File Status: ${parser.lecNoteStatus}</p>
    </body>
</html>
