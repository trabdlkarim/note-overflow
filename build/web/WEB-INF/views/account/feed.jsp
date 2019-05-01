<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
<!-- ELEMENTS: Card Boxes -->
<div class="row">
            <!-- New Messages -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="card-box bg-primary">
                    <div class="box">
                        <i class="icon fa fa-envelope-o"></i>
                        <div class="content">
                            <div class="title"><span class="strong">Yeni Mesajlar</span></div>
                            <div class="value">0</div>
                        </div>
                    </div>
                    <div class="card-bottom">
                        <a href="<c:url context='${rootContext}' value='/user/messages.htm'/>" class="btn btn-block btn-show-all">Daha Fazla</a>
                    </div>
                </div>
            </div>
            <!-- /New Messages -->

            <!-- Lecture Notes Count -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="card-box bg-danger">
                    <div class="box">
                        <i class="icon fa fa-tasks"></i>
                        <div class="content">
                            <div class="title"><span class="strong">Ders Notları</span></div>
                            <div class="value">${currentUserNotesCount}</div>
                        </div>
                    </div>
                    <div class="card-bottom">
                        <a href="<c:url context='${rootContext}' value='/user/lecture_notes.htm'/>" class="btn btn-block btn-show-all">Daha Fazla</a>
                    </div>
                </div>
            </div>
            <!-- / Lecture Notes Count -->

            <!-- Friends Count -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="card-box bg-info">
                    <div class="box">
                        <i class="icon fa fa-group"></i>
                        <div class="content">
                            <div class="title"><span class="strong">Bağıntılar</span></div>
                            <div class="value">${currentUserFriendsCount}</div>
                        </div>
                    </div>
                    <div class="card-bottom">
                        <a href="<c:url context='${rootContext}' value='/user/friends.htm'/>" class="btn btn-block btn-show-all">Daha Fazla</a>
                    </div>
                </div>
            </div>
            <!--/ Friends Count -->

            <!-- Likes -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="card-box bg-success">
                    <div class="box">
                        <i class="icon fa fa-thumbs-up"></i>
                        <div class="content">
                            <div class="title"><span class="strong">Beğenler</span></div>
                            <div class="value">0</div>
                        </div>
                    </div>
                    <div class="card-bottom">
                        <a class="btn btn-block btn-show-all">Daha Fazla</a>
                    </div>
                </div>
            </div>
            <!-- /Likes -->

        </div>
<!-- /ELEMENTS: Card Boxes -->

