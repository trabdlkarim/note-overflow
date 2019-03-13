<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="bodyContent">
   
    <div class="col-md-8 col-md-offset-2" id="form_container">
        <div class="panel">
            <!-- Panel heading -->
        <div class="panel-heading">
            <!-- Panel title -->
              <div class="panel-title box mb-4">
               <i class="icon fa fa-phone"> Bize Ulaşınız</i>
              </div>
            <!-- /Panel title -->
         </div>
        <!-- /Panel heading -->
        <div class="panel-body">
            <p class="text-center">Lütfen sistem yöneticiye ulaşmanız için mesajınızı aşağadaki formla gönderin. 
         En yakın zamanda size geri döneceğiz!</p>
        <form:form name="contactUsForm" modelAttribute="contactUsFormParser" action="${rootContext}/do/contactUsSecurityCheck.htm" role="form" method="post" id="contactUsform">

            <div class="row">
                <div class="col-sm-12 form-group">
                    <label for="message">
                        Açıklama:</label>
                    <form:textarea class="form-control" type="textarea" path="message" id="message" maxlength="6000" rows="7" cssStyle="resize:none"></form:textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 form-group">
                    <label for="fullName">
                        Ad ve Soyad:</label>
                    <form:input type="text" class="form-control required" id="fullName" path="fullName" />
                </div>
                <div class="col-sm-6 form-group">
                    <label for="email">
                        E-Posta:</label>
                    <form:input path="email" type="email" class="form-control required" id="email"  />
                </div>
            </div>


            <div class="row">
                <div class="col-sm-12 form-group">
                    <button type="submit" class="btn btn-lg btn-primary pull-right" >Gönder</button>
                </div>
            </div>

        </form:form>
        <div id="success_message" class="text-success" style="width:100%; height:100%; display:none; ">
            <h3>Başarıyla mesajınız gönderildi!</h3>
        </div>
        <div id="error_message" class="text-danger"
                style="width:100%; height:100%; display:none; ">
                    <h3>Hata</h3>
                    Üzgünüz mesajınız göderirken bir hata oldu.
        </div>
       </div>
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
   


