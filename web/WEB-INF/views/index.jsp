<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Note Overflow - Home</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/assets/csoon.vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/csoon.vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/coming-soon.min.css" rel="stylesheet">

  </head>

  <body>

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
              <h1 class="mb-3">Note Overflow</h1>
              <p class="mb-5">
                A system for lecture notes searching and sharing between students,
                which is dedicated to students for effectively supporting their 
                web-based learning and exam preparation activities. 
                <strong><a href="#">Sign up</a> or <a href="#">login</a></strong>
                for searching and sharing notes using the form below!
              </p>
              <div class="input-group input-group-newsletter">
                <input type="email" class="form-control" placeholder="Email" aria-label="Enter email" aria-describedby="basic-addon">
                <input type="password" class="form-control" placeholder="Password" aria-label="Enter password" aria-describedby="basic-addon">
                <div class="input-group-append">
                  <button class="btn btn-secondary" type="button">login</button>
                </div>
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
