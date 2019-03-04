<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>


<c:set var="bodyContent">
        <!-- PROFILE: Cover -->
        <div class="row">
            <div class="col-xs-12">
                <div class="profile-cover">

                    <div class="profile-cover-image parallax" style="background-image: url(&quot;images/cover-louis-hawkins.jpg&quot;); background-position: 50% 0%;" data-stellar-background-ratio="0.6">
                    </div>

                    <div class="profile-avatar image">
                        <img src="/noteoverflow/assets/caspero/avatar-louis-hawkins.jpg" align="Louis Hawkins">
                    </div>

                    <div class="profile-user-information">
                        <div class="profile-user-name">Louis Hawkins</div>
                        <div class="profile-user-post">Director</div>
                    </div>

                    <!-- PROFILE: Personal Menu -->
                    <div class="container-fluid">
                        <nav class="navbar personal-menu">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="active"><a href="http://vtdes.ru/demo/caspero/personal-profile.html#">Profile</a></li>
                                <li><a href="http://vtdes.ru/demo/caspero/personal-profile.html#">Messenger</a></li>
                                <li><a href="http://vtdes.ru/demo/caspero/personal-profile.html#">Tasks</a></li>
                                <li><a href="http://vtdes.ru/demo/caspero/personal-profile.html#">Publications</a></li>
                                <li><a href="http://vtdes.ru/demo/caspero/personal-profile.html#">Gallery</a></li>
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

                <!-- PANEL: User Activity -->
                <div class="panel">

                    <!-- Panel Body -->
                    <div class="panel-body">

                        <div class="user-activity">

                            <div id="demo-user-activity" class="progress-circle progress-circle-primary" data-progress-circle-value=".85" data-progress-circle-target="#demo-user-activity-value"><canvas width="100" height="100"></canvas>
                                <div id="demo-user-activity-value" class="content percents">85%</div>
                            </div>

                            <div class="user-activity-information">
                                <div class="title">User Activity</div>
                            </div>

                        </div>

                    </div>
                    <!-- /Panel Body -->

                    <!-- Chart -->
                    <div class="canvas-holder no-mb"><iframe class="chartjs-hidden-iframe" tabindex="-1" style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;" src="./CasperoBoard - Profile_files/saved_resource.html"></iframe>
                        <canvas id="demo-chart-user-activity" width="256" height="76" style="display: block; width: 256px; height: 76px;"></canvas>
                    </div>
                    <!-- /Chart -->

                </div>
                <!-- /PANEL: User Activity -->

                <!-- PANEL: User Contacts -->
                <div class="panel">

                    <!-- Panel Body -->
                    <div class="panel-body">

                        <div class="h4 mb">Contact Information</div>

                        <ul class="list-unstyled no-mb">
                            <li><i class="icon-theme icon-theme-xs icon-primary mb-0p5 fa fa-phone"></i> (773)-588-1456</li>
                            <li><i class="icon-theme icon-theme-xs icon-primary mb-0p5 fa fa-envelope"></i> <a href="http://vtdes.ru/demo/caspero/personal-profile.html#">louis-hawkins@example.com</a></li>
                            <li><i class="icon-theme icon-theme-xs icon-primary fa fa-map-marker"></i> 255291 Green rd</li>
                        </ul>
                    </div>
                    <!-- /Panel Body -->

                    <!-- Panel Footer -->
                    <div class="panel-footer">
                        <ul class="list-inline no-mb">
                            <li><a href="http://vtdes.ru/demo/caspero/personal-profile.html#"><i class="icon-theme icon-brand-facebook fa fa-facebook"></i></a></li>
                            <li><a href="http://vtdes.ru/demo/caspero/personal-profile.html#"><i class="icon-theme icon-brand-twitter fa fa-twitter"></i></a></li>
                            <li><a href="http://vtdes.ru/demo/caspero/personal-profile.html#"><i class="icon-theme icon-brand-googleplus fa fa-google-plus"></i></a></li>
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

                <div class="row">

                    <!-- Timeline -->
                    <div class="col-xs-12 col-sm-6">

                        <!-- PANEL: User Activities Timeline -->
                        <div class="panel">

                            <!-- Panel Heading -->
                            <div class="panel-heading">

                                <!-- Panel Title-->
                                <div class="panel-title">User Activities Timeline</div>
                                <!-- /Panel Title-->

                            </div>
                            <!-- /Panel Heading -->

                            <!-- Panel Body -->
                            <div class="panel-body">

                                <ul class="timeline no-mb">
                                    <li class="timeline-item">
                                        <span class="datetime">2 minutes ago</span>
                                        Logged out from Dashboard
                                    </li>
                                    <li class="timeline-item timeline-item-success">
                                        <span class="datetime">24 minutes ago</span>
                                        Article Y was successfully edited
                                    </li>
                                    <li class="timeline-item">
                                        <span class="datetime">2 minutes ago</span>
                                        Make transfer in the amount of $1.27k
                                    </li>
                                    <li class="timeline-item timeline-item-danger">
                                        <span class="datetime">2 minutes ago</span>
                                        Generated new report
                                    </li>
                                    <li class="timeline-item">
                                        <span class="datetime">2 minutes ago</span>
                                        Article X was successfully edited
                                    </li>
                                    <li class="timeline-item timeline-item-primary">
                                        <span class="datetime">2 minutes ago</span>
                                        Created Article X
                                    </li>
                                    <li class="timeline-item timeline-item-info">
                                        <span class="datetime">2 minutes ago</span>
                                        Logged in
                                    </li>
                                </ul>

                            </div>
                            <!-- /Panel Body -->

                        </div>
                        <!-- /PANEL: User Activities Timeline -->


                    </div>
                    <!-- /Timeline -->

                </div>

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
   