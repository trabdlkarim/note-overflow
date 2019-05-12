<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="bodyContent">
     <div class="row">
                    <!-- Lecture Notes -->
                    <div class="col-xs-12">
                        <!-- PANEL: Lecture Notes -->
                        <div class="panel">
                            <!-- Panel heading -->
                            <div class="panel-heading">
                                <!-- Panel title -->
                                <div class="panel-title">Ders Notlarım</div>
                                <!-- /Panel title -->

                                <!-- Panel controls -->
                                <div class="panel-controls">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active">
                                            <a href="#fast-actions-allnotes" aria-controls="fast-actions-allnotes" role="tab" data-toggle="tab">Tüm</a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#fast-actions-public" aria-controls="fast-actions-public" role="tab" data-toggle="tab">Açık</a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#fast-actions-shared" aria-controls="fast-actions-shared" role="tab" data-toggle="tab">Ortak</a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#fast-actions-private" aria-controls="fast-actions-private" role="tab" data-toggle="tab">Gizli</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Panel controls -->
                            </div>
                            <!-- /Panel heading -->

                            <!-- Panel body -->
                            <div class="panel-body">
                                <div class="tab-content">
                                    <!-- TAB PANE: All User Notes  -->
                                    <div id="fast-actions-allnotes" role="tabpanel" class="tab-pane fade in active">
                                        <!-- TABLE: All User Notes -->
                                        <div class="table-responsive">
                                            <table class="table no-mb">
                                                <tbody>
                                                <c:choose>
                                                    <c:when test="${allUserPosts!=null && !allUserPosts.isEmpty()}">
                                                      <c:forEach var="post"  items="${allUserPosts}">
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
                                                         <td>
                                                         <div class="btn-group btn-group-nowrap" role="group">
                                                             <c:choose>
                                                                <c:when test="${post.ownerId == currentUser.userID}">
                                                                    <c:choose>
                                                                        <c:when test="${post.privacy == 'PUBLIC'}">
                                                                            <button type="button" class="btn btn-rounded btn-primary " 
                                                                                    data-toggle="modal" data-target="#edit-modal-${post.noteId}">
                                                                            <i class="fa fa-edit"></i>
                                                                            </button>
                                                                             <!-- The Modal -->
                                                                            <div class="modal fade" id="edit-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-lg">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form:form id="editLecNoteForm${post.noteId}" name="editLecNoteForm${post.noteId}" method="POST" 
                                                                                                       modelAttribute="editedPost" enctype="multipart/form-data">
                                                                                                
                                                                                             <div class="form-group">
                                                                                             <label >*Başlık:</label>
                                                                                               <form:input type="text" class="form-control" path="title" value="${post.title}"/>
                                                                                             </div>
                                                                                             <div class="form-group">
                                                                                               <label>*Dersın Adı:</label>
                                                                                               <form:select class="form-control" path="courseName" id="lecNoteCourse">
                                                                                                   <form:option value="None" >Notun Dersi Seçiniz </form:option>
                                                                                                    <c:forEach var="course" items="${courses}">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${post.courseName==course.name}">
                                                                                                             <form:option  selected="true" value="${course.name}">${course.name}</form:option>
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                             <form:option value="${course.name}">${course.name}</form:option>   
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                                                                    </c:forEach>
                                                                                                </form:select>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label>*Açıklama:</label>
                                                                                                 <textarea  class="form-control" id="postDesc" name="postDesc" rows="5" style="resize: none">${post.description}</textarea>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label for="lectureNoteInputFile">*Notun Dosyası: ${post.noteFileName}</label>
                                                                                                  <form:input id="lectureNoteInputFile"  type="file"  class="form-control-file" path="noteFile"/>
                                                                                            </div>
                                                                                            <form:input type="hidden" class="form-control" path="postId" name="postId" value="${post.postId}"/>
                                                                                           </form:form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="submit" class="btn btn-ln  btn-primary" onclick="document.getElementById('editLecNoteForm${post.noteId}').submit()">Kaydet</button>
                                                                                        </div>
                                                                                       <!--// Modal footer -->
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--// The Modal -->    
                                                                            <button type="button" class="btn btn-rounded btn-success" data-toggle="modal" 
                                                                                    data-target="#privacy-modal-${post.noteId}">
                                                                                <i class="fa fa-unlock-alt"></i>
                                                                            </button>
                                                                            <!-- The Modal -->         
                                                                             <div class="modal fade" id="privacy-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Notun Gizliliğini Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form id="editLecNotePrivacyForm${post.noteId}" name="editLecNotePrivacyForm" method="post">
                                                                                                 <p><span class="title strong">${post.title}</span> ders notunuz gizliliğini seçtiniz.</p>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" class="form-check-input" id="notePrivacyStatusPrivate${post.noteId}" 
                                                                                                           name="notePrivacyStatus" value="PRIVATE" onclick="document.getElementById('lecNotePrivacyFieldset${post.noteId}').disabled=true"/>
                                                                                                    <label class="form-check-label"> <i class='fa fa-lock'></i> Gizli</label>
                                                                                                </div>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" checked="true"  class="form-check-input" id= "notePrivacyStatusShared${post.noteId}" name="notePrivacyStatus" 
                                                                                                           value="SHARED" onclick="document.getElementById('lecNotePrivacyFieldset${post.noteId}').disabled=false" />
                                                                                                    <label class="form-check-label"> <i class='fa fa-group'></i> Ortak</label>
                                                                                                </div>
                                                                                                <fieldset class="form-group" id="lecNotePrivacyFieldset${post.noteId}">
                                                                                                  <legend class="form-text text-capitalize small strong text-muted">
                                                                                                      Bu not kimleryile  paylaşmak isterseniz ?
                                                                                                  </legend>
                                                                                                 <div class="form-group">
                                                                                                     <textarea  required="true" class="form-control" style="resize:none"  name='sharedNoteUsersList' 
                                                                                                      id='sharedNoteUsersList' rows='3'
                                                                                                      placeholder="abdc@gmail.com,efgh@example.com"></textarea>
                                                                                                 </div>
                                                                                                </fieldset>
                                                                                               <input type="hidden" id="lecNotePrivacyStatus" name="lecNotePrivacyStatus" value="${post.postId}"/>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('editLecNotePrivacyForm${post.noteId}').submit()">Kaydet</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                           <button type="button" class="btn btn-sm  btn-rounded btn-danger" 
                                                                                   data-toggle="modal" data-target="#delete-modal-${post.noteId}">
                                                                               Sil
                                                                           </button>
                                                                           <!-- The Modal -->         
                                                                             <div class="modal fade" id="delete-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Sil
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form id="deleteLecNoteForm-${post.noteId}" name="deleteLecNoteForm-${post.noteId}" method="post">
                                                                                              <p><h6 class="title strong">${post.title}</h6> Bu ders notunu kalıcı olarak silmek ister misiniz ?</p>
                                                                                              <input type="hidden" id="deleteLecNote" name="deleteLecNote" value="${post.postId}"/>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('deleteLecNoteForm-${post.noteId}').submit()">
                                                                                                Evet
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                        </c:when>
                                                                        <c:when test="${post.privacy == 'PRIVATE'}">
                                                                           <button type="button" class="btn btn-rounded btn-primary" 
                                                                                   data-toggle="modal" data-target="#edit-modal-${post.noteId}">
                                                                               <i class="fa fa-edit"></i>
                                                                           </button>
                                                                            <!-- The Modal -->
                                                                            <div class="modal fade" id="edit-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-lg">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form:form id="editLecNoteForm${post.noteId}" 
                                                                                                       name="editLecNoteForm${post.noteId}" method="POST" 
                                                                                                       modelAttribute="editedPost" enctype="multipart/form-data">
                                                                                                
                                                                                             <div class="form-group">
                                                                                             <label >*Başlık:</label>
                                                                                               <form:input type="text" class="form-control" path="title" value="${post.title}"/>
                                                                                             </div>
                                                                                             <div class="form-group">
                                                                                               <label>*Dersın Adı:</label>
                                                                                               <form:select class="form-control" path="courseName" id="lecNoteCourse">
                                                                                                   <form:option value="None" >Notun Dersi Seçiniz </form:option>
                                                                                                    <c:forEach var="course" items="${courses}">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${post.courseName==course.name}">
                                                                                                             <form:option  selected="true" value="${course.name}">${course.name}</form:option>
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                             <form:option value="${course.name}">${course.name}</form:option>   
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                                                                    </c:forEach>
                                                                                                </form:select>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label>*Açıklama:</label>
                                                                                                 <textarea  class="form-control" id="postDesc" name="postDesc" rows="5" style="resize: none">${post.description}</textarea>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label for="lectureNoteInputFile">*Notun Dosyası: ${post.noteFileName}</label>
                                                                                                  <form:input id="lectureNoteInputFile"  type="file"  class="form-control-file" path="noteFile"/>
                                                                                            </div>
                                                                                            <form:input type="hidden" class="form-control" path="postId" name="postId" value="${post.postId}"/>
                                                                                           </form:form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="submit" class="btn btn-ln  btn-primary" onclick="document.getElementById('editLecNoteForm${post.noteId}').submit()">Kaydet</button>
                                                                                        </div>
                                                                                       <!--// Modal footer -->
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--// The Modal -->    
                                                                           <button type="button" class="btn btn-rounded btn-success" 
                                                                                   data-toggle="modal" data-target="#privacy-modal-${post.noteId}">
                                                                               <i class="fa fa-lock"></i>
                                                                           </button>
                                                                            <!-- The Modal -->         
                                                                             <div class="modal fade" id="privacy-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Notun Gizliliğini Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                          <form id="editLecNotePrivacyForm${post.noteId}" name="editLecNotePrivacyForm" method="post">
                                                                                                 <p><span class="title strong">${post.title}</span> ders notunuz gizliliğini seçtiniz.</p>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" class="form-check-input" id="notePrivacyStatusPublic${post.noteId}" 
                                                                                                           name="notePrivacyStatus" value="PUBLIC" onclick="document.getElementById('lecNotePrivacyFieldset${post.noteId}').disabled=true"/>
                                                                                                    <label class="form-check-label"> <i class='fa fa-unlock-alt'></i> Açık</label>
                                                                                                </div>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" checked="true" class="form-check-input" id= "notePrivacyStatusShared${post.noteId}" name="notePrivacyStatus" 
                                                                                                           value="SHARED" onclick="document.getElementById('lecNotePrivacyFieldset${post.noteId}').disabled=false" />
                                                                                                    <label class="form-check-label"> <i class='fa fa-group'></i> Ortak</label>
                                                                                                </div>
                                                                                                <fieldset class="form-group" id="lecNotePrivacyFieldset${post.noteId}">
                                                                                                  <legend class="form-text text-capitalize small strong text-muted">
                                                                                                      Bu not kimleryile  paylaşmak isterseniz ?
                                                                                                  </legend>
                                                                                                 <div class="form-group">
                                                                                                     <textarea  class="form-control" required="true" style="resize:none"  name='sharedNoteUsersList' 
                                                                                                      id='sharedNoteUsersList' rows='3'
                                                                                                      placeholder="abdc@gmail.com,efgh@example.com"></textarea>
                                                                                                 </div>
                                                                                                </fieldset>
                                                                                                 <input type="hidden" id="lecNotePrivacyStatus" name="lecNotePrivacyStatus" value="${post.postId}"/>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('editLecNotePrivacyForm${post.noteId}').submit()" >Kaydet</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                           <button type="button" class="btn btn-sm  btn-rounded btn-danger" 
                                                                                   data-toggle="modal" data-target="#delete-modal-${post.noteId}">
                                                                               Sil
                                                                           </button>
                                                                           <!-- The Modal -->         
                                                                             <div class="modal fade" id="delete-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Sil
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                        <form id="deleteLecNoteForm-${post.noteId}" name="deleteLecNoteForm-${post.noteId}" method="post">
                                                                                              <p><h6 class="title strong">${post.title}</h6> Bu ders notunu kalıcı olarak silmek ister misiniz ?</p>
                                                                                              <input type="hidden" id="deleteLecNote" name="deleteLecNote" value="${post.postId}"/>
                                                                                         </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                             onclick="document.getElementById('deleteLecNoteForm-${post.noteId}').submit()">Evet</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                           <button type="button" class="btn btn-rounded btn-primary" 
                                                                                   data-toggle="modal" data-target="#edit-modal-${post.noteId}">
                                                                               <i class="fa fa-edit"></i>
                                                                           </button>
                                                                           <!-- The Modal -->
                                                                            <div class="modal fade" id="edit-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-lg">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">
                                                                                                Ders Notunu Düzelt
                                                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                                            </h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form:form id="editLecNoteForm${post.noteId}" 
                                                                                                       name="editLecNoteForm${post.noteId}" method="POST" 
                                                                                                       modelAttribute="editedPost" enctype="multipart/form-data">
                                                                                                
                                                                                             <div class="form-group">
                                                                                             <label >*Başlık:</label>
                                                                                               <form:input type="text" class="form-control" path="title" value="${post.title}"/>
                                                                                             </div>
                                                                                             <div class="form-group">
                                                                                               <label>*Dersın Adı:</label>
                                                                                               <form:select class="form-control" path="courseName" id="lecNoteCourse">
                                                                                                   <form:option value="None" >Notun Dersi Seçiniz </form:option>
                                                                                                    <c:forEach var="course" items="${courses}">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${post.courseName==course.name}">
                                                                                                             <form:option  selected="true" value="${course.name}">${course.name}</form:option>
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                             <form:option value="${course.name}">${course.name}</form:option>   
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                                                                    </c:forEach>
                                                                                                </form:select>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label>*Açıklama:</label>
                                                                                                 <textarea  class="form-control" id="postDesc" name="postDesc" rows="5" style="resize: none">${post.description}</textarea>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label for="lectureNoteInputFile">*Notun Dosyası: ${post.noteFileName}</label>
                                                                                                  <form:input id="lectureNoteInputFile"  type="file"  class="form-control-file" path="noteFile"/>
                                                                                            </div>
                                                                                            <form:input type="hidden" class="form-control" path="postId" name="postId" value="${post.postId}"/>
                                                                                           </form:form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="submit" class="btn btn-ln  btn-primary" onclick="document.getElementById('editLecNoteForm${post.noteId}').submit()">Kaydet</button>
                                                                                        </div>
                                                                                       <!--// Modal footer -->
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--// The Modal -->     
                                                                               
                                                                           <button type="button" class="btn btn-rounded btn-success" 
                                                                                   data-toggle="modal" data-target="#privacy-modal-${post.noteId}">
                                                                               <i class="fa fa-group"></i>
                                                                           </button>
                                                                            <!-- The Modal -->         
                                                                             <div class="modal fade" id="privacy-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Notun Gizliliğini Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                         <form id="editLecNotePrivacyForm${post.noteId}" name="editLecNotePrivacyForm" method="post">
                                                                                             <p><span class="title strong">${post.title}</span> ders notunuz gizliliğini seçtiniz.</p>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" class="form-check-input" id="notePrivacyStatusPublic${post.noteId}" 
                                                                                                           name="notePrivacyStatus" value="PUBLIC" onclick="document.getElementById('lecNotePrivacyFieldset${post.noteId}').disabled=true"/>
                                                                                                    <label class="form-check-label"> <i class='fa fa-unlock-alt'></i> Açık</label>
                                                                                                </div>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" class="form-check-input" id="notePrivacyStatusPrivate${post.noteId}" 
                                                                                                           name="notePrivacyStatus" value="PRIVATE" onclick="document.getElementById('lecNotePrivacyFieldset${post.noteId}').disabled=true"/>
                                                                                                    <label class="form-check-label"> <i class='fa fa-lock'></i> Gizli</label>
                                                                                                </div>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" checked="true" class="form-check-input" id= "notePrivacyStatusShared${post.noteId}" name="notePrivacyStatus" 
                                                                                                           value="SHARED" onclick="document.getElementById('lecNotePrivacyFieldset${post.noteId}').disabled=false" />
                                                                                                    <label class="form-check-label"> <i class='fa fa-group'></i> Ortak</label>
                                                                                                </div>
                                                                                                <fieldset class="form-group" id="lecNotePrivacyFieldset${post.noteId}">
                                                                                                  <legend class="form-text text-capitalize small strong text-muted">
                                                                                                      Bu not kimleryile  paylaşmak isterseniz ?
                                                                                                  </legend>
                                                                                                 <div class="form-group">
                                                                                                     <textarea  class="form-control" required="true" style="resize:none"  name='sharedNoteUsersList' 
                                                                                                      id='sharedNoteUsersList' rows='3'
                                                                                                      placeholder="abdc@gmail.com,efgh@example.com"></textarea>
                                                                                                 </div>
                                                                                                </fieldset>
                                                                                                  <label><a href="<c:url context='${rootContext}' value='/user/shared_note_users_list.htm?nid=${post.postId}'/>"><i class="fa fa-eye"></i> Notunun paylaşım listesine bakınız.</a></label>
                                                                                                 <input type="hidden" id="lecNotePrivacyStatus" name="lecNotePrivacyStatus" value="${post.postId}"/>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('editLecNotePrivacyForm${post.noteId}').submit()">
                                                                                                Kaydet
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                           
                                                                           <button type="button" class="btn btn-sm  btn-rounded btn-danger" 
                                                                                   data-toggle="modal" data-target="#delete-modal-${post.noteId}">
                                                                               Sil
                                                                           </button>
                                                                           <!-- The Modal -->         
                                                                             <div class="modal fade" id="delete-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Sil
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                        <form id="deleteLecNoteForm-${post.noteId}" name="deleteLecNoteForm-${post.noteId}" method="post">
                                                                                              <p><h6 class="title strong">${post.title}</h6> Bu ders notunu kalıcı olarak silmek ister misiniz ?</p>
                                                                                              <input type="hidden" id="deleteLecNote" name="deleteLecNote" value="${post.postId}"/>
                                                                                         </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('deleteLecNoteForm-${post.noteId}').submit()">
                                                                                                Evet
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                        </c:otherwise>
                                                                      </c:choose>
                                                                 </c:when>
                                                                 <c:otherwise>
                                                                     <button type="button" class="btn btn-rounded btn-success" 
                                                                             data-toggle="modal" data-target="#privacy-modal-${post.noteId}">
                                                                         <i class="fa fa-group"></i>
                                                                     </button>
                                                                     <!-- The Modal -->         
                                                                             <div class="modal fade" id="privacy-modal-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Sizinle Paylaşımı Kaldır
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button> </h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form id="unshareLecNote-${post.noteId}" name="unshareLecNote-${post.noteId}"
                                                                                                   method="post">
                                                                                            <p> 
                                                                                             <a href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">${post.ownerFullname}, </a>
                                                                                             <label class="title">
                                                                                                <a class="strong text-dark"  href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>">${post.title}</a>
                                                                                             </label> başlığın altındaki ders notu sizinle paylaşıyor.
                                                                                            </p>
                                                                                            <p>Sizinle notun paylaşımını kaldırmak ister misiniz ?</p>
                                                                                            <input type="hidden" id="unshareLecNote" name="unshareLecNote" value="${post.postId}"/>
                                                                                            </p>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('unshareLecNote-${post.noteId}').submit()">
                                                                                                Evet
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                     <!--// The Modal -->
                                                                 </c:otherwise>
                                                            </c:choose>
                                                         </div>
                                                        </td>
                                                      </tr>
                                                      <!-- /Action Row -->
                                                       </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p>Henüz hiç notlarınız yoktur.</p>
                                                    </c:otherwise>
                                                </c:choose>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                       <td></td>
                                                      <td colspan = "3" class="pull-left">Toplam: ${allUserPostsCount}</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <!-- /TABLE: All User Notes -->
                                    </div>
                                    <!-- /TAB PANE: All User Notes Pane -->
                                    
                                    <!-- TAB PANE: Public Notes -->
                                    <div id="fast-actions-public" role="tabpanel" class="tab-pane fade">
                                        <!-- TABLE: Public -->
                                        <div class="table-responsive">
                                            <table class="table no-mb">
                                                <tbody>
                                                <c:choose>
                                                    <c:when test="${publicPosts!=null && !publicPosts.isEmpty()}">
                                                        <c:forEach var="post" items="${publicPosts}">
                                                      <!-- Action Row -->
                                                      <tr>
                                                         <td>
                                                             <div class="strong text-dark">
                                                                 <a href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>">${post.title}</a></div>
                                                            <p class="no-mb">${post.description} </p>                                                       
                                                         </td>
                                                         <td class=" small text-center">
                                                            <a href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">
                                                                <c:out value="@${post.ownerUsername}"/>
                                                            </a>
                                                         </td>
                                                          <td class="small text-center">
                                                              ${post.courseName}
                                                              <div class="small text-muted"> ${post.courseTerm}</div>
                                                          </td>
                                                         <td class="text-center">
                                                             ${post.time}
                                                             <div class="small text-muted">${post.date}</div>
                                                         </td>
                                                         <td>
                                                         <div class="btn-group btn-group-nowrap" role="group">
                                                              <button type="button" class="btn btn-rounded btn-primary " 
                                                                   data-toggle="modal" data-target="#edit-modal-public-${post.noteId}">
                                                                   <i class="fa fa-edit"></i>
                                                              </button>
                                                                             <!-- The Modal -->
                                                                            <div class="modal fade" id="edit-modal-public-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-lg">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form:form id="editPublicLecNoteForm${post.noteId}" name="editLecNoteForm${post.noteId}" method="POST" 
                                                                                                       modelAttribute="editedPost" enctype="multipart/form-data">
                                                                                                
                                                                                             <div class="form-group">
                                                                                             <label >*Başlık:</label>
                                                                                               <form:input type="text" class="form-control" path="title" value="${post.title}"/>
                                                                                             </div>
                                                                                             <div class="form-group">
                                                                                               <label>*Dersın Adı:</label>
                                                                                               <form:select class="form-control" path="courseName" id="lecNoteCourse">
                                                                                                   <form:option value="None" >Notun Dersi Seçiniz </form:option>
                                                                                                    <c:forEach var="course" items="${courses}">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${post.courseName==course.name}">
                                                                                                             <form:option  selected="true" value="${course.name}">${course.name}</form:option>
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                             <form:option value="${course.name}">${course.name}</form:option>   
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                                                                    </c:forEach>
                                                                                                </form:select>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label>*Açıklama:</label>
                                                                                                 <textarea  class="form-control" id="postDesc" name="postDesc" rows="5" style="resize: none">${post.description}</textarea>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label for="lectureNoteInputFile">*Notun Dosyası: ${post.noteFileName}</label>
                                                                                                  <form:input id="lectureNoteInputFile"  type="file"  class="form-control-file" path="noteFile"/>
                                                                                            </div>
                                                                                            <form:input type="hidden" class="form-control" path="postId" name="postId" value="${post.postId}"/>
                                                                                           </form:form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="submit" class="btn btn-ln  btn-primary" onclick="document.getElementById('editPublicLecNoteForm${post.noteId}').submit()">Kaydet</button>
                                                                                        </div>
                                                                                       <!--// Modal footer -->
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--// The Modal -->    
                                                                <button type="button" class="btn btn-rounded btn-success" data-toggle="modal" 
                                                                   data-target="#privacy-modal-public-${post.noteId}">
                                                                   <i class="fa fa-unlock-alt"></i>
                                                                 </button>
                                                                            <!-- The Modal -->         
                                                                             <div class="modal fade" id="privacy-modal-public-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Notun Gizliliğini Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form id="editPublicLecNotePrivacyForm${post.noteId}" name="editPublicLecNotePrivacyForm" method="post">
                                                                                                 <p><span class="title strong">${post.title}</span> ders notunuz gizliliğini seçtiniz.</p>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" class="form-check-input" id="notePrivacyStatusPrivate${post.noteId}" 
                                                                                                           name="notePrivacyStatus" value="PRIVATE" onclick="document.getElementById('lecNotePublicPrivacyFieldset${post.noteId}').disabled=true"/>
                                                                                                    <label class="form-check-label"> <i class='fa fa-lock'></i> Gizli</label>
                                                                                                </div>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" checked="true"  class="form-check-input" id= "notePrivacyStatusShared${post.noteId}" name="notePrivacyStatus" 
                                                                                                           value="SHARED" onclick="document.getElementById('lecNotePublicPrivacyFieldset${post.noteId}').disabled=false" />
                                                                                                    <label class="form-check-label"> <i class='fa fa-group'></i> Ortak</label>
                                                                                                </div>
                                                                                                <fieldset class="form-group" id="lecNotePublicPrivacyFieldset${post.noteId}">
                                                                                                  <legend class="form-text text-capitalize small strong text-muted">
                                                                                                      Bu not kimleryile  paylaşmak isterseniz ?
                                                                                                  </legend>
                                                                                                 <div class="form-group">
                                                                                                     <textarea  required="true" class="form-control" style="resize:none"  name='sharedNoteUsersList' 
                                                                                                      id='sharedNoteUsersList' rows='3'
                                                                                                      placeholder="abdc@gmail.com,efgh@example.com"></textarea>
                                                                                                 </div>
                                                                                                </fieldset>
                                                                                               <input type="hidden" id="lecNotePrivacyStatus" name="lecNotePrivacyStatus" value="${post.postId}"/>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('editPublicLecNotePrivacyForm${post.noteId}').submit()">Kaydet</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                 <button type="button" class="btn btn-sm  btn-rounded btn-danger" 
                                                                                   data-toggle="modal" data-target="#delete-modal-public-${post.noteId}">
                                                                               Sil
                                                                 </button>
                                                                           <!-- The Modal -->         
                                                                             <div class="modal fade" id="delete-modal-public-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Sil
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form id="deletePublicLecNoteForm-${post.noteId}" name="deleteLecNoteForm-${post.noteId}" method="post">
                                                                                              <p><h6 class="title strong">${post.title}</h6> Bu ders notunu kalıcı olarak silmek ister misiniz ?</p>
                                                                                              <input type="hidden" id="deleteLecNote" name="deleteLecNote" value="${post.postId}"/>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('deletePublicLecNoteForm-${post.noteId}').submit()">
                                                                                                Evet
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                         </div>
                                                        </td>
                                                      </tr>
                                                      <!-- /Action Row -->
                                                       </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p>Henüz açık notlarınız yoktur.</p>
                                                    </c:otherwise>
                                                </c:choose>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                      <td></td>
                                                      <td colspan = "3" class="pull-left">Toplam: ${publicPostsCount}</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <!-- /TABLE: Public -->
                                    </div>
                                    <!-- /TAB PANE: Public Notes -->

                                    <!-- TAB PANE: Shared Notes -->
                                    <div id="fast-actions-shared" role="tabpanel" class="tab-pane fade">
                                        <!-- TABLE: Shared -->
                                          <div class="table-responsive">
                                            <table class="table no-mb">
                                                <tbody>
                                                <c:choose>
                                                    <c:when test="${sharedPosts!=null && !sharedPosts.isEmpty()}">
                                                      <c:forEach var="post" items="${sharedPosts}">
                                                      <!-- Action Row -->
                                                      <tr>
                                                         <td>
                                                             <div class="strong text-dark">
                                                                 <a href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>">${post.title}</a></div>
                                                            <p class="no-mb">${post.description} </p>                                                       
                                                         </td>
                                                        <td class="small text-center">
                                                            <a href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">
                                                                <c:out value="@${post.ownerUsername}"/>
                                                            </a>
                                                         </td>
                                                          <td class="small text-center">
                                                              ${post.courseName}
                                                              <div class="small text-muted"> ${post.courseTerm}</div>
                                                          </td>
                                                         <td class="text-center">
                                                             ${post.time}
                                                             <div class="small text-muted">${post.date}</div>
                                                         </td>
                                                         <td>
                                                         <div class="btn-group btn-group-nowrap" role="group">
                                                            <c:choose>
                                                                <c:when test="${post.ownerId == currentUser.userID}">
                                                                           <button type="button" class="btn btn-rounded btn-primary" 
                                                                                   data-toggle="modal" data-target="#edit-modal-shared-${post.noteId}">
                                                                               <i class="fa fa-edit"></i>
                                                                           </button>
                                                                           <!-- The Modal -->
                                                                            <div class="modal fade" id="edit-modal-shared-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-lg">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">
                                                                                                Ders Notunu Düzelt
                                                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                                            </h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form:form id="editSharedLecNoteForm${post.noteId}" 
                                                                                                       name="editLecNoteForm${post.noteId}" method="POST" 
                                                                                                       modelAttribute="editedPost" enctype="multipart/form-data">
                                                                                                
                                                                                             <div class="form-group">
                                                                                             <label >*Başlık:</label>
                                                                                               <form:input type="text" class="form-control" path="title" value="${post.title}"/>
                                                                                             </div>
                                                                                             <div class="form-group">
                                                                                               <label>*Dersın Adı:</label>
                                                                                               <form:select class="form-control" path="courseName" id="lecNoteCourse">
                                                                                                   <form:option value="None" >Notun Dersi Seçiniz </form:option>
                                                                                                    <c:forEach var="course" items="${courses}">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${post.courseName==course.name}">
                                                                                                             <form:option  selected="true" value="${course.name}">${course.name}</form:option>
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                             <form:option value="${course.name}">${course.name}</form:option>   
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                                                                    </c:forEach>
                                                                                                </form:select>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label>*Açıklama:</label>
                                                                                                 <textarea  class="form-control" id="postDesc" name="postDesc" rows="5" style="resize: none">${post.description}</textarea>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label for="lectureNoteInputFile">*Notun Dosyası: ${post.noteFileName}</label>
                                                                                                  <form:input id="lectureNoteInputFile"  type="file"  class="form-control-file" path="noteFile"/>
                                                                                            </div>
                                                                                            <form:input type="hidden" class="form-control" path="postId" name="postId" value="${post.postId}"/>
                                                                                           </form:form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="submit" class="btn btn-ln  btn-primary" onclick="document.getElementById('editSharedLecNoteForm${post.noteId}').submit()">Kaydet</button>
                                                                                        </div>
                                                                                       <!--// Modal footer -->
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--// The Modal -->     
                                                                               
                                                                           <button type="button" class="btn btn-rounded btn-success" 
                                                                                   data-toggle="modal" data-target="#privacy-modal-shared-${post.noteId}">
                                                                               <i class="fa fa-group"></i>
                                                                           </button>
                                                                            <!-- The Modal -->         
                                                                             <div class="modal fade" id="privacy-modal-shared-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Notun Gizliliğini Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                         <form id="editSharedLecNotePrivacyForm${post.noteId}" name="editLecNotePrivacyForm" method="post">
                                                                                             <p><span class="title strong">${post.title}</span> ders notunuz gizliliğini seçtiniz.</p>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" class="form-check-input" id="notePrivacyStatusPublic${post.noteId}" 
                                                                                                           name="notePrivacyStatus" value="PUBLIC" onclick="document.getElementById('lecNotePrivacyFieldset${post.noteId}').disabled=true"/>
                                                                                                    <label class="form-check-label"> <i class='fa fa-unlock-alt'></i> Açık</label>
                                                                                                </div>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" class="form-check-input" id="notePrivacyStatusPrivate${post.noteId}" 
                                                                                                           name="notePrivacyStatus" value="PRIVATE" onclick="document.getElementById('lecNoteSharedPrivacyFieldset${post.noteId}').disabled=true"/>
                                                                                                    <label class="form-check-label"> <i class='fa fa-lock'></i> Gizli</label>
                                                                                                </div>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" checked="true" class="form-check-input" id= "notePrivacyStatusShared${post.noteId}" name="notePrivacyStatus" 
                                                                                                           value="SHARED" onclick="document.getElementById('lecNoteSharedPrivacyFieldset${post.noteId}').disabled=false" />
                                                                                                    <label class="form-check-label"> <i class='fa fa-group'></i> Ortak</label>
                                                                                                </div>
                                                                                                <fieldset class="form-group" id="lecNoteSharedPrivacyFieldset${post.noteId}">
                                                                                                  <legend class="form-text text-capitalize small strong text-muted">
                                                                                                      Bu not kimleryile  paylaşmak isterseniz ?
                                                                                                  </legend>
                                                                                                 <div class="form-group">
                                                                                                     <textarea  class="form-control" required="true" style="resize:none"  name='sharedNoteUsersList' 
                                                                                                      id='sharedNoteUsersList' rows='3'
                                                                                                      placeholder="abdc@gmail.com,efgh@example.com"></textarea>
                                                                                                 </div>
                                                                                                </fieldset>
                                                                                                  <label><a href="<c:url context='${rootContext}' value='/user/shared_note_users_list.htm?nid=${post.postId}'/>"><i class="fa fa-eye"></i> Notunun paylaşım listesine bakınız.</a></label>
                                                                                                 <input type="hidden" id="lecNotePrivacyStatus" name="lecNotePrivacyStatus" value="${post.postId}"/>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('editSharedLecNotePrivacyForm${post.noteId}').submit()">
                                                                                                Kaydet
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                           
                                                                           <button type="button" class="btn btn-sm  btn-rounded btn-danger" 
                                                                                   data-toggle="modal" data-target="#delete-modal-shared-${post.noteId}">
                                                                               Sil
                                                                           </button>
                                                                           <!-- The Modal -->         
                                                                             <div class="modal fade" id="delete-modal-shared-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Sil
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                        <form id="deleteSharedLecNoteForm-${post.noteId}" name="deleteSharedLecNoteForm-${post.noteId}" method="post">
                                                                                              <p><h6 class="title strong">${post.title}</h6> Bu ders notunu kalıcı olarak silmek ister misiniz ?</p>
                                                                                              <input type="hidden" id="deleteLecNote" name="deleteLecNote" value="${post.postId}"/>
                                                                                         </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('deleteSharedLecNoteForm-${post.noteId}').submit()">
                                                                                                Evet
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                 </c:when>
                                                                 <c:otherwise>
                                                                     <button type="button" class="btn btn-rounded btn-success" 
                                                                             data-toggle="modal" data-target="#privacy-modal-shared-${post.noteId}">
                                                                         <i class="fa fa-group"></i>
                                                                     </button>
                                                                     <!-- The Modal -->         
                                                                             <div class="modal fade" id="privacy-modal-shared-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Sizinle Paylaşımı Kaldır
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button> </h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form id="unshareSharedLecNote-${post.noteId}" name="unshareSharedLecNote-${post.noteId}"
                                                                                                   method="post">
                                                                                            <p> 
                                                                                             <a href="<c:url context='${rootContext}' value='/user/${post.ownerUsername}/profile.htm'/>">${post.ownerFullname}, </a>
                                                                                             <label class="title">
                                                                                                <a class="strong text-dark"  href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>">${post.title}</a>
                                                                                             </label> başlığın altındaki ders notu sizinle paylaşıyor.
                                                                                            </p>
                                                                                            <p>Sizinle notun paylaşımını kaldırmak ister misiniz ?</p>
                                                                                            <input type="hidden" id="unshareLecNote" name="unshareLecNote" value="${post.postId}"/>
                                                                                            </p>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('unshareSharedLecNote-${post.noteId}').submit()">
                                                                                                Evet
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                     <!--// The Modal -->
                                                                 </c:otherwise>
                                                            </c:choose>
                                                         </div>
                                                        </td>
                                                      </tr>
                                                      <!-- /Action Row -->
                                                       </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p>Henüz ortak notlarınız yoktur.</p>
                                                    </c:otherwise>
                                                </c:choose>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                      <td></td>
                                                      <td colspan = "3" class="pull-left">Toplam: ${sharedPostsCount}</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <!-- /TABLE: Shared -->
                                    </div>
                                    <!-- /TAB PANE: Shared Notes -->
                                    
                                    <!-- TAB PANE: Private Notes -->
                                    <div id="fast-actions-private" role="tabpanel" class="tab-pane fade" >
                                         <!-- TABLE: Private -->
                                         <div class="table-responsive">
                                            <table class="table no-mb">
                                                <tbody>
                                                <c:choose>
                                                    <c:when test="${privatePosts!=null && !privatePosts.isEmpty()}">
                                                        <c:forEach var="post" items="${privatePosts}">
                                                      <!-- Action Row -->
                                                      <tr>
                                                         <td>
                                                             <div class="strong text-dark">
                                                                 <a href="<c:url context='${rootContext}' value='/user/post.htm?postId=${post.postId}'/>">${post.title}</a></div>
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
                                                         <td>
                                                         <div class="btn-group btn-group-nowrap" role="group">
                                                            <button type="button" class="btn btn-rounded btn-primary" 
                                                                                   data-toggle="modal" data-target="#edit-modal-private-${post.noteId}">
                                                                               <i class="fa fa-edit"></i>
                                                             </button>
                                                                            <!-- The Modal -->
                                                                            <div class="modal fade" id="edit-modal-private-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-lg">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                            <form:form id="editPrivateLecNoteForm${post.noteId}" 
                                                                                                       name="editPivateLecNoteForm${post.noteId}" method="POST" 
                                                                                                       modelAttribute="editedPost" enctype="multipart/form-data">
                                                                                                
                                                                                             <div class="form-group">
                                                                                             <label >*Başlık:</label>
                                                                                               <form:input type="text" class="form-control" path="title" value="${post.title}"/>
                                                                                             </div>
                                                                                             <div class="form-group">
                                                                                               <label>*Dersın Adı:</label>
                                                                                               <form:select class="form-control" path="courseName" id="lecNoteCourse">
                                                                                                   <form:option value="None" >Notun Dersi Seçiniz </form:option>
                                                                                                    <c:forEach var="course" items="${courses}">
                                                                                                        <c:choose>
                                                                                                            <c:when test="${post.courseName==course.name}">
                                                                                                             <form:option  selected="true" value="${course.name}">${course.name}</form:option>
                                                                                                            </c:when>
                                                                                                            <c:otherwise>
                                                                                                             <form:option value="${course.name}">${course.name}</form:option>   
                                                                                                            </c:otherwise>
                                                                                                        </c:choose>
                                                                                                    </c:forEach>
                                                                                                </form:select>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label>*Açıklama:</label>
                                                                                                 <textarea  class="form-control" id="postDesc" name="postDesc" rows="5" style="resize: none">${post.description}</textarea>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                 <label for="lectureNoteInputFile">*Notun Dosyası: ${post.noteFileName}</label>
                                                                                                  <form:input id="lectureNoteInputFile"  type="file"  class="form-control-file" path="noteFile"/>
                                                                                            </div>
                                                                                            <form:input type="hidden" class="form-control" path="postId" name="postId" value="${post.postId}"/>
                                                                                           </form:form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="submit" class="btn btn-ln  btn-primary" onclick="document.getElementById('editPrivateLecNoteForm${post.noteId}').submit()">Kaydet</button>
                                                                                        </div>
                                                                                       <!--// Modal footer -->
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <!--// The Modal -->    
                                                                           <button type="button" class="btn btn-rounded btn-success" 
                                                                                   data-toggle="modal" data-target="#privacy-modal-private-${post.noteId}">
                                                                               <i class="fa fa-lock"></i>
                                                                           </button>
                                                                            <!-- The Modal -->         
                                                                             <div class="modal fade" id="privacy-modal-private-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Notun Gizliliğini Düzelt
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                          <form id="editPrivateLecNotePrivacyForm${post.noteId}" name="editPrivateLecNotePrivacyForm" method="post">
                                                                                                 <p><span class="title strong">${post.title}</span> ders notunuz gizliliğini seçtiniz.</p>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" class="form-check-input" id="notePrivacyStatusPublic${post.noteId}" 
                                                                                                           name="notePrivacyStatus" value="PUBLIC" onclick="document.getElementById('lecNotePrivatePrivacyFieldset${post.noteId}').disabled=true"/>
                                                                                                    <label class="form-check-label"> <i class='fa fa-unlock-alt'></i> Açık</label>
                                                                                                </div>
                                                                                                <div class="form-check">
                                                                                                    <input type="radio" checked="true" class="form-check-input" id= "notePrivacyStatusShared${post.noteId}" name="notePrivacyStatus" 
                                                                                                           value="SHARED" onclick="document.getElementById('lecNotePrivatePrivacyFieldset${post.noteId}').disabled=false" />
                                                                                                    <label class="form-check-label"> <i class='fa fa-group'></i> Ortak</label>
                                                                                                </div>
                                                                                                <fieldset class="form-group" id="lecNotePrivatePrivacyFieldset${post.noteId}">
                                                                                                  <legend class="form-text text-capitalize small strong text-muted">
                                                                                                      Bu not kimleryile  paylaşmak isterseniz ?
                                                                                                  </legend>
                                                                                                 <div class="form-group">
                                                                                                     <textarea  class="form-control" required="true" style="resize:none"  name='sharedNoteUsersList' 
                                                                                                      id='sharedNoteUsersList' rows='3'
                                                                                                      placeholder="abdc@gmail.com,efgh@example.com"></textarea>
                                                                                                 </div>
                                                                                                </fieldset>
                                                                                                 <input type="hidden" id="lecNotePrivacyStatus" name="lecNotePrivacyStatus" value="${post.postId}"/>
                                                                                            </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                                    onclick="document.getElementById('editPrivateLecNotePrivacyForm${post.noteId}').submit()" >Kaydet</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                                           <button type="button" class="btn btn-sm  btn-rounded btn-danger" 
                                                                                   data-toggle="modal" data-target="#delete-modal-private-${post.noteId}">
                                                                               Sil
                                                                           </button>
                                                                           <!-- The Modal -->         
                                                                             <div class="modal fade" id="delete-modal-private-${post.noteId}" role="dialog">
                                                                                <div class="modal-dialog modal-md">
                                                                                    <div class="modal-content">
                                                                                        <!-- Modal Header -->
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Ders Notunu Sil
                                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button></h4>
                                                                                        </div>
                                                                                        <!-- Modal body -->
                                                                                        <div class="modal-body">
                                                                                        <form id="deletePrivateLecNoteForm-${post.noteId}" name="deletePrivateLecNoteForm-${post.noteId}" method="post">
                                                                                              <p><h6 class="title strong">${post.title}</h6> Bu ders notunu kalıcı olarak silmek ister misiniz ?</p>
                                                                                              <input type="hidden" id="deleteLecNote" name="deleteLecNote" value="${post.postId}"/>
                                                                                         </form>
                                                                                        </div>
                                                                                        <!-- Modal footer -->
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hayır</button>
                                                                                            <button type="button" class="btn btn-primary" 
                                                                                             onclick="document.getElementById('deletePrivateLecNoteForm-${post.noteId}').submit()">Evet</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                           <!--// The Modal -->
                                                         </div>
                                                        </td>
                                                      </tr>
                                                      <!-- /Action Row -->
                                                       </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p>Henüz gizli notlarınız yoktur.</p>
                                                    </c:otherwise>
                                                </c:choose>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                      <td></td>
                                                      <td colspan = "3" class="pull-left">Toplam: ${privatePostsCount}</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <!-- /TABLE: Private -->
                                    </div>
                                    <!-- /TAB PANE: Private Notes -->

                                </div>
                            </div>
                            <!-- Panel body -->
                        </div>
                        <!-- /PANEL: Lecture Notes -->
                    </div>
                    <!-- /Lecture Notes -->
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
   


