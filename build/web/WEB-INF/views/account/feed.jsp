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
                            <div class="value">138</div>
                        </div>
                    </div>
                    <div class="card-bottom">
                        <a href="<c:url context='${rootContext}' value='/user/messages.htm'/>" class="btn btn-block btn-show-all">Daha Fazla</a>
                    </div>
                </div>
            </div>
            <!-- /New Messages -->

            <!-- New Comments -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="card-box bg-danger">
                    <div class="box">
                        <i class="icon fa fa-tasks"></i>
                        <div class="content">
                            <div class="title"><span class="strong">Ders Notları</span></div>
                            <div class="value">792</div>
                        </div>
                    </div>
                    <div class="card-bottom">
                        <a href="<c:url context='${rootContext}' value='/user/lecture_notes.htm'/>" class="btn btn-block btn-show-all">Daha Fazla</a>
                    </div>
                </div>
            </div>
            <!-- /New Comments -->

            <!-- Today Earnings -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="card-box bg-info">
                    <div class="box">
                        <i class="icon fa fa-group"></i>
                        <div class="content">
                            <div class="title"><span class="strong">Bağıntılar</span></div>
                            <div class="value">2,900</div>
                        </div>
                    </div>
                    <div class="card-bottom">
                        <a href="<c:url context='${rootContext}' value='/user/friends.htm'/>" class="btn btn-block btn-show-all">Daha Fazla</a>
                    </div>
                </div>
            </div>
            <!-- /Today Earnings -->

            <!-- New Clients -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="card-box bg-success">
                    <div class="box">
                        <i class="icon fa fa-thumbs-up"></i>
                        <div class="content">
                            <div class="title"><span class="strong">Beğenler</span></div>
                            <div class="value">18</div>
                        </div>
                    </div>
                    <div class="card-bottom">
                        <a class="btn btn-block btn-show-all">Daha Fazla</a>
                    </div>
                </div>
            </div>
            <!-- /New Clients -->

        </div>
        <!-- /ELEMENTS: Card Boxes -->
       
        <!-- Elements Row -->
         <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6">
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

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <a href="<c:url context='${rootContext}' value='/user/timeline.htm'/>"><i class="icon fa fa-arrow-circle-o-down"></i> Tümünü Göster</a>
                            </div>
                            <!-- /Panel footer -->

                        </div>
                        <!-- /PANEL: Current Activities -->
             </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
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
                                <!-- ROW: User -->
                                <tbody><tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-benjamin-jacobs.jpg" alt="Benjamin Jacobs" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Benjamin Jacobs</a>
                                        <div class="post">Director</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-deborah-young.jpg" alt="Deborah Young" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Deborah Young</a>
                                        <div class="post">Animation Designer</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-louis-hawkins.jpg" alt="Louis Hawkins" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Louis Hawkins</a>
                                        <div class="post">Marketing Director</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-ashley-warren.jpg" alt="Ashley Warren" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Ashley Warren</a>
                                        <div class="post">Account Manager</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-christopher-tucker.jpg" alt="Christopher Tucker" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Christopher Tucker</a>
                                        <div class="post">Director</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-lori-harrison.jpg" alt="Lori Harrison" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Lori Harrison</a>
                                        <div class="post">Animation Designer</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-phillip-cole.jpg" alt="Phillip Cole" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Phillip Cole</a>
                                        <div class="post">Marketing Director</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-ann-james.jpg" alt="Ann James" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Ann James</a>
                                        <div class="post">Account Manager</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->
                            </tbody></table>
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
            </div>
         </div>
         <!--/ Elements Row -->
        
         <hr class="divider"/>
        
        <!-- Elements Row -->  
        <div class="row">
            
            <div class="col-xs-12 col-sm-12 col-md-6">
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
                                            <a class="btn-panel-control icon fa fa-angle-down dropdown-toggle" 
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></a>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                                <li><a href="#"><i class="icon fa fa-arrow-circle-o-right"></i> Show all activities</a></li>
                                                 <li><a href="#">Düzelt</a>
                                                                     </li>
                                                                     <li><a href="#">Gizlilik</a>
                                                                     </li>
                                                                     <li><a href="#">Sil</a>
                                                                     </li>
                                                                      <li class="divider"></li>
                                                                      <li><a href="#">Paylaş</a>
                                                                      </li>
                                                                      <li><a href="#">E-Posta olarak Gönder</a>
                                                                      </li>  
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
                                                            <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                               <img src="/noteoverflow/assets/caspero/avatar-benjamin-jacobs.jpg" alt="Benjamin Jacobs">
                                                            </a>
                                                        </div>
                                                        
                                                        <div class="name">
                                                            <a class="strong" href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                                Benjamin Jacobs
                                                            </a>
                                                            <span class="text-sm"> Yeni bir <a href="#" class="text-primary">ders notu</a> ekledi.</span>
                                                        </div>
                                                        <div class="small text-muted">
                                                            <span class="box fa fa-calendar"> 27 Şubat 2019,</span>
                                                            <span class="box fa fa-clock-o"> 15:58</span>
                                                        </div>
                                                        </div>
                                                        <p class="no-mb">
                                                        <h4 class="strong title"> 
                                                          <a href="#" class="text-dark fa fa-file-o">
                                                           Title of the Lecture Note - Algorithms
                                                          </a>
                                                        </h4>
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                        </p>
                                                    
                                                    
                                                    
                                            </div>
                            </div>
                            <!-- /Panel body -->

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <span class="box text-sm">8.Yarıyıl</span>
                                <span class="box">|</span>
                                <span class="box text-sm">Yapay Zeka ve Uzman Sistemleri</span>
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
                     </div>
                                                                
            <div class="col-xs-12 col-sm-12 col-md-6">
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
                                            <a class="btn-panel-control icon fa fa-angle-down dropdown-toggle" 
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></a>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                                <li><a href="#"><i class="icon fa fa-arrow-circle-o-right"></i> Show all activities</a></li>
                                                 <li><a href="#">Düzelt</a>
                                                                     </li>
                                                                     <li><a href="#">Gizlilik</a>
                                                                     </li>
                                                                     <li><a href="#">Sil</a>
                                                                     </li>
                                                                      <li class="divider"></li>
                                                                      <li><a href="#">Paylaş</a>
                                                                      </li>
                                                                      <li><a href="#">E-Posta olarak Gönder</a>
                                                                      </li>  
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
                                                            <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                               <img src="/noteoverflow/assets/caspero/avatar-ashley-warren.jpg" alt="Ashley Warren">
                                                            </a>
                                                        </div>
                                                        
                                                        <div class="name">
                                                            <a class="strong" href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                                Ashley Warren
                                                            </a>
                                                            <span class="text-sm"> Yeni bir <a href="#" class="text-primary">ders notu</a> ekledi.</span>
                                                        </div>
                                                        <div class="small text-muted">
                                                            <span class="box fa fa-calendar"> 27 Şubat 2019,</span>
                                                            <span class="box fa fa-clock-o"> 15:58</span>
                                                        </div>
                                                        </div>
                                                        <p class="no-mb">
                                                        <h4 class="strong title"> 
                                                          <a href="#" class="text-dark fa fa-file-o">
                                                           Title of the Lecture Note - Algorithms
                                                          </a>
                                                        </h4>
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                        </p>
                                                    
                                                    
                                                    
                                            </div>
                            </div>
                            <!-- /Panel body -->

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <span class="box text-sm">8.Yarıyıl</span>
                                <span class="box">|</span>
                                <span class="box text-sm">Yapay Zeka ve Uzman Sistemleri</span>
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
                     </div>
             
           <div class="col-xs-12 col-sm-12 col-md-6">
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
                                            <a class="btn-panel-control icon fa fa-angle-down dropdown-toggle" 
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></a>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                              <li><a href="#"><i class="icon fa fa-arrow-circle-o-right"></i> Show all activities</a></li>
                                              <li><a href="#">Gizlilik</a></li>
                                              <li><a href="#">Sil</a></li>
                                              <li class="divider"></li>
                                              <li><a href="#">Paylaş</a> </li>
                                              <li><a href="#">E-Posta olarak Gönder</a></li> 
                                              <li><a href="#">Düzelt</a></li>
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
                                                            <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                            <img src="/noteoverflow/assets/caspero/avatar-deborah-young.jpg" alt="Deborah Young">
                                                            </a>
                                                        </div>
                                                        
                                                        <div class="name">
                                                            <a class="strong" href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                                Deborah Young
                                                            </a>
                                                            <span class="text-sm"> Yeni bir <a href="#" class="text-primary">ders notu</a> ekledi.</span>
                                                        </div>
                                                        <div class="small text-muted">
                                                            <span class="box fa fa-calendar"> 27 Şubat 2019,</span>
                                                            <span class="box fa fa-clock-o"> 15:58</span>
                                                        </div>
                                                        </div>
                                                        <p class="no-mb">
                                                        <h4 class="strong title"> 
                                                          <a href="#" class="text-dark fa fa-file-o">
                                                           Title of the Lecture Note - Algorithms
                                                          </a>
                                                        </h4>
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                        </p>
                                                    
                                                    
                                                    
                                            </div>
                            </div>
                            <!-- /Panel body -->

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <span class="box text-sm">8.Yarıyıl</span>
                                <span class="box">|</span>
                                <span class="box text-sm">Yapay Zeka ve Uzman Sistemleri</span>
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
            </div>
         
           <div class="col-xs-12 col-sm-12 col-md-6">
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
                                            <a class="btn-panel-control icon fa fa-angle-down dropdown-toggle" 
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></a>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                              <li><a href="#"><i class="icon fa fa-arrow-circle-o-right"></i> Show all activities</a></li>
                                              <li><a href="#">Gizlilik</a></li>
                                              <li><a href="#">Sil</a></li>
                                              <li class="divider"></li>
                                              <li><a href="#">Paylaş</a> </li>
                                              <li><a href="#">E-Posta olarak Gönder</a></li> 
                                              <li><a href="#">Düzelt</a></li>
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
                                                            <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                            <img src="/noteoverflow/assets/caspero/avatar-louis-hawkins.jpg" alt="Louis Hawkins">
                                                            </a>
                                                        </div>
                                                        
                                                        <div class="name">
                                                            <a class="strong" href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                                Louis Hawkins
                                                            </a>
                                                            <span class="text-sm"> Yeni bir <a href="#" class="text-primary">ders notu</a> ekledi.</span>
                                                        </div>
                                                        <div class="small text-muted">
                                                            <span class="box fa fa-calendar"> 27 Şubat 2019,</span>
                                                            <span class="box fa fa-clock-o"> 15:58</span>
                                                        </div>
                                                        </div>
                                                        <p class="no-mb">
                                                        <h4 class="strong title"> 
                                                          <a href="#" class="text-dark fa fa-file-o">
                                                           Title of the Lecture Note - Algorithms
                                                          </a>
                                                        </h4>
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                        </p>
                                                    
                                                    
                                                    
                                            </div>
                            </div>
                            <!-- /Panel body -->

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <span class="box text-sm">8.Yarıyıl</span>
                                <span class="box">|</span>
                                <span class="box text-sm">Yapay Zeka ve Uzman Sistemleri</span>
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
            </div>                                                                
        
           <div class="col-xs-12 col-sm-12 col-md-6">
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
                                            <a class="btn-panel-control icon fa fa-angle-down dropdown-toggle" 
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></a>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                              <li><a href="#"><i class="icon fa fa-arrow-circle-o-right"></i> Show all activities</a></li>
                                              <li><a href="#">Gizlilik</a></li>
                                              <li><a href="#">Sil</a></li>
                                              <li class="divider"></li>
                                              <li><a href="#">Paylaş</a> </li>
                                              <li><a href="#">E-Posta olarak Gönder</a></li> 
                                              <li><a href="#">Düzelt</a></li>
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
                                                            <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                            <img src="/noteoverflow/assets/caspero/avatar-christopher-tucker.jpg" alt="Christopher Tucker">
                                                            </a>
                                                        </div>
                                                        
                                                        <div class="name">
                                                            <a class="strong" href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                                Christopher Tucker
                                                            </a>
                                                            <span class="text-sm"> Yeni bir <a href="#" class="text-primary">ders notu</a> ekledi.</span>
                                                        </div>
                                                        <div class="small text-muted">
                                                            <span class="box fa fa-calendar"> 27 Şubat 2019,</span>
                                                            <span class="box fa fa-clock-o"> 15:58</span>
                                                        </div>
                                                        </div>
                                                        <p class="no-mb">
                                                        <h4 class="strong title"> 
                                                          <a href="#" class="text-dark fa fa-file-o">
                                                           Title of the Lecture Note - Algorithms
                                                          </a>
                                                        </h4>
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                        </p>
                                                    
                                                    
                                                    
                                            </div>
                            </div>
                            <!-- /Panel body -->

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <span class="box text-sm">8.Yarıyıl</span>
                                <span class="box">|</span>
                                <span class="box text-sm">Yapay Zeka ve Uzman Sistemleri</span>
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
   


