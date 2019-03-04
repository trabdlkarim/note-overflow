<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
    <div class="text-center">
        <h1 class="text-danger">
            <b>HTTP Status 403 - Erişim engellendi</b>
        </h1>
        <p class="text-dark">Bu sayfaya yalnız sistem yönticileri erişim edebiliyor.</p> 
        <p class="text-dark">Sayfayı görmek için sistem yöneticilerinden biriyle iletişime geçmeilsiniz.</p>
       <button  class="btn btn-primary" onclick="location.reload();location.href='${rootContext}/welcome.htm'">
           Geri dön
       </button>
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
   


