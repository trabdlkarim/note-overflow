<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
<div class="row">
    <!-- Lecture Notes -->
    <div class="col-xs-12">
        <!-- PANEL: Lecture Notes -->
        <div class="panel">
            <!-- Panel heading -->
            <div class="panel-heading">
                <!-- Panel title -->
                <div class="panel-title">Arama Sonuçları</div>
                <!-- /Panel title -->
                
                <!-- Panel controls -->
                <div class="panel-controls">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#fast-actions-notes" aria-controls="fast-actions-allnotes" role="tab" data-toggle="tab">Notlar</a>
                        </li>
                        <li role="presentation">
                            <a href="#fast-actions-users" aria-controls="fast-actions-public" role="tab" data-toggle="tab">Kullanıcılar</a>
                        </li>
                    </ul>
                </div>
                <!-- Panel controls -->
                </div>
            <!-- /Panel heading -->
            <div class="panel-body">
                <div class="tab-content">
                    <!-- TAB PANE: Search Lecture Notes  -->
                    <div id="fast-actions-notes" role="tabpanel" class="tab-pane fade in active">
                        <!-- TABLE: Search Lecture Notes -->
                        <div class="table-responsive">
                            <table class="table no-mb">
                                <tbody>
                                  <c:choose>
                                    <c:when test="${lecNoteSearchResults!=null &&!lecNoteSearchResults.isEmpty()}">
                                       <c:forEach var="post"  items="${lecNoteSearchResults}">
                                      <!-- Action Row -->
                                      <tr>
                                        <td>
                                           <div class="strong text-dark">
                                             <a href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>">${post.title}</a>
                                            </div>
                                          <p class="no-mb">${post.description} </p>                                                       
                                       </td>
                                     <td class=" small text-center">
                                        <a href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">
                                            <c:out value="@${post.ownerUsername}"/>
                                        </a>
                                     </td>
                                      <td class=" small text-center">
                                          ${post.courseName}
                                          <div class="small text-muted"> ${post.courseTerm}</div>
                                      </td>
                                     <td class="text-center">
                                         ${post.time}
                                         <div class="small text-muted">${post.date}</div>
                                     </td>
                                    </tr>
                                      <!-- /Action Row -->
                                       </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                    <p class="text-center">
                                    <h4 class="title text-warning text-muted text-sm">
                                        <strong class="strong">"${searchInput}"</strong> için hiçbir ders notu bulunmadı.
                                    </h4>
                                    </p>
                                    </c:otherwise>
                                </c:choose>
                                </tbody>
                                
                                <tfoot>
                                    <tr>
                                       <td></td>
                                      <td colspan = "3" class="pull-left">Yaklaşık Bulunan Sonuç Sayısı: ${lecNoteSearchResultsCount}</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /TABLE: Search Lecture Notes -->
                    </div>
                    <!-- /TAB PANE: Search Lecture Notes Pane -->
              
                    <!-- TAB PANE: Search Users  -->
                    <div id="fast-actions-users" role="tabpanel" class="tab-pane fade">
                        <!-- TABLE: Search Users -->
                        <div class="table-responsive">
                            <table class="table users-table">
                                <tbody>
                                  <c:choose>
                                  <c:when test="${userSearchResults!=null && !userSearchResults.isEmpty()}">
                                  <c:forEach var="user" items="${userSearchResults}">
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
                                            <c:choose>
                                            <c:when test="${!friendIDs.contains(user.userID) && !sentRequests.contains(user.userID)}">
                                            <c:if test="${currentUser.userID!=user.userID}">
                                            <li>
                                                <form name="friendRquestForm" class="form-inline" method="post">
                                                    <input type="hidden" name="friendId" value="${user.userID}"/>
                                                    <button type="submit" class="btn-primary"> <i  class="fa fa-plus"></i> Arkadaşı Ekle</button>
                                                </form>
                                            </li>
                                            </c:if>
                                            </c:when>
                                            <c:when test="${sentRequests.contains(user.userID)}">
                                            <li>
                                                <form name="friendRquestForm" class="form-inline" method="post">
                                                    <input type="hidden" name="cancelFriendRequest" value="${user.userID}"/>
                                                    <button type="submit" class="btn-danger"> İsteği İptal Et</button>
                                                </form>
                                            </li>
                                            </c:when>
                                            <c:otherwise>
                                                  <li>
                                                      <button class="btn-default" type="button">
                                                        <i class="fa fa-check"></i>Arkadaşın
                                                      </button>
                                                  </li>
                                              </c:otherwise>
                                            </c:choose>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->
                                </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <p class="text-center">
                                    <h4 class="title text-warning text-muted text-sm">
                                        <strong class="strong">"${searchInput}"</strong> için hiçbir kullanıcı bulunmadı.
                                    </h4>
                                    </p>
                                </c:otherwise>
                            </c:choose>
                                </tbody>
                                
                                <tfoot>
                                    <tr>
                                       <td></td>
                                      <td colspan = "3" class="pull-left">Yaklaşık Bulunan Sonuç Sayısı: ${userSearchResultsCount}</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /TABLE: Search Users -->
                    </div>
                    <!-- /TAB PANE: Search Users -->
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
   


