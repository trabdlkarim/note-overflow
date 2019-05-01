<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- SIDEBAR LEFT -->
    <div class="sidebar">
        <!-- Scrollable -->
        <div class="height100p custom-scroll mCustomScrollbar _mCS_2">
          <div id="mCSB_2" class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
            <div id="mCSB_2_container" class="mCSB_container" style="position: relative; top: -42px; left: 0px;" dir="ltr">
            <hr class="divider"/>
            <!-- SIDEBAR PROFILE -->
            <div class="sidebar-profile">
                <!-- Profile Avatar -->
                <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>" class="dropdown-toggle" data-toggle="dropdown">
                    <div class="avatar avatar-lg">
                        <img src="<c:url context='${avatarPath}' value='/${currentUser.avatar}'/>" alt="${currentUser.name} ${currentUser.surname}" class="mCS_img_loaded">
                    </div>
                </a>
                <!-- /Profile Avatar -->

                <!-- User Information -->
                <div class="user-info">
                    <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                        <div class="name text-capitalize text-white">${currentUser.name}</div>
                    <div class="name text-uppercase text-white strong">${currentUser.surname}</div>
                    </a>
                </div>
                <!-- /User Information -->

                <!-- Profile dropdown menu -->
                <ul class="dropdown-menu dropdown-menu-dark sidebar-dropdown-profile">

                    <li>
                        <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                            <i class="icon icon-inline fa fa-address-card-o"></i> 
                            Profilim
                        </a>
                    </li>
                    <li>
                        <a href="<c:url context='${rootContext}' value='/user/messages.htm'/>" class="has-badge">
                            <i class="icon icon-inline fa fa-envelope-o"></i>
                            Mesajlarım
                            <span class="badge badge-notification badge-danger">0</span>
                        </a>
                    </li>
                    <li>
                        <a href="<c:url context='${rootContext}' value='/user/lecture_notes.htm'/>">
                            <i class="icon icon-inline fa fa-tasks"></i> 
                            Notlarım
                        </a>
                    </li>
                    <li>
                        <a href="<c:url context='${rootContext}' value='/user/friends.htm'/>" class="has-badge">
                            <i class="icon icon-inline fa fa-group"></i> 
                            Bağıntılarım
                            <span class="badge badge-notification badge-primary">5</span>
                        </a>
                    </li>

                    <li class="divider"></li>

                    <li><a href="<c:url context='${rootContext}' value='/user/settings.htm'/>"><i class="icon icon-inline fa fa-gears"></i>Ayarlar</a></li>
                    <li><a href="<c:url context='${rootContext}' value='/logout.htm'/>"><i class="icon icon-inline fa fa-sign-out"></i> Çıkış Yap</a></li>
                </ul>
                <!-- /Profile dropdown menu -->

            </div>
            <!-- /SIDEBAR PROFILE -->

            <!-- SIDEBAR NAVIGATION -->
            <ul  id="nav-sidebar-ul" class="nav-sidebar">

                <li  class="nav-sidebar-li">
                    <a href="<c:url context='${rootContext}' value='/user/feed.htm'/>">
                        <i class="icon icon-inline  fa fa-home"></i> 
                        <span class="title"> Ana Sayfa</span>
                    </a>
                </li>
                <li class="nav-sidebar-item">
                    <a href="<c:url context='${rootContext}' value='/user/add_new_note.htm'/>">
                        <i class="icon icon-inline fa fa-plus-circle"></i> 
                        <span class="title">Yeni Not Ekle</span>
                    </a>
                </li>
                <li>
                    <a class="nav-sidebar-item" href="<c:url context='${rootContext}' value='/user/lecture_notes.htm'/>" >
                        <i class="icon icon-inline fa fa-tasks"></i> 
                        <span class="title">Ders Notlarım</span>
                    </a>
                </li>

                 <li>
                    <a href="<c:url context='${rootContext}' value='/user/messages.htm'/>">
                        <i class="icon icon-inline fa fa-envelope"></i> 
                        <span class="title">Yeni Sohbet</span>
                    </a>
                </li>
                <li>
                    <a href="<c:url context='${rootContext}' value='/user/friends.htm'/>">
                        <i class="icon icon-inline fa fa-group"></i> 
                        <span class="title">Bağıntılarım</span>
                    </a>
                </li>
                <c:if  test="${isUserAnAdministrator}">
                <li>
                    <a href="<c:url context='${rootContext}' value='/admin/sysadmin.htm'/>">
                        <i class="icon icon-inline fa fa-wrench"></i> 
                        <span class="title">Sistem Yönetimi</span>
                    </a>
                </li>
                </c:if>
               
                <li>
                    <a href="<c:url context='${rootContext}' value='/pages/links.htm'/>">
                        <i class="icon icon-inline fa fa-mail-forward"></i> 
                        <span class="title">Linkler</span>
                    </a>
                </li>
                <li>
                    <a href="<c:url context='${rootContext}' value='/user/stats.htm'/>">
                        <i class="icon icon-inline fa fa-line-chart"></i> 
                        <span class="title">İstatistik</span>
                    </a>
                </li>
               
                <li class="sub">
                    <a href="#" class="sub-toggle">
                        <i class="icon icon-inline fa fa-stack-exchange"></i> <span class="title">Statik Sayfalar</span>
                    </a>
                    <ul class="sub-menu collapse" data-menu-title="Linkler">
                        <li>
                            <a href="<c:url context='${rootContext}' value='/pages/about.htm'/>">
                                <i class="icon icon-inline fa fa-circle-thin"></i> 
                                <span class="title">Hakkında</span>
                            </a>
                        </li>
                        <li>
                            <a href="<c:url context='${rootContext}' value='/pages/contact.htm'/>">
                                <i class="icon icon-inline fa fa-circle-thin"></i> 
                                <span class="title">İletişim</span>
                            </a>
                        </li>
                        <li>
                            <a href="<c:url context='${rootContext}' value='/pages/privacy.htm'/>">
                                <i class="icon icon-inline fa fa-circle-thin"></i> 
                                <span class="title">Gizlilik</span>
                            </a>
                        </li>
                        <li>
                            <a href="<c:url context='${rootContext}' value='/pages/terms.htm'/>">
                                <i class="icon icon-inline fa fa-circle-thin"></i> 
                                <span class="title">Şartlar</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- /SIDEBAR NAVIGATION -->
         <script>
         var selector = "#nav-sidebar-ul li.nav-sidebar-li";

