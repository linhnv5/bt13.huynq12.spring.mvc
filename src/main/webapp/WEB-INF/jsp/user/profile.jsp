<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts" %>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

<t:master-login title="Profile">

<jsp:attribute name="content">
<div class="container bootstrap snippet">
    <div class="block block-rounded block-bordered">
        <ul class="nav nav-tabs nav-tabs-block js-tabs-enabled" data-toggle="tabs" role="tablist">

            <li class="nav-item">
                <a class="nav-link active show" href="#btabs-static-profile">My Profile</a>
            </li>

        </ul>
        <div class="block-content tab-content">
            <div class="tab-pane active show" id="btabs-static-profile" role="tabpanel">
                <div class="row">
                    <div class="col-sm-3 mb-5"><!--left col-->
                        <div class="text-center">
                            <form method="POST" action="#">
                                <div class="avatar-wrapper">
                                    <div id="avatar"></div>
                                    <div class="text-center">
                                        <div class="avatar-preview" >
                                            <img class="avatar rounded-circle img-thumbnail img-responsive mt-3 mb-4" src="/img/profile.png" alt="${user.getFullName()}">
                                            <h5 class="text-muted">My Avatar</h5>
                                        </div>
                                        <div id="changeMyPhoto" class="btn btn-outline-secondary btn-block mt-5 mb-4" >
                                            <i class="fa fa-camera"></i>
                                            Change Photo
                                        </div>

                                        <div class="row avatar-controls d-none">
                                            <div class="col-md-12">
                                                <div id="use-photo" class="btn btn-outline-secondary btn-block" >
                                                    <i class="fa fa-camera"></i>
                                                     Use Photo
                                                </div>
                                                <div  id="cancel-photo" class="btn btn-outline-secondary btn-block" >
                                                    <i class="fa fa-ban"></i>
                                                     Cancel
                                                </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal -->
                                <div class="modal fade" id="profileAvatarModal" tabindex="-1" role="dialog" aria-labelledby="profileAvatar" aria-hidden="true">
                                    <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                        <h5 class="modal-title" id="profileAvatar">Select or Upload your profile photo.</h5>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div data-profile-type="no-photo" class="col-md-3 text-center profile-photo">
                                                    <img src="/img/profile.png" class="rounded-circle img-thumbnail img-responsive">
                                                    <p class="mt-3">No Photo</p>
                                                </div>
                                                <div data-profile-type="use-initials"  class="col-md-3 text-center profile-photo">
                                                    <img src="/img/profile.png" class="rounded-circle img-thumbnail img-responsive">
                                                    <p class="mt-3">Use my initials</p>
                                                </div>
                                                <div data-profile-type="gravatar"  class="col-md-3 text-center profile-photo">
                                                    <img src="/img/profile.png" class="rounded-circle img-thumbnail img-responsive">
                                                    <p class="mt-3">Use my gravatar</p>
                                                </div>
                                                <div data-profile-type="my-avatar" class="col-md-3 text-center profile-photo">
                                                    <div class="btn btn-light btn-upload">
                                                        <i class="fas fa-upload"></i>
                                                        <input type="file" name="avatar" id="avatar-upload">
                                                    </div>
                                                    <p class="mt-3">Drag & Drop Photo</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div><!--/col-3-->
                    <div class="col-sm-9">
                        <div class="tab-content">
                            <div class="tab-pane active" id="home">
                                <form class="form" action="/user/update" method="POST" id="editprofilepage">
                                	<c:if test="${not empty success}">
                                		<div class="form-group">
                	                    	<span class="text-success">${success}</span>
	        	                        </div>
    		                        </c:if>
                                    <div class="form-group">
                                        <div class="col-xs-6">
                                            <label for="full_name"><h4>Full Name</h4></label>
                                            <input type="text" class="form-control" name="fullName" id="full_name" placeholder="Full Name" title="Full Name" value="${user.getFullName()}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-6">
                                            <label for="email"><h4>Email</h4></label>
	                                        <input type="email" class="form-control" name="email" id="email" placeholder="Email" title="Email" value="${user.getEmail()}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-6">
                                            <label for="username"><h4>UserName</h4></label>
                                            <input type="text" class="form-control" name="username" id="username" placeholder="User Name" title="User Name" value="${user.getUsername()}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-6">
                                            <label for="password"><h4>Current Password</h4></label>
                                            <input type="password" class="form-control" name="old_password" id="old_password" placeholder="***********" title="enter your old password.">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-6">
                                        <label for="password_confirmation"><h4>New Password</h4></label>
                                            <input type="password" class="form-control" name="password" id="password" placeholder="***********" title="Enter new password">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-6">
                                            <label for="password_confirmation"><h4>Confirm new password</h4></label>
                                            <input type="password" class="form-control" name="password_confirmation" id="password_confirmation" placeholder="***********" title="Enter new password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                            <div class="col-xs-12">
                                                <br>
                                                <button class="btn btn-lg btn-success" type="submit"><i class="fa fa-save"></i>Save</button>
                                                <a class="btn btn-lg btn-secondary" href="/" ><i class="fa fa-arrow-right"></i>Go to HomePage</a>
                                            </div>
                                    </div>
                                </form>

                                </div><!--/tab-pane-->
                        </div>
                    </div><!--/col-9-->
                </div>

            </div>

        </div>
    </div>
</jsp:attribute>

<jsp:attribute name="stylesheet">
	<link rel="stylesheet" id="css-profile" href="/css/profile.css">
</jsp:attribute>

<jsp:attribute name="javascript">
	<script src="/js/profile.js"></script>
	<script>
		$(document).ready(function(){
        	window.myProfile.setUrl("/user/update/avatar?id=${user.id}");
	    });
	</script>
</jsp:attribute>

</t:master-login>
