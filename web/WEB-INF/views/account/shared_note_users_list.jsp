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
                        <div class="panel-title">
                            Paylaşım Listesi (${sharedNoteUsersCount.count}) 
                            
                        </div>
                        <!-- /Panel Title-->

                        <!-- Panel Controls -->
                        <div class="panel-controls">
                            <ul class="panel-buttons">
                                <li><a href="#" class="btn-panel-control icon fa fa-group"></a></li>
                            </ul>
                        </div>
                        <!-- /Panel Controls -->

                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">
                        <!-- Scrollable -->
                          <a class="title text-dark  strong" 
                                       href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>">
                                      ${post.title}
                            </a><hr/>
                            <!-- TABLE: Users -->
                            <table class="table table-responsive users-table">
                                <!-- ROW: User -->
                                <tbody>
                                   <c:forEach var="user" items="${sharedNoteUsersList}">
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
                                            <li>
                                                <button type="button" class="btn btn-sm  btn-rounded btn-danger" 
                                                   data-toggle="modal" data-target="#delete-modal-shared-${user.userID}">
                                                   Paylaşımdan Kaldır
                                              </button>
                                                                            
                                            </li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- The Modal -->
                                <div class="modal fade" id="delete-modal-shared-${user.userID}" role="dialog">
                                    <div class="modal-dialog modal-md">
                                        <div class="modal-content">
                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Paylaşımdan Kaldır
                                                <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                            </div>
                                            <!-- Modal body -->
                                           <div class="modal-body">
                                                <form id="deleteUserFromListForm-${user.userID}" name="deleteUserFromListForm-${user.userID}" method="post">
                                                    <p><a href="${user.username}/profile.htm" class="true">${user.name} ${user.surname}</a>, 
                                                      <a class="title text-dark strong" 
                                                        href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>">
                                                       ${post.title}</a> ders notunun paylaşım listesinden kalıcı olarak kaldırmak ister misiniz ?
                                                    </p>
                                                   <input type="hidden"  id="deleteNote" name="deleteNote" value="${post.postId}"/>
                                                  <input type="hidden"  id="deleteUser" name="deleteUser" value="${user.userID}"/>
                                               </form>
                                           </div>
                                         <!-- Modal footer -->
                                         <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                            <button type="button" class="btn btn-primary" 
                                             onclick="document.getElementById('deleteUserFromListForm-${user.userID}').submit()">
                                              Evet
                                             </button>
                                         </div>
                                      </div>
                                   </div>
                                </div>
                                <!--// The Modal -->
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
   