$(selector).on('click', function(){
    $(selector).removeClass('active');
    $(this).addClass('active');
});
        </script>
        </div>
        <div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-dark mCSB_scrollTools_vertical" style="display: block;">
            <div class="mCSB_draggerContainer">
                <div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 281px; top: 26px; display: block; max-height: 450px;">
                    <div class="mCSB_dragger_bar" style="line-height: 30px;">
                    </div>
                </div>
                <div class="mCSB_draggerRail">
                </div>
            </div>
        </div>
     </div>
       </div>
        <!-- /Scrollable -->

        <!-- Bottom Bar -->
        <div class="sidebar-fixed-bottom">

            <a href="#" class="btn btn-dark btn-block btn-show-group">
                <i class="icon icon-inline fa fa-angle-right"></i>
            </a>

            <div class="btn-group-wrapper">
                <div class="btn-group btn-group-justified" role="group">
                    <a href="<c:url context='${rootContext}' value='/user/settings.htm'/>" class="btn btn-dark" role="button">
                        <i class="icon icon-inline fa fa-gears"></i>
                    </a>
                    <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>" class="btn btn-dark" role="button">
                        <i class="icon icon-inline fa fa-address-card"></i>
                    </a>
                    <a href="<c:url context='${rootContext}' value='/logout.htm'/>" class="btn btn-dark" role="button">
                        <i class="icon icon-inline fa fa-sign-out"></i>
                    </a>
                </div>
            </div>

        </div>
        <!-- /Bottom Bar -->

    </div>
    <!-- /SIDEBAR LEFT -->
