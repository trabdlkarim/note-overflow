<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="bodyContent">
    <div class="col-md-8 col-md-offset-2">
        <script>
          function resetForm() {document.getElementById("addLecNoteForm").reset();
}      </script>
        <div class="panel">
        <!-- Panel heading -->
        <div class="panel-heading">
            <!-- Panel title -->
              <div class="panel-title box mb-4">
               <p>
                   <i class="icon fa fa-plus-square-o"></i>
                   Yeni bir ders notu ekle
               </p>
              </div>
            <!-- /Panel title -->
         </div>
        <!-- /Panel heading -->
        <!-- Panel Body -->    
        <div class="panel-body">
            <c:choose>
            <c:when test="${success=='true'}">
            <div class="box mb-4 text-center">
               <p class="text-white bg-success">
                  <i class="fa fa-check-circle">${successMessage}</i>
               </p>
            </div>
            </c:when>
            <c:when test="${success=='false'}">
              <div class="box mb-4 text-center">
               <p class="text-white bg-danger strong">
                  <i class="fa fa-asterisk">${errorMessage}</i>
               </p>
            </div>
            </c:when>
            </c:choose>
            
            <form:form id="addLecNoteForm" name="addLecNoteForm" method="POST" modelAttribute="addLecNoteFormParser" enctype="multipart/form-data">
              <div class="form-group">
                   <label for="lectureNoteTitle">*Başlık:</label>
                   <form:input type="text" class="form-control" 
                               path="lecNoteTitle" id="lectureNoteTitle" 
                               placeholder="Örn: Algoritma Dersi Notu 1" value=""/>
                   <small class="form-text strong  text-muted">
                       <form:errors path="lecNoteTitle" class="text-danger" />     
                   </small>
              </div>
              <div class="form-group">
                <label>*Dersın Adı:</label>
              <form:select class="form-control" path="lecNoteCourse" id="lecNoteCourse">
                  <form:option value="None" >Notun Dersi Seçiniz </form:option>
                  <c:forEach var="course" items="${courses}">
                     <form:option value="${course.name}">${course.name}</form:option>
                 </c:forEach>
                </form:select>
               <small class="form-text strong text-muted">
              <form:errors path="lecNoteCourse" class="text-danger" />
              </small>
              </div>
              <div class="form-group">
                <label for="lectureNoteTextarea">*Açıklama:</label>
                <form:textarea class="form-control" path="lecNoteDesc" rows="5" style="resize: none"></form:textarea>
                <small class="form-text strong text-muted">
                    <form:errors path="lecNoteDesc" class="text-danger" />
                </small>
             </div>
             <div class="form-group">
               <label for="lectureNoteInputFile">*Notun Dosyası:</label>
               <form:input id="lectureNoteInputFile" type="file" 
                           class="form-control-file" path="lecNoteFile"/>
               <small class="form-text  strong text-muted">
                   <form:errors path="lecNoteFile"  class="text-danger" />    
               </small>
            </div>
            <fieldset class="form-group">
              <legend class="label"><i class="fa fa-lock"> Notunuz gizliliği</i></legend>
          <div class="form-check">
            <label class="form-check-label">
                <form:radiobutton  class="form-check-input" path="lecNoteStatus" checked="true" id="optRadioPrivate" value="PRIVATE" />
             Gizli 
           </label>
         </div>
          <div class="form-check">
            <label class="form-check-label">
            <form:radiobutton class="form-check-input" path="lecNoteStatus" id="optRadioPublic" value="PUBLIC"/>
            Açık
          </label>
         </div>
         <form:errors path="lecNoteStatus"  class="text-danger strong" />
         </fieldset>
        <button type="submit" class="btn btn-ln  btn-primary pull-right">Ekle</button>
        <button type="reset" class="btn btn-ln  btn-primary pull-left" onclick="resetForm()">Sıfırla</button>
        </form:form>
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
   


