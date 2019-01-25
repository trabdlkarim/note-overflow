<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>${systemName} - ${pageName}</title>
   
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/assets/csoon.vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/csoon.vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/coming-soon.min.css" rel="stylesheet">

  </head>

  <body onload="document.loginForm.username.focus();">
   
    <div class="overlay"></div>
    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
      <source src="${pageContext.request.contextPath}/assets/mp4/bg.mp4" type="video/mp4">
    </video>

    <div class="masthead">
      <div class="masthead-bg"></div>
      <div class="container h-100">
        <div class="row h-100">
          <div class="col-12 my-auto">
            <div class="masthead-content text-white py-5 py-md-0">
              <div class="text-center">
                  <a href="welcome.htm">
                   <img class="rounded-circle" 
                        src="${pageContext.request.contextPath}/assets/img/comu.jpg" 
                        height="100" width="100" alt="Logo ÇOMÜ"/>
                   </a>
              </div>
              <h1 class="mb-3">Note Overflow</h1>
                 <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Lütfen Giriş Yapınız</h3>
                    </div>
                    <div class="panel-body"> 
                        <form:form id="loginFormParser" name="loginForm" modelAttribute="loginFormParser" role="form" action="do/loginSecurityCheck.htm" method="POST">
                                <div class="form-group">
                                    <div class="input-group-prepend">
		                      <span class="input-group-text"> 
                                          <i class="fa fa-user"></i> 
                                      </span>
		                     
                                    <form:input  class="form-control" id="username" placeholder="E-Posta" path="username" type="email"/>
                                  </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group-prepend">
		                      <span class="input-group-text"> 
                                          <i class="fa fa-lock"></i> 
                                      </span>
                                    <form:password class="form-control" id="password" placeholder="Şifre" path="password"/>
                                    </div>   
                                </div>
                                    <form:label path="forgotPasswordLabel">
                                        <a href="reset-password.htm" class="btn btn-secondary">
                                            <strong>Şifre unuttunuz mu?</strong>
                                        </a>
                                    </form:label>
                                <div class="checkbox">
                                    <form:checkbox name="rememberMeCheckbox" path="rememberMeCheckbox" value="Remember Me"/>
                                    <form:label path="rememberMeLabel">Beni Hatırla</form:label>
                                </div>
                                <div class="input-group-append form-group">
                                    <form:button  type="submit" id="loginSubmit" class="btn btn-lg btn-success btn-block">
                                        GİRİŞ YAPIN
                                    </form:button>
                                </div>                           
                        </form:form>
                        
                       <%
                         String errorString = (String) request.getAttribute("error");
                          if (errorString != null && errorString.trim().equals("true")) {
                          out.println("<span class=\"errorblock\">Incorrect login name or password. Please try again");
                         }
                        %>
                    </div>
                </div>
                
              <div class="input-group-append form-group">
               <button class="btn btn-success btn-lg btn-block" type="button" 
                onclick="location.reload();location.href='signup.htm'"> 
                HESAP OLUŞTURUN 
               </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="social-icons">
      <ul class="list-unstyled text-center mb-0">
        <li class="list-unstyled-item">
          <a href="#">
            <i class="fab fa-twitter"></i>
          </a>
        </li>
        <li class="list-unstyled-item">
          <a href="#">
            <i class="fab fa-facebook-f"></i>
          </a>
        </li>
        <li class="list-unstyled-item">
          <a href="#">
            <i class="fab fa-instagram"></i>
          </a>
        </li>
      </ul>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/csoon.vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/csoon.vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/assets/js/coming-soon.min.js"></script>

  </body>

</html>
