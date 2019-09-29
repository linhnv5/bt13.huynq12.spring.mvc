<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts"%>

<t:master-admin title="Admin Create App">

<jsp:attribute name="content">

<div class="col-lg-12 col-xl-12 animated fadeIn">
	<jsp:include page="partials/navigations.jsp" />
    <div class="block">
        <div class="block-content">
	        <ol class="breadcrumb breadcrumb-alt push">
	        	<li class="breadcrumb-item">
	        		<a href="/admin/apps">
	        			<i class="fab fa-android mr-2"></i> Apps
	        		</a>
	        	</li>
	        	<li class="breadcrumb-item active" aria-current="page">Create new app</li>
	        </ol>

	        <div id="admin-app-detail" data-uploadlimit="1" data-pageindex="/admin/apps">
				<div class="mb-5 pb-5">
					<div class="loader-60devs " data-state="hidden" style="background: rgb(0, 166, 128); height: 5px;">
						<div class="loader-60devs-progress" style="background: rgb(0, 166, 128); height: 5px;"></div>
					</div>
                    <form action="/admin/apps/create-app" method="POST">
						<div class="mb-5 pb-5">
							<div class="loader-60devs " data-state="hidden" style="background: rgb(0, 166, 128); height: 5px;">
								<div class="loader-60devs-progress" style="background: rgb(0, 166, 128); height: 5px;"></div>
							</div>
							<div class="row push ">
								<div class="col-lg-3">
									<div class="avatar-wrapper">
										<div id="avatar"></div>
										<div class="text-center">
											<div class="avatar-preview">
												<img
													class="avatar rounded-circle img-thumbnail img-responsive mt-3 mb-4"
													src="/img/default-app.png" alt="App Image"
													style="width: 60%;">
												<h6 class="text-muted">App Image</h6>
											</div>
											<section>
												<div tabindex="0" class="dropzone">
													<input accept="image/*" type="file" autocomplete="off"
														tabindex="-1" style="display: none;">
													<p class="pt-3">Drag n drop your image here, or click to select your image</p>
												</div>
											</section>
										</div>
									</div>
								</div>
								<div class="col-lg-9 col-xl-9">
									<div class="tab-content">
										<div class="mt-3 pl-2">
					                       	<c:if test="${not empty successMessage}">
                    					        <div class="form-group">
					                                <span class="text-success">${successMessage}</span>
                    					        </div>
					                       	</c:if>
				                        	<c:if test="${not empty errorMessage}">
                				                <div class="form-group">
                                				    <span class="text-danger">${errorMessage}</span>
				                                </div>
                				            </c:if>
											<div class="form-group">
												<label for="app_id">App ID <small class="text-danger"> * </small></label>
												<div class="input-group mb-3">
													<input type="text" class="form-control "
														placeholder="eg: Enter unique app id here."
														aria-label="eg: Enter unique app id here."
														aria-describedby="app_id" name="id" value="">
												</div>
											</div>
											<div class="form-group">
												<label for="title">App Name <small class="text-danger"> * </small></label>
												<input type="text" name="title" class="form-control "
														placeholder="eg: Enter app title here" value="">
											</div>
											<div class="form-group">
												<label for="short_description">Short Description</label>
												<input type="text" name="appDescription" class="form-control "
														placeholder="eg: Enter app description here" value="">
											</div>
											<input type="hidden" name="appImageUrl" value="" />
											<input type="hidden" name="appDownloadURL" value="" />
										</div>
									</div>
									<div class="row push">
										<div class="col-lg-9 col-xl-9 offset-lg-3">
											<div class="form-group">
												<a class="btn btn-dark mr-1" href="#">
													<i class="fa fa-arrow-left"></i> Back
												</a>
												<button type="submit" class="btn btn-success">
													<i class="mr-1 fa fa-check-circle"></i> Create App
												</button>
												<div role="toolbar" class="btn-toolbar"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
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
	margin: 5px;
}

.search_apps ul {
	columns: 2;
	-webkit-columns: 2;
	-moz-columns: 2;
}

.search_apps li {
	float: left;
	width: 50%;
}

.search_apps li:nth-child(even) {
	margin-right: 2px;
}
</style>
</jsp:attribute>

	<jsp:attribute name="javascript">
<script>
	window.dcmUri = (window.dcmUri || {});
	window.dcmUri = {
		app_search : '{!! route("app.search") !!}',
		api_app_create : '{!! route("api.app.create") !!}',
	}
</script>
<script src="/js/admin-app-store.js"></script>
</jsp:attribute>

</t:master-admin>

