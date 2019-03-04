
<%-- 
    Document   : dashboard
    Created on : Jan 25, 2019, 7:40:35 PM
    Author     : trabdlkarim
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="topbar" fragment="true" required="true"%>
<%@attribute name="sidebar" fragment="true" required="true" %>

<%-- any content can be specified here e.g.: --%>
<!DOCTYPE html>
<html lang="en" class="no-mobile">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    
    <link rel="shortcut icon" href="${appAssets}/img/logo_sm.png">
    <title>${systemName} - ${pageName}</title>
    
    <!-- OpenGraph meta -->
    <meta property="og:image" content="">
    <meta property="og:title" content="og title">
    <meta property="og:description" content="og description">
    <!-- /OpenGraph meta -->
    <!-- Styles -->
    <link rel="stylesheet" href="/noteoverflow/assets/caspero/theme.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- /Styles -->
</head>
<body class="sidebar-style expanded loaded">

     <jsp:invoke fragment="topbar"/>
    <!-- MAIN CONTAINER -->
    <main class="main-container">
        <jsp:invoke fragment="sidebar"/>
        <!-- CONTENT AREA -->
        <div class="content container-fluid">
            <jsp:doBody/>
         </div>
    <!-- /CONTENT AREA -->
    </main>
   <!-- /MAIN CONTAINER -->

   <!-- SCRIPTS -->
   <script src="/noteoverflow/assets/caspero/jquery-2.2.4.min.js"></script>
   <script src="/noteoverflow/assets/caspero/jquery-ui.min.js"></script>
   <script src="/noteoverflow/assets/caspero/bootstrap.min.js"></script>
   <script src="/noteoverflow/assets/caspero/moment-with-locales.js"></script>
   <script src="/noteoverflow/assets/caspero/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="/noteoverflow/assets/caspero/jquery.stellar.min.js"></script>
   <script src="/noteoverflow/assets/caspero/jquery.magnific-popup.min.js"></script>
   <script src="/noteoverflow/assets/caspero/pnotify.custom.min.js"></script>
   <script src="/noteoverflow/assets/caspero/owl.carousel.min.js"></script>
   <script src="/noteoverflow/assets/caspero/jquery.validate.min.js"></script>
   <script src="/noteoverflow/assets/caspero/jquery.animateNumber.min.js"></script>
   <script src="/noteoverflow/assets/caspero/Chart.min.js"></script>
   <script src="/noteoverflow/assets/caspero/sweetalert.min.js"></script>
   <script src="/noteoverflow/assets/caspero/circle-progress.min.js"></script>
   <script src="/noteoverflow/assets/caspero/fullcalendar.min.js"></script>
   <script src="/noteoverflow/assets/caspero/general.js"></script>
   <script src="/noteoverflow/assets/caspero/demo.js"></script>
   <!-- /SCRIPTS -->
  </body>
</html>