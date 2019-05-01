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

                            </div>
                            <!-- /Panel heading -->

                            <!-- Panel body -->
                            <div class="panel-body">
                           
                                            <div class="post no-mb">
                                                        <div class="clearfix">
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
                                                        <p class="no-mb">
                                                        <h1 class="strong text-dark title"> 
                                                           ${post.title}
                                                        </h1>
                                                          ${post.description}
                                                        </p>
                                                        <p> <button class="btn btn-danger  btn-rounded" type="button">
                                                             <i class="fa fa-download"></i> Dosyası İndir</button></p>
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
             <!-- PANEL: Users -->
                <div class="panel panel-users">

                    <!-- Panel Heading -->
                    <div class="panel-heading">

                        <!-- Panel Title-->
                        <div class="panel-title">Benzer Ders Notları</div>
                        <!-- /Panel Title-->

                        <!-- Panel Controls -->
                        <div class="panel-controls">
                            <ul class="panel-buttons">
                                <li><i class="btn-panel-control icon fa fa-group"></i></li>
                            </ul>
                        </div>
                        <!-- /Panel Controls -->

                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">
                            <!-- TABLE: Users -->
                            <table class="table table-responsive users-table">
                                <!-- ROW: User -->
                                <tbody><tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-benjamin-jacobs.jpg" alt="Benjamin Jacobs" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Benjamin Jacobs</a>
                                        <div class="post">Director</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-deborah-young.jpg" alt="Deborah Young" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Deborah Young</a>
                                        <div class="post">Animation Designer</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-louis-hawkins.jpg" alt="Louis Hawkins" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Louis Hawkins</a>
                                        <div class="post">Marketing Director</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-ashley-warren.jpg" alt="Ashley Warren" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Ashley Warren</a>
                                        <div class="post">Account Manager</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-christopher-tucker.jpg" alt="Christopher Tucker" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Christopher Tucker</a>
                                        <div class="post">Director</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-lori-harrison.jpg" alt="Lori Harrison" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Lori Harrison</a>
                                        <div class="post">Animation Designer</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-phillip-cole.jpg" alt="Phillip Cole" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Phillip Cole</a>
                                        <div class="post">Marketing Director</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->

                                <!-- ROW: User -->
                                <tr class="user">
                                    <td class="user-avatar">
                                        <!-- User Avatar -->
                                        <div class="avatar image">
                                            <img src="/noteoverflow/assets/caspero/avatar-ann-james.jpg" alt="Ann James" class="mCS_img_loaded">
                                        </div>
                                        <!-- /User Avatar -->
                                    </td>
                                    <td>
                                        <!-- User Info -->
                                        <a href="http://vtdes.ru/demo/caspero/#" class="name">Ann James</a>
                                        <div class="post">Account Manager</div>
                                        <!-- /User Info -->
                                    </td>
                                    <td>
                                        <!-- User Buttons -->
                                        <ul class="inline-icons">
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-facebook fa fa-facebook"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-twitter fa fa-twitter"></a></li>
                                            <li><a href="http://vtdes.ru/demo/caspero/#" class="icon-theme icon-theme-xs icon-brand-googleplus fa fa-google-plus"></a></li>
                                        </ul>
                                        <!-- /User Buttons -->
                                    </td>
                                </tr>
                                <!-- /ROW: User -->
                            </tbody></table>
                            <!-- /TABLE: Users -->
                    </div>
                    <!-- /Panel Body -->
                     <!-- Panel footer -->
                        <div class="panel-footer ">
                            <a href="<c:url context='${rootContext}' value='/user/friends.htm'/>"><i class="icon fa fa-arrow-circle-o-down"></i> Tüm Bağıntılarım Göster</a>
                        </div>
                            <!-- /Panel footer -->
                </div>
             <!-- /PANEL: Users -->
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
   


