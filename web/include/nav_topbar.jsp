<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- NAVIGATION: Top Menu -->
<nav class="navbar navbar-fixed-top top-menu">
    <div class="container-fluid">

        <!-- Navigation header -->
        <div class="navbar-header">

            <!-- Collapse button -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- /Collapse button -->

            <!-- Brand -->
            <a href="<c:url context='${rootContext}' value='/user/feed.htm'/>" class="navbar-brand navbar-brand-cover">
                <div class="navbar-brand-big" style="padding:4%!important;">
                   <img src="<c:url context='${appAssets}' value='/img/logo.png'/>" alt="NoteOverflow"/>
                </div>
                <div class="navbar-brand-small" style="padding:16%!important;">
                    <img src="<c:url context='${appAssets}' value='/img/logo_sm.png'/>" alt="NoteOverflow"/>
                </div>
            </a>
            <!-- /Brand -->

        </div>
        <!-- /Navigation header -->

        <!-- Top Menu (Not Collapsed) -->
        <div class="navbar-top">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#" class="sidebar-collapse">
                        <i class="icon icon-inline fa fa-toggle-left muted"></i>
                    </a>
                </li>
            </ul>
        </div>
        <!-- /Top Menu (Not Collapsed) -->

        <!-- Top menu -->
        <div id="navbar" class="navbar-collapse collapse">

            <!-- Right menu -->
            <ul class="nav navbar-nav navbar-right">

                <!-- Buttons -->
                <li>

                    <!-- Search Form -->
                    <form class="navbar-search-form">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Ara ...">
                        </div>
                    </form>
                    <!-- /Search Form -->

                    <a href="#" class="navbar-search-toggle hidden-xs">
                        <i class="icon icon-inline fa fa-search"></i> <span class="hidden-sm hidden-md hidden-lg">Ara</span>
                    </a>
                </li>
                <li class="dropdown">

                    <a href="<c:url context='${rootContext}' value='/user/notifications.htm'/>" class="dropdown-toggle no-caret nav-notification" data-toggle="dropdown">
                        <i class="icon icon-inline fa fa-bell fa-fw"></i>
                        <span class="hidden-sm hidden-md hidden-lg">Bildirimler</span>
                        <span class="badge badge-danger badge-notification">7</span>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right navbar-notifications-dropdown">

                       <li class="title">Yeni Bildirimler</li>

                        <li>
                            <a href="#" class="notification">
                                <div class="avatar avatar-lg image">
                                    <img src="<c:url context='${appAssets}' value='/caspero/avatar-lori-harrison.jpg'/>" alt="Lori Harrison">
                                </div>
                                <div class="user-name">Lori Harrison</div>
                                <p class="text">
                                    It is a long established fact that a reader will be distracted by the readable content
                                </p>
                                <div class="date">today 08:27 PM</div>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="notification">
                                <span class="notification-status text-warning"><i class="icon fa fa-exclamation-triangle"></i></span>
                                <div class="avatar avatar-lg image">
                                    <img src="/noteoverflow/assets/caspero/avatar-phillip-cole.jpg" alt="Phillip Cole">
                                </div>
                                <div class="user-name">Phillip Cole</div>
                                <p class="text">
                                    It is a long established fact that a reader will be distracted by the readable content
                                </p>
                                <div class="date">today 08:27 PM</div>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="notification">
                                <div class="avatar avatar-lg image">
                                    <img src="/noteoverflow/assets/caspero/avatar-ann-james.jpg" alt="Ann James">
                                </div>
                                <div class="user-name">Ann James</div>
                                <p class="text">
                                    It is a long established fact that a reader will be distracted by the readable content
                                </p>
                                <div class="date">today 08:27 PM</div>
                            </a>
                        </li>


                        <li>
                            <a href="<c:url context='${rootContext}' value='/user/notifications.htm'/>" class="btn btn-default btn-block btn-no-border">Tümünü Göster</a>
                        </li>

                    </ul>

                </li>
                
                <li class="dropdown">

                    <a href="<c:url context='${rootContext}' value='/user/messages.htm'/>" class="dropdown-toggle no-caret nav-notification" data-toggle="dropdown">
                        <i class="icon icon-inline fa fa-envelope-open"></i>
                        <span class="hidden-sm hidden-md hidden-lg">Mesajlar</span>
                         <span class="badge badge-danger badge-notification">10</span>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right navbar-notifications-dropdown">

                        <li class="title">Yeni Mesajlar</li>

                        <li>
                            <a href="#" class="notification">
                                <div class="avatar avatar-lg image">
                                    <img src="/noteoverflow/assets/caspero/avatar-lori-harrison.jpg" alt="Lori Harrison">
                                </div>
                                <div class="user-name">Lori Harrison</div>
                                <p class="text">
                                    It is a long established fact that a reader will be distracted by the readable content
                                </p>
                                <div class="date">today 08:27 PM</div>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="notification">
                                <span class="notification-status text-warning"><i class="icon fa fa-exclamation-triangle"></i></span>
                                <div class="avatar avatar-lg image">
                                    <img src="/noteoverflow/assets/caspero/avatar-phillip-cole.jpg" alt="Phillip Cole">
                                </div>
                                <div class="user-name">Phillip Cole</div>
                                <p class="text">
                                    It is a long established fact that a reader will be distracted by the readable content
                                </p>
                                <div class="date">today 08:27 PM</div>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="notification">
                                <div class="avatar avatar-lg image">
                                    <img src="/noteoverflow/assets/caspero/avatar-ann-james.jpg" alt="Ann James">
                                </div>
                                <div class="user-name">Ann James</div>
                                <p class="text">
                                    It is a long established fact that a reader will be distracted by the readable content
                                </p>
                                <div class="date">today 08:27 PM</div>
                            </a>
                        </li>


                        <li>
                            <a href="<c:url context='${rootContext}' value='/user/messages.htm'/>" class="btn btn-default btn-block btn-no-border">Tümünü Göster</a>
                        </li>

                    </ul>

                </li>
                <!-- /Buttons -->

                <!-- Profile -->
                <li class="dropdown">

                    <!-- Profile avatar -->
                    <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <div class="profile-avatar circle">
                            <img src="<c:url context='${appAssets}' value='/img/profiles/avatar-default.png'/>" alt="${currentUser.name} ${currentUser.surname}">
                        </div>
                        <span class="user-name">${currentUser.name}</span>
                    </a>
                    <!-- /Profile avatar -->

                    <!-- Profile dropdown menu -->
                    <ul class="dropdown-menu dropdown-menu-right">

                        <li>
                            <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>"><i class="icon icon-inline fa fa-address-card-o"></i> Profilim</a>
                        </li>
                        
                        <li><a href="<c:url context='${rootContext}' value='/user/lecture_notes.htm'/>"><i class="icon icon-inline fa fa-tasks"></i> Notlarım</a></li>
                        <li>
                            <a href="<c:url context='${rootContext}' value='/user/friends.htm'/>" class="has-badge">
                                <i class="icon icon-inline fa fa-group"></i> Bağıntılarım
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<c:url context='${rootContext}' value='/user/settings.htm'/>"><i class="icon icon-inline fa fa-gears"></i> Ayarlar</a></li>
                        <li>
                            <a href="<c:url context='${rootContext}' value='/logout.htm'/>">
                                <i class="icon icon-inline fa fa-sign-out"></i> 
                                Çıkış Yap
                            </a>
                        </li>
                    </ul>
                    <!-- /Profile dropdown menu -->

                </li>
                <!-- /Profile -->

            </ul>
            <!-- /Right menu -->

        </div>
        <!-- /Top menu -->

    </div>
</nav>
<!-- /NAVIGATION: Top Menu -->