<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
    <div class="row">
        <div class="col">

                <!-- PANEL: Chat -->
                <div class="panel panel-chat">

                    <!-- Panel Heading -->
                    <div class="panel-heading">

                        <!-- Panel Title -->
                        <div class="panel-title">Chat</div>
                        <!-- /Panel Title -->

                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">

                        <!-- Chat Box -->
                        <div class="chat-box">

                            <!-- Chat Wrapper -->
                            <div class="message-wrapper custom-scroll mCustomScrollbar _mCS_4" style="height: 338px;"><div id="mCSB_4" class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;"><div id="mCSB_4_container" class="mCSB_container" style="position: relative; top: -217px; left: 0px;" dir="ltr">

                                <!-- Message Date Delimiter -->
                                <div class="date-delimiter mt">yesterday â¢ 12:30&nbsp;am</div>
                                <!-- /Message Date Delimiter -->

                                <!-- Message Block -->
                                <div class="message">
                                    <div class="image avatar">
                                        <img src="/noteoverflow/assets/caspero/avatar-benjamin-jacobs.jpg" alt="Benjamin Jacobs" class="mCS_img_loaded">
                                    </div>
                                    <div class="message-row">
                                        <div class="message-box">
                                            It is a long established fact that a reader will be distracted.
                                        </div>
                                    </div>
                                </div>
                                <!-- /Message Block -->

                                <!-- /Message Block -->
                                <div class="message message-inbox">
                                    <div class="image avatar">
                                        <img src="/noteoverflow/assets/caspero/avatar-louis-hawkins.jpg" alt="Louis Hawkins" class="mCS_img_loaded">
                                    </div>
                                    <div class="message-row">
                                        <div class="message-box">
                                            Contrary to popular belief, Lorem Ipsum.
                                        </div>
                                    </div>
                                    <div class="message-row">
                                        <div class="message-box">
                                            There are many variations.
                                        </div>
                                    </div>
                                </div>
                                <!-- /Message Block -->

                                <!-- Message Block -->
                                <div class="message">
                                    <div class="image avatar">
                                        <img src="/noteoverflow/assets/caspero/avatar-benjamin-jacobs.jpg" alt="Benjamin Jacobs" class="mCS_img_loaded">
                                    </div>
                                    <div class="message-row">
                                        <div class="message-box">
                                            The standard chunk of Lorem Ipsum used since the 1500s.
                                        </div>
                                    </div>
                                </div>
                                <!-- /Message Block -->

                                <!-- Message Block -->
                                <div class="message message-inbox">
                                    <div class="image avatar">
                                        <img src="/noteoverflow/assets/caspero/avatar-louis-hawkins.jpg" alt="Louis Hawkins" class="mCS_img_loaded">
                                    </div>
                                    <div class="message-row">
                                        <div class="message-box">
                                            It uses a dictionary of over 200 Latin words, combined with a handful.
                                        </div>
                                    </div>
                                </div>
                                <!-- /Message Block -->

                                <!-- Message Block -->
                                <div class="message">
                                    <div class="image avatar">
                                        <img src="/noteoverflow/assets/caspero/avatar-benjamin-jacobs.jpg" alt="Benjamin Jacobs" class="mCS_img_loaded">
                                    </div>
                                    <div class="message-row">
                                        <div class="message-box">
                                            The generated Lorem Ipsum is therefore always free.
                                        </div>
                                    </div>
                                </div>
                                <!-- /Message Block -->

                                <!-- Message Date Delimiter -->
                                <div class="date-delimiter">today â¢ 11:27&nbsp;pm</div>
                                <!-- /Message Date Delimiter -->

                                <!-- Message Block -->
                                <div class="message message-inbox">
                                    <div class="image avatar">
                                        <img src="/noteoverflow/assets/caspero/avatar-louis-hawkins.jpg" alt="Louis Hawkins" class="mCS_img_loaded">
                                    </div>
                                    <div class="message-row">
                                        <div class="message-box">
                                            It uses a dictionary of over 200 Latin words, combined with a handful.
                                        </div>
                                    </div>
                                </div>
                                <!-- /Message Block -->

                                <!-- Message Block -->
                                <div class="message">
                                    <div class="image avatar">
                                        <img src="/noteoverflow/assets/caspero/avatar-benjamin-jacobs.jpg" alt="Benjamin Jacobs" class="mCS_img_loaded">
                                    </div>
                                    <div class="message-row">
                                        <div class="message-box">
                                            The generated Lorem Ipsum is therefore always free.
                                        </div>
                                    </div>
                                </div>
                                <!-- /Message Block -->
                            </div><div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-dark mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 206px; max-height: 328px; top: 132px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                            <!-- /Chat Wrapper -->

                            <!-- Chat Bottom -->
                            <div class="chat-bottom">
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default"><i class="icon fa fa-camera"></i></button>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Type your message here...">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default"><i class="icon fa fa-paper-plane"></i></button>
                                    </div>
                                </div>
                            </div>
                            <!-- /Chat Bottom -->

                        </div>
                        <!-- /Chat Box -->

                    </div>
                    <!-- /Panel Body -->
                </div>
                <!-- /PANEL: Chat -->

            </div>
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
   


