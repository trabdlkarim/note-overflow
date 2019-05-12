<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
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

<c:set var="bodyContent">
                 <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Lütfen Giriş Yapınız</h3>
                    </div>
                    <div class="panel-body">                        
                        <form:form name="loginForm"  modelAttribute="loginFormParser" action="${rootContext}/do/loginSecurityCheck.htm" method="POST">
                                <div class="form-group">
                                    <div class="input-group-prepend">
		                      <span class="input-group-text"> 
                                          <i class="fa fa-user"></i> 
                                      </span>
		                     
                                    <form:input   class="form-control required"  id="username" placeholder="E-Posta" path="username" type="email"/>
                                  </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group-prepend">
		                      <span class="input-group-text"> 
                                          <i class="fa fa-lock"></i> 
                                      </span>
                                    <form:password class="form-control"   id="password" placeholder="Şifre" path="password"/>
                                    </div>   
                                </div>
                                    <%
                                     String errorMessage = (String) request.getParameter("error");
                                     String logoutMessage = (String) request.getParameter("logout");
                                     String timeoutMessage = (String) request.getParameter("timeout");
                                     
                                     if (errorMessage != null && errorMessage.trim().equals("true")) {
                                        out.println("<p><small class='text-danger errorblock'>Yanlış kullanıcı adı  ya da şifre. Lütfen tekrar deneyin!</small></p>");}
                                     
                                     if (logoutMessage != null && logoutMessage.trim().equals("true")) {
                                        out.println("<p><small class='text-success'>Başarıyla çıkış yaptınız!</small></p>"); }
                                     
                                     if (timeoutMessage != null && timeoutMessage.trim().equals("true")) {
                                        out.println("<p><small class='text-danger'>Oturumunuz sona erdi. Lütfen tekrar oturum açın!</small></p>");}
                                    %>
                                    <label>
                                        <a href="reset-password.htm" class="btn btn-secondary">
                                            <strong>Şifre unuttunuz mu?</strong>
                                        </a>
                                    </label>
                                <div class="checkbox">
                                    <form:checkbox name="rememberMeCheckbox" path="rememberMeCheckbox" value="Remember Me"/>
                                    <label>Beni Hatırla</label>
                                </div>
                                <div class="input-group-append form-group">
                                    <form:button  type="submit" id="loginSubmit" class="btn btn-lg btn-success btn-block rounded">
                                        GİRİŞ YAPIN
                                    </form:button>
                                </div>                           
                        </form:form>
                        
                    </div>
                </div>
                
              <div class="input-group-append form-group">
               <button class="btn btn-success btn-lg btn-block" type="button" 
                onclick="location.reload();location.href='signup.htm'"> 
                HESAP OLUŞTURUN 
               </button>
              </div>
</c:set>
<layout:csoon>
    <jsp:body>
        ${bodyContent}
    </jsp:body>
</layout:csoon> 