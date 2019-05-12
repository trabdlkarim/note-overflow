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

<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>${systemName} - ${pageName}</title>
  <link rel="shortcut icon" href="${appAssets}/img/logo_sm.png">
  <!-- Custom fonts for this template-->
  <link href="${appAssets}/signup/all.css" rel="stylesheet" type="text/css">
  <link href="${appAssets}/signup/css.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="${appAssets}/signup/sb-admin-2.css" rel="stylesheet">

</head>
<body  style="background:#cd9557">
    <header class="header">
 <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"> </a>
    </div>
  </div>
 </nav>
 </header>
    <div class="container">
    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row" style="background-color:#002e66;">
          <div class="col-lg-5 bg-register-image">
          </div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                  <div class="text-center mb-3">
                  <a href="welcome.htm">
                   <img class="rounded-circle" src="${appAssets}/img/comu.jpg" height="100" width="100" alt="ÇOMÜ"/> 
                  </a> 
                   </div>
                  <div class="text-center mb-3 panel-title">
                    <a href="welcome.htm">
                     <img src="<c:url context='${appAssets}' value='/img/logo_sm.png'/>" alt="logo_sm.png"/>
                     <img src="<c:url context='${appAssets}' value='/img/logo.png'/>" alt="logo.png"/>
                    </a>
                  </div>
                  
                  <h1 class="mb-4 text-capitalize text-white" style="font-family:Merriweather;font-weight:700">
                      Bir Hesap Oluşturunuz 
                  </h1>
              </div>
               <form:form class="user" modelAttribute="registerFormParser" method="post">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <form:input type="text" class="form-control form-control-user" path="name" placeholder="*Adınız" required="true"/>
                    <small class="form-text strong text-muted">
                     <form:errors path="name" class="text-danger" />
                     </small> 
                  </div>
                  <div class="col-sm-6">
                    <form:input type="text" class="form-control form-control-user" path="surname" placeholder="*Soyadınız" required="true"/>
                    <small class="form-text strong text-muted">
                     <form:errors path="surname" class="text-danger" />
                     </small> 
                  </div>
                </div>
                  <div class="form-group row">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                      <form:input type="text" class="form-control form-control-user" path="studentNo" placeholder="*Öğrenci No" required="true"/>
                      <small class="form-text strong text-muted">
                      <form:errors path="studentNo" class="text-danger" />
                     </small> 
                    </div>
                    <div class="col-sm-6">
                     <form:input type="tel" class="form-control form-control-user" path="phone" placeholder="*Telefon" required="true"/>
                     <small class="form-text strong text-muted">
                     <form:errors path="phone" class="text-danger" />
                     </small> 
                    </div>
                  </div>
                <div class="form-group">
                  <form:input type="email" class="form-control form-control-user" path="email" placeholder="*E-Postanız" required="true"/>
                  <small class="form-text strong text-muted">
                     <form:errors path="email" class="text-danger" />
                     </small> 
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <form:input type="password" class="form-control form-control-user" path="password" placeholder="*Şifre" required="true"/>
                    <small class="form-text strong text-muted">
                     <form:errors path="password" class="text-danger" />
                    </small> 
                  </div>
                  <div class="col-sm-6">
                    <form:input type="password" class="form-control form-control-user" path="repeatPassword" placeholder="*Tekrar Şifre" required="true"/>
                    <small class="form-text strong text-muted">
                     <form:errors path="repeatPassword" class="text-danger" />
                     </small> 
                  </div>
                </div>
                <button  type="submit" class="btn btn-success btn-user btn-block strong">
                     Hesap Oluşturunuz
                </button>
              </form:form>
              <hr>
              <div class="text-center">
                <a class="strong text-white" href="<c:url context='${rootContext}' value='/reset_password.htm'/>">Şifre Unuttunuz mu ?</a>
              </div>
              <div class="text-center ">
                  <a class="strong text-white" href="<c:url context='${rootContext}' value='/login.htm'/>">Bir Hesabınız var mı? Giriş Yapınız!</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="${appAssets}/signup/jquery_002.js"></script>
  <script src="${appAssets}/signup/bootstrap.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${appAssets}/signup/jquery.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${appAssets}/signup/sb-admin-2.js"></script>
   </body>
</html>