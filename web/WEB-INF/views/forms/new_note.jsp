<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel">
        <!-- Panel heading -->
        <div class="panel-heading">
            <!-- Panel title -->
              <div class="panel-title box mb-4">
               <i class="icon fa fa-plus-square-o"> Yeni bir ders notu ekle</i>
              </div>
            <!-- /Panel title -->
         </div>
        <!-- /Panel heading -->
        <!-- Panel Body -->    
        <div class="panel-body">
            <form>
              <div class="form-group">
                   <label for="lectureNoteTitle">Başlık:</label>
                   <input type="text" required="true" class="form-control" id="lectureNoteTitle" aria-describedby="emailHelp" placeholder="Örn: Algoritma Dersi Notu 1">
                   <small class="form-text text-danger text-muted">*Notunun başlığı yazmalısınız.</small>
              </div>
              <div class="form-group">
                <label for="exampleSelect1">Ders Adı:</label>
                <select class="form-control">
                  <option>Notun Dersi Seçiniz </option>
                  <option>Ders 1</option>
                  <option>Ders 2</option>
                   <option>Ders 3</option>
                   <option>Ders 4</option>
                   <option>Ders 5</option>
                </select>
                  <small class="form-text text-danger text-muted">*Not hangi derse ait olduğunu belirleyeceksiniz.</small>
              </div>
              <div class="form-group">
                <label for="lectureNoteTextarea">Açıklama:</label>
                <textarea class="form-control" id="lectureNoteTextarea" rows="5" style="resize: none"></textarea>
                 <small class="form-text text-danger text-muted">*Not hangi derse ait olduğunu belirleyeceksiniz.</small>
             </div>
             <div class="form-group">
               <label for="lectureNoteInputFile">Not Dosyası:</label>
               <input type="file" class="form-control-file" id="lectureNoteInputFile" aria-describedby="fileHelp">
               <small id="fileHelp" class="form-text text-danger text-muted">*Notun bir dosyasını eklemelisinz.</small>
            </div>
            <fieldset class="form-group">
              <legend class="label"><i class="fa fa-lock"> Notunuz gizli mi ?</i></legend>
          <div class="form-check">
            <label class="form-check-label">
            <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="yes" >
             Evet
           </label>
         </div>
          <div class="form-check">
            <label class="form-check-label">
            <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="no" checked>
            Hayır
          </label>
         </div>
         </fieldset>
        <button type="submit" class="btn  btn-primary pull-right">Ekle</button>
        </form>
        </div>
        <!--/ Panel Body -->
       </div>
    </div>
 </c:set>
 
 <layout:caspero>
     <jsp:attribute name="topbar">
       <%@include file="/include/nav_topbar.jsp" %>    
     </jsp:attribute>
     
     <jsp:attribute name="sidebar">
        <%@include file="/include/nav_sidebar.jsp" %>  
     </jsp:attribute>
     
     <jsp:body>
         ${bodyContent}
     </jsp:body>           
 </layout:caspero>
   


