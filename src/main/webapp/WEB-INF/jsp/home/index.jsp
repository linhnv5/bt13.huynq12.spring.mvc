<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts" %>

<t:master title="App Store 4 Fun">

<jsp:attribute name="content">
<div class="row">
    <jsp:include page="partials/featured-apps.jsp" />
    <%--jsp:include page="partials/newest-apps.jsp" /--%>
</div>
</jsp:attribute>

<jsp:attribute name="javascript">
</jsp:attribute>

</t:master>
