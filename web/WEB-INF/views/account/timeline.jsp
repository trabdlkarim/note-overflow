<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
    <div class="col-xs-12 col-sm-12 col-md-8">
     <!-- PANEL: Current Activities -->
       <div class="panel panel-activities">
                            <!-- Panel heading -->
                            <div class="panel-heading">
                                <!-- Panel title -->
                                <div class="panel-title">Tüm Hareketler Dökümü</div>
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
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
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
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
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
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
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
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
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
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
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
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
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
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->
                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-warning fa fa-warning"></i> Please check the mail settings
                                        <span class="label label-default activity-date">7h ago</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
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
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->

                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-primary fa fa-envelope"></i> You have 73 new messages
                                        <span class="label label-default activity-date">2d ago</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->

                                    <!-- Activity -->
                                    <li class="list-group-item">

                                        <!-- Activity content -->
                                        <i class="icon icon-theme icon-theme-xs icon-primary fa fa-line-chart"></i> New reports have been generated
                                        <span class="label label-default activity-date">2d ago</span>
                                        <!-- /Activity content -->

                                        <!-- Activity dropdown menu -->
                                        <div class="dropdown">
                                            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="icon fa fa-fw fa-gears"></i> <i class="icon fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-times"></i> Hide</a></li>
                                                <li><a href="http://vtdes.ru/demo/caspero/#"><i class="icon fa fa-trash-o"></i> Remove</a></li>
                                            </ul>
                                        </div>
                                        <!-- /Activity dropdown menu -->
                                    </li>
                                    <!-- /Activity -->

                                </ul>
                                <!-- /Activities list -->

                            </div>
                            <!-- /Panel body -->
                        </div>
   <!-- /PANEL: Current Activities -->
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
   


