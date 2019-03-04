<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.springframework.security.authentication.AnonymousAuthenticationToken"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>

<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>  

<jsp:scriptlet>
Authentication auth = SecurityContextHolder.getContext().getAuthentication();
if ( (auth != null) && !(auth instanceof AnonymousAuthenticationToken)){
        if(auth.isAuthenticated())
        {
            response.sendRedirect("user/feed.htm");
        }
    }    
</jsp:scriptlet> 
<layout:csoon>
                <p class="mb-5">
                  <strong>Note Overflow</strong>, öğrencilere web tabanlı öğrenme 
                    ve sınav hazırlık etkinliklerini 
                    etkin bir şekilde desteklemeleri için özel olarak tasarlanmış, 
                    öğrenciler arasında ders notlarının aranması ve paylaşılmasını 
                    kolaylaştıran bir sistemdir.
                </p>
                <div class="input-group-append form-group">
                  <button  class="btn btn-secondary btn-lg  btn-block" type="button" 
                    onclick="location.reload();location.href='login.htm'"> 
                    GİRİŞ YAPIN 
                  </button>
                </div>
              <div class="input-group-append form-group">
               <button class="btn btn-secondary btn-lg btn-block" type="button" 
                onclick="location.reload();location.href='signup.htm'"> 
                HESAP OLUŞTURUN 
               </button>
              </div>
</layout:csoon>
    