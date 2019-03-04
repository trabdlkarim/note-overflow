<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.springframework.security.authentication.AnonymousAuthenticationToken"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>

<jsp:scriptlet>
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if ( (auth != null) && !(auth instanceof AnonymousAuthenticationToken)){
        if(auth.isAuthenticated()){
              response.sendRedirect("user/feed.htm");
        }
    }
</jsp:scriptlet> 

<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>

<layout:csoon>
              <form:form id="signup-form" name="signup-form" modelAttribute="registerFormParser"  action="user/feed.htm" method="post">
                  <div class="form-group">   
                    <div class="input-group input-group-newsletter">
                      <form:input type="text" path="name" id="signup-name" class="form-control" placeholder="Ad" aria-label="Adınız girin" aria-describedby="basic-addon"/>
                      <form:input type="text" path="surname" id="signup-surname" class="form-control" placeholder="Soyad" aria-label="Soyadınız girin" aria-describedby="basic-addon"/>
                    </div>
                  </div>
                  <div class="form-group ">                  
                  <form:input type="email" path="email" id="signup-email" class="form-control" placeholder="E-posta" aria-label="Epostanız girin" aria-describedby="basic-addon"/>
                  </div>
                  <div class="form-group">                  
                  <form:input type="text" path="studentNo" id="signup-stdNo" class="form-control" placeholder="Öğrenci Numara" aria-label="Öğrenci numaranız girin" aria-describedby="basic-addon"/>
                  </div>
                  <div class="form-group">                  
                  <form:input type="password" path="password" id="signup-password" class="form-control" placeholder="Şifre" aria-label="Şifreniz Girin" aria-describedby="basic-addon"/>
                  </div>
                  <div class="form-group">
                  <form:input type="password" path="passwordConfirmation" id="signup-retype-password" class="form-control" placeholder="Şifre Onayla" aria-label="Şifreniz tekrar girin" aria-describedby="basic-addon"/>
                  </div>
                  <div class="input-group-append form-group">
                    <form:button  class="btn btn-lg btn-success btn-block" id="registerSubmit" type="submit"> HESAP OLUŞTURUN </form:button>
                  </div>
              </form:form>
                
              <div class="input-group-append form-group">
               <button  class="btn btn-success btn-lg  btn-block" type="button" 
                onclick="location.reload();location.href='login.htm'"> 
                GİRİŞ YAPIN 
               </button>
              </div>
</layout:csoon>