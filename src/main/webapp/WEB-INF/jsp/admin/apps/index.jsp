<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts" %>

<t:master-admin title="Admin Browser Apps">

<jsp:attribute name="content">

<jsp:include page="partials/navigations.jsp" />

<div class="row">
    <div id="admin-app">
		<div>
			<div class="bg-white">
				<div class="content">
					<h2 class="content-heading pt-0">Search your favorite apps or games</h2>
						<div class="input-group input-group-lg">
							<input type="text" class="form-control form-control-alt" placeholder="Search.." value="">
							<div class="input-group-append">
								<span class="input-group-text border-0 bg-body"><i class="fa fa-fw fa-search"></i></span>
							</div>
						</div>
                       	<%--c:if test="${not empty successMessage}">
   					        <div class="form-group mt-3">
                                <span class="text-success">${successMessage}</span>
   					        </div>
                       	</c:if>
                       	<c:if test="${not empty errorMessage}">
			                <div class="form-group mt-3">
               				    <span class="text-danger">${errorMessage}</span>
                            </div>
			            </c:if--%>
						<!--div class="form-group mt-3">
							<div class="text-center">
								<a class="btn btn-secondary btn-circle" title="All"
										style="color: rgb(255, 255, 255); background-color: rgb(92, 152, 139); border-color: rgb(92, 152, 139);">All</a><a
										class="btn btn-secondary btn-circle" title="A"
										style="color: rgb(255, 255, 255);">A</a><a
										class="btn btn-secondary btn-circle" title="B"
										style="color: rgb(255, 255, 255);">B</a><a
										class="btn btn-secondary btn-circle" title="C"
										style="color: rgb(255, 255, 255);">C</a><a
										class="btn btn-secondary btn-circle" title="D"
										style="color: rgb(255, 255, 255);">D</a><a
										class="btn btn-secondary btn-circle" title="E"
										style="color: rgb(255, 255, 255);">E</a><a
										class="btn btn-secondary btn-circle" title="F"
										style="color: rgb(255, 255, 255);">F</a><a
										class="btn btn-secondary btn-circle" title="G"
										style="color: rgb(255, 255, 255);">G</a><a
										class="btn btn-secondary btn-circle" title="H"
										style="color: rgb(255, 255, 255);">H</a><a
										class="btn btn-secondary btn-circle" title="I"
										style="color: rgb(255, 255, 255);">I</a><a
										class="btn btn-secondary btn-circle" title="J"
										style="color: rgb(255, 255, 255);">J</a><a
										class="btn btn-secondary btn-circle" title="K"
										style="color: rgb(255, 255, 255);">K</a><a
										class="btn btn-secondary btn-circle" title="L"
										style="color: rgb(255, 255, 255);">L</a><a
										class="btn btn-secondary btn-circle" title="M"
										style="color: rgb(255, 255, 255);">M</a><a
										class="btn btn-secondary btn-circle" title="N"
										style="color: rgb(255, 255, 255);">N</a><a
										class="btn btn-secondary btn-circle" title="O"
										style="color: rgb(255, 255, 255);">O</a><a
										class="btn btn-secondary btn-circle" title="P"
										style="color: rgb(255, 255, 255);">P</a><a
										class="btn btn-secondary btn-circle" title="Q"
										style="color: rgb(255, 255, 255);">Q</a><a
										class="btn btn-secondary btn-circle" title="R"
										style="color: rgb(255, 255, 255);">R</a><a
										class="btn btn-secondary btn-circle" title="S"
										style="color: rgb(255, 255, 255);">S</a><a
										class="btn btn-secondary btn-circle" title="T"
										style="color: rgb(255, 255, 255);">T</a><a
										class="btn btn-secondary btn-circle" title="U"
										style="color: rgb(255, 255, 255);">U</a><a
										class="btn btn-secondary btn-circle" title="V"
										style="color: rgb(255, 255, 255);">V</a><a
										class="btn btn-secondary btn-circle" title="W"
										style="color: rgb(255, 255, 255);">W</a><a
										class="btn btn-secondary btn-circle" title="X"
										style="color: rgb(255, 255, 255);">X</a><a
										class="btn btn-secondary btn-circle" title="Y"
										style="color: rgb(255, 255, 255);">Y</a><a
										class="btn btn-secondary btn-circle" title="Z"
										style="color: rgb(255, 255, 255);">Z</a>
						</div>
					</div-->
				</div>
			</div>
			<div class="loader-60devs " data-state="hidden" style="background: rgb(0, 166, 128); height: 5px;">
				<div class="loader-60devs-progress" style="background: rgb(0, 166, 128); height: 5px;">
				</div>
			</div>
			<div class="block block-themed">
				<div class="block-header bg-light">
					<h3 class="block-title">Browse all your play store</h3>
				</div>
				<!--div class="block-content block-content-full block-content-sm bg-body-light">
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<li class="previous disabled"><a class="page-link"
								tabindex="0" role="button" aria-disabled="true">❮</a></li>
							<li class="page-item active"><a role="button"
								class="page-link" tabindex="0"
								aria-label="Page 1 is your current page" aria-current="page">1</a></li>
							<li class="page-item"><a role="button" class="page-link"
								tabindex="0" aria-label="Page 2">2</a></li>
							<li class="page-item"><a role="button" class="page-link"
								tabindex="0" aria-label="Page 3">3</a></li>
							<li class="next"><a class="page-link" tabindex="0"
								role="button" aria-disabled="false">❯</a></li>
						</ul>
					</nav>
				</div-->
				<div class="block-content block-content-admin block-content-no-pad row">
					<c:forEach items="${apps}" var="app">
						<div class="col-lg-3 col-sm-6 col-xs-6">
							<a class="block block-rounded block-link-shadow">
								<div class="block-content block-content-full d-flex align-items-center justify-content-between">
									<div class="item  block-app-image">
										<img
											src="${app.getAppImageUrl() != null ? app.getAppImageUrl() : 'img/default-app.png'}" alt="${app.getTitle()}"
											width="100%" height="100%"
											alt="${app.getTitle()} average rating ${app.getCurrentRatings()}"
											title="${app.getTitle()} average rating ${app.getCurrentRatings()}"
											style="width: 80px; height: 80px;">
									</div>
									<div class="ml-3 text-right">
										<p class="font-w600 mb-0 app-title">${app.getTitle()}</p>
										<div class="stars mb-3">
											<span class="score"
												title="${app.getTitle()} average rating ${app.getCurrentRatings()}"
												style="width: ${app.getCurrentRatings() / 5 * 100}%;"></span>
											<span class="star">${app.getCurrentRatings()}</span>
										</div>
										<button class="btn btn-outline-secondary btn-sm mr-1"
												onclick="window.location.href='/admin/apps/edit/${app.getId()}'">
											<i class="fa fa-edit"></i>
										</button>
										<button class="btn btn-outline-danger btn-sm"
												onclick="window.location.href='/admin/apps/delete/${app.getId()}'">
											<i class="fa fa-trash-alt"></i>
										</button>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
				<!--div class="block-content block-content-full block-content-sm bg-body-light">
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<li class="previous disabled"><a class="page-link"
								tabindex="0" role="button" aria-disabled="true">❮</a></li>
							<li class="page-item active"><a role="button"
								class="page-link" tabindex="0"
								aria-label="Page 1 is your current page" aria-current="page">1</a></li>
							<li class="page-item"><a role="button" class="page-link"
								tabindex="0" aria-label="Page 2">2</a></li>
							<li class="page-item"><a role="button" class="page-link"
								tabindex="0" aria-label="Page 3">3</a></li>
							<li class="next"><a class="page-link" tabindex="0"
								role="button" aria-disabled="false">❯</a></li>
						</ul>
					</nav>
				</div-->
			</div>
		</div>
    </div>
</div>

</jsp:attribute>

<jsp:attribute name="stylesheet">
    <style>
        #admin-app .page-link:focus {
            box-shadow: 0 0 0 0;
        }
        .btn-circle {
            width: 30px;
            height: 30px;
            text-align: center;
            padding: 6px 0;
            font-size: 12px;
            line-height: 1.428571429;
            border-radius: 0px;
            border: 1px solid #eaeaea;
            margin:5px;
        }
    </style>
</jsp:attribute>

<jsp:attribute name="javascript">
<!--script>
    window.dcmUri = (window.dcmUri || {});
    window.dcmUri = {
        resource  : '/admin/app-resource',
    }
</script>
<script src="/js/admin-app.js"></script-->
</jsp:attribute>

</t:master-admin>
