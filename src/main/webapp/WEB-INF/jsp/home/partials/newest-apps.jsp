<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-md-12">
	<div class="block block-themed">
		<div class="block-header bg-light">
			<h3 class="block-title">Newest Apps In Last 24 Hours</h3>
		</div>
		<div class="block-content block-content-hover block-content-no-pad row">
			<c:if test="${not empty newApps}">
				<c:forEach items="${newApps}" var="appx">
					<c:set var="app" value="${appx}" scope="request"/>
					<c:import url="/WEB-INF/jsp/app/partials/_app.jsp"/>
				</c:forEach>
			</c:if>
		</div>
	</div>
</div>
