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
             
                    <div class="panel-heading">
                        <h3 class="panel-title mb-3">Giriş yapamıyor musunuz ?</h3>
                    </div>
                  
              <form:form id="forgotPasswordForm" name="forgotPasswordForm" cssClass="input-group input-group-newsletter" modelAttribute="forgotPasswordFormParser" role="form" action="login.htm" method="POST">
                
                  <form:input class="form-control" id="email" placeholder="E-Posta" path="email" type="email"/>
                  <div class="input-group-append">
                      <form:button type="submit"  class="btn  btn-block btn-success">Gönder</form:button>
                  </div>
                 </form:form>
                  <br/>
                 <div class="input-group-newsletter form-group">
                  <button  class="btn btn-success btn-lg  btn-block" type="button" 
                    onclick="location.reload();location.href='login.htm'"> 
                    GİRİŞ YAPIN 
                  </button>
                </div>
 </layout:csoon>    