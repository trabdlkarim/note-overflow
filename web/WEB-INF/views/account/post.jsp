<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
    <div class="row">
       <div class="col-xs-12 col-sm-12 col-md-8">
                        <!-- PANEL: Lecture Note Post -->
                        <div class="panel panel-activities">
                            <!-- Panel heading -->
                            <div class="panel-heading">
                                <!-- Panel title -->
                                <div class="panel-title box mb-4">
                                  <i class="icon fa fa-fw fa-file"></i>
                                </div>
                                <!-- /Panel title -->

                                <!-- Panel controls -->
                                <div class="panel-controls">
                                    <div class="panel-buttons">
                                        <div class="dropdown">
                                            <a class="btn-panel-control icon fa fa-ellipsis-h dropdown-toggle" 
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"></a>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                                <li><a href="#"><i class="icon fa fa-arrow-circle-o-right"></i> Show all activities</a></li>
                                                <li><a href="#">Düzelt</a></li>
                                                <li><a href="#">Gizlilik</a></li>
                                                <li><a href="#">Sil</a></li>
                                                <li class="divider"></li>
                                                <li><a href="#">Paylaş</a></li>
                                                <li><a href="#">E-Posta olarak Gönder</a></li> 
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Panel controls -->

                            </div>
                            <!-- /Panel heading -->

                            <!-- Panel body -->
                            <div class="panel-body">
                           
                                            <div class="post no-mb">
                                                        <div class="clearfix mb-4">
                                                            <div class="avatar avatar-lg pull-left" style="margin-right:8px;" >
                                                            <a href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">
                                                               <img src="${avatarPath}/${post.ownerAvatar}" alt="${post.ownerFullname}">
                                                            </a>
                                                        </div>
                                                        
                                                        <div class="name">
                                                            <a class="strong" href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">
                                                                ${post.ownerFullname}
                                                            </a>
                                                        </div>
                                                        <div class="small text-muted">
                                                            <span class="box fa fa-calendar">  ${post.date},</span>
                                                            <span class="box fa fa-clock-o">${post.time}</span>
                                                        </div>
                                                        </div>
                                                        <hr class="border-white border-0" />
                                                        <div class="row no-mb">
                                                           <div class="col-xs-6 col-sm-6 col-md-4 image text-center">
                                                               <img src="<c:url context='${appAssets}' value='/img/file-icon.png'/>"/>
                                                           </div>
                                                           <div class="col-xs-12 col-sm-12 col-md-8">
                                                               <h1 class="strong text-dark title">${post.title}</h1>
                                                               <p>${post.description}</p>
                                                               <div class="btn-block">
                                                                   <a href="${lectureNotePath}/${post.ownerUsername}/${post.noteFileName}" download="${post.title}${lecnote_file_ext}" class="btn btn-primary">
                                                                    <i class="fa fa-download"></i> Dosya İndir</a>
                                                                  
                                                               </div>
                                                           </div>
                                                        </div>
                                                        
                                            </div>
                            </div>
                            <!-- /Panel body -->

                            <!-- Panel footer -->
                            <div class="panel-footer ">
                                <span class="box text-sm">${post.courseTerm}</span>
                                <span class="box">|</span>
                                <span class="box text-sm">${post.courseName}</span>
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
         <!-- PANEL: Comments -->
                   <div class="panel">
                       <!-- Panel heading -->
                            <div class="panel-heading">
                                <!-- Panel title -->
                                <div class="panel-title box mb-4">
                                  <i class="icon fa fa-fw fa-comments"></i>
                                  Yorumlar (1)
                                </div>
                                <!-- /Panel title -->
                            </div>
                        <!-- /Panel heading -->
                        <!-- Panel body -->
                        <div class="panel-body">
                         <div class="panel">
                          <div class="panel-body">
                        <table>
           <tr>
              <div class="avatar avatar-lg pull-left" style="margin-right:2%;" >
                <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                  <img src="${avatarPath}/${currentUser.avatar}" alt="${currentUser.name} ${currentUser.surname} ">
                </a>
             </div>
            <td >
              <div class="pull-right">
                                                         
              <form  role="form">
                          <div class="form-group">
                              <textarea  class="form-control" id="commentTextArea" rows="3" cols="100%" autofocus="true"  required="true" draggable="false" style="resize:none" ></textarea>
                          </div>
                           <div class="form-group">
                               <button class="btn btn-rounded btn-primary pull-right" type="button">Yorumla</button>
                           </div>
               </form>                                      
                                                        
              </div>
               </td>
              </tr>
       </table>                    
                           </div>
                         </div>
                        <div class="panel">
                           <!-- Panel controls -->
                                <div class="panel-controls">
                                    <div class="panel-buttons">
                                        <div class="dropdown">
                                            <a class="btn-panel-control icon fa fa-ellipsis-h dropdown-toggle" 
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
                            <!-- Panel body -->
                            <div class="panel-body">
                                            <div class="post no-mb">
                                                    <table>
                                                        <tr>
                                                          <div class="avatar avatar-lg pull-left" style="margin-right:8px;" >
                                                            <a href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                               <img src="/noteoverflow/assets/caspero/avatar-benjamin-jacobs.jpg" alt="Benjamin Jacobs">
                                                            </a>
                                                           </div>
                                                         <td>
                                                        <div class="pull-right">
                                                         <div class="name">
                                                            <a class="strong" href="<c:url context='${rootContext}' value='/user/profile.htm'/>">
                                                                Benjamin Jacobs
                                                            </a>
                                                        </div>
                                                        <div class="small text-muted mb-4">
                                                            <span class="text-sm fa fa-calendar"> 27 Şubat 2019,</span>
                                                            <span class="text-sm fa fa-clock-o"> 15:58</span>
                                                        </div>
                                                        <p class="no-mb rounded">
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         Description goes here description goes here.
                                                         
                                                         </p>
                                                         </div>
                                                     </td>
                                                    </tr>
                                                </table>
                                            </div>
                            </div>
                            <!-- /Panel body -->
                         </div>
                                                                                   
                        </div>  
                        <!--/ Panel body -->
                         <!-- Panel footer -->
                            <div class="panel-footer ">
                                <span class="text-primary"> <a href="#">Daha fazla göster</a></span>
                             </div>
                         <!-- /Panel footer -->
                  </div>                                                                
          <!--/ PANEL: Comments -->      
       </div> 
      <div class="col-xs-12 col-sm-12 col-md-4">
                <!-- CardBox Inline: Desktop -->
                <div class="card-box-inline bg-primary mb-0p5">
                    <i class="icon fa fa-comments"></i>
                    <span class="text">Yorumlar</span>
                    <div class="value rate rate-up">92.9</div>
                </div>
                <!-- /CardBox Inline: Desktop -->

                <!-- CardBox Inline: İndirimler -->
                <div class="card-box-inline bg-primary mb-0p5">
                    <i class="icon fa fa-download"></i>
                    <span class="text">İndirimler</span>
                    <div class="value rate rate-up">6.08</div>
                </div>
                <!-- /CardBox Inline: Mobile -->

                <!-- CardBox Inline: Tablet -->
                <div class="card-box-inline bg-primary mb-0p5">
                    <i class="icon fa fa-eye"></i>
                    <span class="text">Görüşler</span>
                    <div class="value rate rate-down">0.98</div>
                </div>
                <!-- /CardBox Inline: Tablet -->
                
                <!-- CardBox Inline: Tablet -->
                <div class="card-box-inline bg-primary mb-0p5">
                    <i class="icon fa fa-thumbs-up"></i>
                    <span class="text">Beğenler</span>
                    <div class="value rate rate-down">0.95</div>
                </div>
               
       <c:if test="${sharedNoteUsersList!=null}">
           <c:if test="${!sharedNoteUsersList.isEmpty()}">  
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
                          
                            <!-- TABLE: Users -->
                            <table class="table table-responsive users-table">
                                <!-- ROW: User -->
                                <tbody>
                                   <c:forEach var="user" items="${sharedNoteUsersList}" end="4">
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
                  <!-- Panel footer -->
                        <div class="panel-footer ">
                            <a href="<c:url context='${rootContext}' value='/user/shared_note_users_list.htm?nid=${post.postId}'/>"><i class="icon fa fa-arrow-circle-o-down"></i> Tümünü Göster</a>
                        </div>
                      <!-- /Panel footer -->
                </div>
            <!-- /PANEL: Users -->       
          </c:if>
       </c:if>
       <c:if test="${relatedPosts!=null}">
           <c:if test="${!relatedPosts.isEmpty()}">  
             
            <!-- PANEL: Users -->
                <div class="panel panel-users">

                    <!-- Panel Heading -->
                    <div class="panel-heading">

                        <!-- Panel Title-->
                        <div class="panel-title">
                           Benzer Notlar
                        </div>
                        <!-- /Panel Title-->

                        <!-- Panel Controls -->
                        <div class="panel-controls">
                            <ul class="panel-buttons">
                                <li><i class="btn-panel-control icon fa fa-file"></i></li>
                            </ul>
                        </div>
                        <!-- /Panel Controls -->

                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">
                        <!-- Scrollable -->
                            <!-- TABLE: Related Posts -->
                                <!-- ROW: User -->
                                   <c:forEach var="post" items="${relatedPosts}">
                                  <!-- ROW: Note -->
                                   <div class="title strong">
                                        <!-- Note title -->
                                        <a href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>" class="name">
                                            ${post.title}
                                        </a>
                                        <!-- /Note title -->
                                    </div>
                                
                                <!-- /ROW: Note -->
                                </c:forEach>
                            <!-- /TABLE: Related Posts -->
                        <!-- /Scrollable -->
                    </div>
                    <!-- /Panel Body -->
                </div>
         <!-- /PANEL: Users -->       
        
          </c:if>
       </c:if>
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
   


