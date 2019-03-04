<%-- 
    Document   : default
    Created on : Jan 25, 2019, 7:39:48 PM
    Author     : trabdlkarim
--%>
<%@tag description="custom tag defining home layout" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>

<%-- any content can be specified here e.g.: --%>
<%@include file="/include/header.jsp" %>
    <jsp:doBody/>
<%@include file="/include/footer.jsp" %>