<!-- Elements Row -->  
<div class="row">
     <div class="col-xs-12 col-sm-12 col-md-7">
     <c:choose>
     <c:when test="${posts!=null}">
        <c:forEach var="post" items="${posts}" >
                 <!-- PANEL: Lecture Note Post -->
                         <div class="panel panel-activities">
                            <!-- Panel heading -->
                            <div class="panel-heading">
                                <!-- Panel title -->
                                <div class="panel-title">
                                  <a href="#">
                                    <i class="icon fa fa-fw fa-eye"></i>
                                  </a>
                                </div>
                                <!-- /Panel title -->

                                <!-- Panel controls -->
                                <div class="panel-controls">
                                    <div class="panel-buttons">
                                        <div class="dropdown">
                                            <a class="btn-panel-control icon fa fa-ellipsis-h dropdown-toggle" 
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></a>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                                <li><a href="#"><i class="icon fa fa-arrow-circle-o-right"></i> Show all activities</a></li>
                                                <li><a href="#">Düzelt</a></li>
                                                <li><a href="#">Gizlilik</a></li>
                                                <li><a href="#">Sil</a></li>
                                                <li class="divider"></li>
                                                <li><a href="#">Paylaş</a></li>
                                                <li><a href="#">E-Posta olarak Gönder</a></li>  
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Panel controls -->
                            </div>
                            <!-- /Panel heading -->

                            <!-- Panel body -->
                            <div class="panel-body">
                              <!-- TABLE: Pending -->
                              <div class="post no-mb">
                                                        <div class="clearfix">
                                                            <div class="avatar avatar-lg pull-left" style="margin-right:8px;" >
                                                            <a href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">
                                                               <img src="${avatarPath}/${post.ownerAvatar}" alt="${post.ownerFullname}">
                                                            </a>
                                                        </div>
                                                        
                                                        <div class="name">
                                                            <a class="strong" href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">
                                                                ${post.ownerFullname}
                                                            </a>
                                                            <span class="text-sm"> Yeni bir <a href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>" class="text-primary">ders notu</a> ekledi.</span>
                                                        </div>
                                                        <div class="small text-muted">
                                                            <span class="box fa fa-calendar"> ${post.date},</span>
                                                            <span class="box fa fa-clock-o"> ${post.time}</span>
                                                        </div>
                                                        </div>
                                                        <p class="no-mb">
                                                        <h4 class="strong title"> 
                                                            <i class="fa fa-file"></i>
                                                            <a href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>" class="strong text-primary">
                                                           ${post.title}
                                                          </a>
                                                        </h4>
                                                         ${post.description}
                                                        </p>
                                            </div>
                            </div>
                            <!-- /Panel body -->

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <span class="box text-sm">${post.courseTerm}</span>
                                <span class="box">|</span>
                                <span class="box text-sm">${post.courseName}</span>
                                <span class="box">|</span>
                                <span class="box">
                                <a href="#" class="text-dark fa fa-download"> 12</a> 
                                </span>
                                <span class="box">|</span>
                                <span class="box">
                                <a href="#" class="text-dark fa fa-comments"> 20</a>
                                </span>
                                <span class="box">|</span>
                                <span class="box">
                                <a  class="text-dark fa fa-thumbs-up"> 142</a>
                                </span>
                               <span class="box">|</span>
                               <span class="box fa fa-paperclip text-dark "> 165 KB</span>
                             </div>
                             <!-- /Panel footer -->
                        </div>
              <!--/ PANEL: Lecture Note Post -->                           
        
        </c:forEach>
     </c:when>
     <c:otherwise>
     <p><h4 class="text-uppercase">Boş Akışı</h4></p>
     </c:otherwise>
