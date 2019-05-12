<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>


<c:set var="bodyContent">
        <!-- PROFILE: Cover -->
        <div class="row">
            <div class="col-xs-12">
                <div class="profile-cover">

                    <div class="profile-cover-image parallax bg-primary" 
                     style="background-image: url(&quot;images/cover-louis-hawkins.jpg&quot;); background-position: 50% 0%;" 
                     data-stellar-background-ratio="0.6">
                    </div>
                    <div class="profile-avatar avatar-lg image">
                         <img src="${avatarPath}/${user.avatar}" align="${user.name} ${fuser.surname}">
                      </div>
                    <div class="profile-user-information">
                             <div class="profile-user-name">${user.name} ${user.surname}</div>
                             <div class="profile-user-post">${user.username}</div>
                    </div>
                    <!-- PROFILE: Personal Menu -->
                    <div class="container-fluid">
                        <nav class="navbar personal-menu">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="active"><a href="#">Profile</a></li>
                                <li><a href="#">Messenger</a></li>
                                <li><a href="#">Tasks</a></li>
                                <li><a href="#">Publications</a></li>
                                <li><a href="#">Gallery</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- /PROFILE: Personal Menu -->

                </div>
            </div>
        </div>
        <!-- /PROFILE: Cover -->

        <!-- PROFILE: Information -->
        <div class="row">

            <!-- PROFILE: Left Side -->
            <div class="col-xs-12 col-sm-3">

                <!-- PANEL: User Contacts -->
                <div class="panel">

                    <!-- Panel Body -->
                    <div class="panel-body">

                        <div class="h4 mb">Hakkında</div>

                        <ul class="list-unstyled no-mb">
                            <li><i class="icon-theme icon-theme-xs icon-primary mb-0p5 fa fa-phone"></i> ${user.phone}</li>
                            <li><i class="icon-theme icon-theme-xs icon-primary mb-0p5 fa fa-envelope"></i> <a href="#"> ${user.email}</a></li>
                            <li><i class="icon-theme icon-theme-xs icon-primary fa fa-map-marker"></i> 255291</li>
                        </ul>
                    </div>
                    <!-- /Panel Body -->

                    <!-- Panel Footer -->
                    <div class="panel-footer">
                        <ul class="list-inline no-mb">
                            <li><a href="#"><i class="icon-theme icon-brand-facebook fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-theme icon-brand-twitter fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-theme icon-brand-googleplus fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                    <!-- /Panel Footer -->

                </div>
                <!-- /PANEL: User Contacts -->

            </div>
            <!-- /PROFILE: Left Side -->

            <!-- PROFILE: Right Side -->
            <div class="col-xs-12 col-sm-9">

                <!-- PANEL: User Information -->
                <div class="panel">

                    <!-- Panel Body -->
                    <table class="table table-striped table-user-information">

                        <tbody><tr>
                            <td class="td-icon"><i class="icon fa fa-envelope"></i></td>
                            <td class="td-title">Email</td>
                            <td><a href="http://vtdes.ru/demo/caspero/personal-profile.html#">louis-hawkins@example.com</a></td>
                        </tr>

                        <tr>
                            <td class="td-icon"><i class="icon fa fa-phone"></i></td>
                            <td class="td-title">Phone</td>
                            <td>(773)-588-1456</td>
                        </tr>

                        <tr>
                            <td class="td-icon"><i class="icon fa fa-map-marker"></i></td>
                            <td class="td-title">Address</td>
                            <td>255291 Green rd</td>
                        </tr>

                        <tr>
                            <td class="td-icon"><i class="icon fa fa-male"></i></td>
                            <td class="td-title">Gender</td>
                            <td>Male</td>
                        </tr>

                        <tr>
                            <td class="td-icon"><i class="icon fa fa-drivers-license"></i></td>
                            <td class="td-title">Post</td>
                            <td>Director</td>
                        </tr>

                        <tr>
                            <td class="td-icon"><i class="icon fa fa-link"></i></td>
                            <td class="td-title">Speciality</td>
                            <td>Development, Marketing, Management</td>
                        </tr>

                        <tr>
                            <td class="td-icon"><i class="icon fa fa-tag"></i></td>
                            <td class="td-title">Tags</td>
                            <td>
                                <label class="label">development</label>
                                <label class="label">marketing</label>
                                <label class="label">seo</label>
                                <label class="label">management</label>
                            </td>
                        </tr>

                    </tbody></table>
                    <!-- /Panel Body -->

                </div>
                <!-- /PANEL: User Information -->
            </div>
            <!-- /PROFILE: Right Side -->

        </div>
        <!-- /PROFILE: Information -->
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
   