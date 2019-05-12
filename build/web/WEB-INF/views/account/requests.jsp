<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
<div class="row">
    <!-- Friend Requests -->
    <div class="col-xs-12">
        <!-- PANEL: Friend Requests -->
        <div class="panel">
            <!-- Panel heading -->
            <div class="panel-heading">
                <!-- Panel title -->
                <div class="panel-title">Arkadaşlık İstekleri</div>
                <!-- /Panel title -->
                
                <!-- Panel controls -->
                <div class="panel-controls">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#fast-actions-received" aria-controls="fast-actions-allnotes" role="tab" data-toggle="tab">Gelenler</a>
                        </li>
                        <li role="presentation">
                            <a href="#fast-actions-sent" aria-controls="fast-actions-public" role="tab" data-toggle="tab">Gönderilenler</a>
                        </li>
                    </ul>
                </div>
                <!-- Panel controls -->
                </div>
            <!-- /Panel heading -->
            <div class="panel-body">
                <div class="tab-content">
                    <!-- TAB PANE: Received Friend Requests  -->
                    <div id="fast-actions-received" role="tabpanel" class="tab-pane fade in active">
                        <!-- TABLE: Received Friend Requests -->
                        <div class="table-responsive">
                            <table class="table no-mb">
                                <tbody>
                                  <c:choose>
                                  <c:when test="${friendRequests!=null && !friendRequests.isEmpty()}">
                                  <c:forEach var="user" items="${friendRequests}">
                                  <!-- ROW: User -->
                                  <tr class="user">
                                    <td class="user-avatar pull-right">
                                        <!-- User Avatar -->
                                        <div class="avatar image text-center">
                                        <a href="${user.username}/profile.htm"> 
                                        <img src="${avatarPath}/${user.avatar}" alt="${user.name} ${user.surname}" class="mCS_img_loaded">
                                        </a>
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="${user.username}/profile.htm" class="name">${user.name} ${user.surname}</a>
                                        <!-- /User Info -->
                                    </td>
                                    <td  class="pull-right">
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li>
                                               <form name="friendRequestForm" class="form-inline form-row date" method="post">
                                                   <div class="form-group btn-group-sm ">
                                                   <input type="hidden" name="receivedFriendRequestId" value="${user.userID}"/>
                                                   <input class="form-control btn btn-sm btn-danger" type="submit" name="cancelFriendRequest" value="İptal"/>
                                                   <input class="form-control btn btn-sm btn-primary" type="submit" name="confirmFriendRequest" value="Onayla"/>
                                                  </div>
                                               </form>
                                            </li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->
                                </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <p class="text-muted text-sm text-center">
                                        Yeni bir arkadaşlık isteği yoktur.
                                    </p>
                                </c:otherwise>
                             </c:choose>
                                </tbody>
                                <tfoot>
                                    <tr>
                                       <td></td>
                                      <td colspan = "3" class="pull-left">Toplam: ${friendRequestCount}</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /TABLE: Received Friend Requests -->
                    </div>
                    <!-- /TAB PANE: Received Friend Requests -->
              
                    <!-- TAB PANE: Sent Friend Requests  -->
                    <div id="fast-actions-sent" role="tabpanel" class="tab-pane fade">
                        <!-- TABLE: Sent Friend Requests -->
                        <div class="table-responsive">
                            <table class="table users-table">
                                <tbody>
                                  <c:choose>
                                  <c:when test="${sentFriendRequests!=null && !sentFriendRequests.isEmpty()}">
                                  <c:forEach var="user" items="${sentFriendRequests}">
                                  <!-- ROW: User -->
                                  <tr class="user">
                                    <td class="user-avatar pull-right">
                                        <!-- User Avatar -->
                                        <div class="avatar image text-center">
                                        <a href="${user.username}/profile.htm"> 
                                        <img src="${avatarPath}/${user.avatar}" alt="${user.name} ${user.surname}" class="mCS_img_loaded">
                                        </a>
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="${user.username}/profile.htm" class="name">${user.name} ${user.surname}</a>
                                        <!-- /User Info -->
                                    </td>
                                    <td  class="pull-right">
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li>
                                                <form name="friendRquestForm${user.userID}" class="form-inline" method="post">
                                                    <input type="hidden" name="cancelSentFriendRequest" value="${user.userID}"/>
                                                    <button type="submit" class="btn-danger"> İsteği İptal Et</button>
                                                </form>
                                            </li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->
                                </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <p class="text-muted text-sm text-center">
                                        Yeni bir arkadaşlık isteği yoktur.
                                    </p>
                                </c:otherwise>
                            </c:choose>
                                </tbody>
                                
                                <tfoot>
                                    <tr>
                                       <td></td>
                                      <td colspan = "3" class="pull-left">Toplam: ${sentFriendRequestCount}</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /TABLE: Sent Friend Requests Users -->
                    </div>
                    <!-- /TAB PANE: Sent Friend Requests -->
                </div>
             </div>
        </div>
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
   



                                               