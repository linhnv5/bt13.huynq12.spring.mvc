<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${not empty apps}">
		<div class="col-md-12">
			<div class="block block-themed">
				<div class="block-header bg-light">
					<h3 class="block-title">App</h3>
					<div class="block-options">
						<a href="/latest" class="btn-block-option">
							More <i class="fas fa-angle-double-right"></i>
						</a>
					</div>
				</div>
				<div class="block-content block-content-hover block-content-no-pad row">
					<c:forEach items="${apps}" var="appx">
						<c:set var="app" value="${appx}" scope="request"/>
						<c:import url="/WEB-INF/jsp/app/partials/_app.jsp"/>
                    </c:forEach>
				</div>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<div class="col-md-12">
			<div class="block block-themed">
				<div class="block-header bg-light">
					<h3 class="block-title">No app to show</h3>
				</div>
			</div>
		</div>
	</c:otherwise>
</c:choose>