</c:choose> 
    </div>
    <div class="col-xs-12 col-sm-12 col-md-5">
    <!-- PANEL: Users -->
        <div class="panel panel-users">

                    <!-- Panel Heading -->
                    <div class="panel-heading">
                        <!-- Panel Title-->
                        <div class="panel-title">Yeni Bağıntılar</div>
                        <!-- /Panel Title-->

                        <!-- Panel Controls -->
                        <div class="panel-controls">
                            <ul class="panel-buttons">
                                <li><i class="btn-panel-control icon fa fa-group"></i></li>
                            </ul>
                        </div>
                        <!-- /Panel Controls -->

                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">
                            <!-- TABLE: Users -->
                            <table class="table table-responsive users-table">
                                
                                <tbody>
                                  <c:forEach var="user" items="${currentUserFriendsList}"  end="5" >
                                  <!-- ROW: User -->
                                  <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                        <a href="${user.username}/profile.htm"> 
                                        <img src="${avatarPath}/${user.avatar}" alt="${user.name} ${user.surname}" class="mCS_img_loaded">
                                        </a>
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="${user.username}/profile.htm" class="name">${user.name} ${user.surname}</a>
                                        <div class="post">${user.username}</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->
                                </c:forEach>
                                </tbody>
                                </table>
                            <!-- /TABLE: Users -->
                    </div>
                    <!-- /Panel Body -->
                     <!-- Panel footer -->
                        <div class="panel-footer ">
                            <a href="<c:url context='${rootContext}' value='/user/friends.htm'/>"><i class="icon fa fa-arrow-circle-o-down"></i> Tüm Bağıntılarım Göster</a>
                        </div>
                            <!-- /Panel footer -->
                </div>
    <!-- /PANEL: Users -->
    <!-- PANEL: Current Activities -->
       <div class="panel panel-activities">
                            <!-- Panel heading -->
                            <div class="panel-heading">
                                <!-- Panel title -->
                                <div class="panel-title">Hareketler Dökümü</div>
                                <!-- /Panel title -->

                                <!-- Panel controls -->
                                <div class="panel-controls">
                                    <ul class="panel-buttons">
                                        <li class="dropdown">
                                            <a href="#" class="btn-panel-control icon fa fa-fw fa-circle-thin dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></a>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-arrow-circle-o-right"></i> Show all activities</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <!-- /Panel controls -->

                            </div>
                            <!-- /Panel heading -->

                            <!-- Panel body -->
                            <div class="panel-body">

                                <!-- Activities list -->
                                <ul class="list-group list-group-dropdown cover">

                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-gray fa fa-sign-in"></i> <a href="http://vtdes.ru/demo/caspero/#">Louis Hawkins</a> is logged in
                                        <span class="label label-default activity-date">now</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->
                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-gray fa fa-sign-in"></i> <a href="http://vtdes.ru/demo/caspero/#">Louis Hawkins</a> is logged in
                                        <span class="label label-default activity-date">now</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->
                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-info fa fa-info"></i> The CS has been successfully updated
                                        <span class="label label-default activity-date">2m ago</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->

                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-gray fa fa-pencil"></i> Article X was successfully edited
                                        <span class="label label-default activity-date">12m ago</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->

                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-danger fa fa-warning"></i> On the main disk runs out of space
                                        <span class="label label-default activity-date">2h ago</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->
                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-gray fa fa-sign-in"></i> <a href="http://vtdes.ru/demo/caspero/#">Ashley Warren</a> is logged in
                                        <span class="label label-default activity-date">2h ago</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->
                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-gray fa fa-sign-in"></i> <a href="http://vtdes.ru/demo/caspero/#">Louis Hawkins</a> is logged in
                                        <span class="label label-default activity-date">now</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->
                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-success fa fa-dollar"></i> Transfer in the amount of $1.27k
                                        <span class="label label-default activity-date">2d ago</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->
                                </ul>
                                <!-- /Activities list -->

                            </div>
                            <!-- /Panel body -->

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <a href="<c:url context='${rootContext}' value='/user/timeline.htm'/>"><i class="icon fa fa-arrow-circle-o-down"></i> Tümünü Göster</a>
                            </div>
                            <!-- /Panel footer -->

                        </div>
   <!-- /PANEL: Current Activities -->
   <!-- PANEL: Site Visits Line Chart -->
        <div class="panel">
                    <!-- Panel Heading -->
                    <div class="panel-heading">
                        <!-- Panel Title -->
                        <div class="panel-title">İstatistik</div>
                        <!-- /Panel Title -->
                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">
                                <div class="canvas-holder">
                                
                            <canvas id="demo-chart-line" width="418" height="250" style="display: block; width: 418px; height: 250px;"></canvas>
                        </div>
                        <div class="row mt-0p5 text-center">
                            <div class="col-xs-4">
                                <i class="icon-theme icon-theme-sm fa fa-line-chart icon-dark"></i> Açık
                                <div class="mt-0p5 rate rate-up">18.7</div>
                            </div>
                            <div class="col-xs-4">
                                <i class="icon-theme icon-theme-sm fa fa-line-chart icon-info"></i> Ortak
                                <div class="mt-0p5 rate rate-down">1.7</div>
                            </div>
                            <div class="col-xs-4">
                                <i class="icon-theme icon-theme-sm fa fa-line-chart icon-danger"></i> Gizli
                                <div class="mt-0p5 rate rate-up">4.8</div>
                            </div>
                        </div>
                    </div>
                    <!-- /Panel Body -->
                    <!-- Panel footer -->
                            <div class="panel-footer ">
                                <a href="<c:url context='${rootContext}' value='/user/stats.htm'/>"><i class="icon fa fa-arrow-circle-o-down"></i> Tümünü Göster</a>
                            </div>
                 <!-- /Panel footer -->
                </div>
    <!-- /PANEL: Site Visits Line Chart -->
  </div>         
</div>
<!--/ Elements Row --> 
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
   


