<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
    <div class="row">
      <!-- PANEL: Users -->
                <div class="panel panel-users">

                    <!-- Panel Heading -->
                    <div class="panel-heading">

                        <!-- Panel Title-->
                        <div class="panel-title">Bağıntılarım (${currentUserFriendsCount})</div>
                        <!-- /Panel Title-->

                        <!-- Panel Controls -->
                        <div class="panel-controls">
                            <ul class="panel-buttons">
                                <li><a href="http://vtdes.ru/demo/caspero/#" class="btn-panel-control icon fa fa-plus"></a></li>
                            </ul>
                        </div>
                        <!-- /Panel Controls -->

                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">
                        <!-- Scrollable -->
                        
                            <!-- TABLE: Users -->
                            <table class="table table-responsive users-table">
                                <!-- ROW: User -->
                                <tbody>
                                   <c:forEach var="user" items="${currentUserFriendsList}">
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
                         
                        <!-- /Scrollable -->

                    </div>
                    <!-- /Panel Body -->

                </div>
              <!-- /PANEL: Users -->            
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
   


