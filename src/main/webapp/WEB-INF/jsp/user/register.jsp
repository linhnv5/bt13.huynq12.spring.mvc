<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts" %>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

<t:master-login title="Register">

<jsp:attribute name="content">
<div class="row no-gutters justify-content-center ">
    <div class="hero-static col-sm-8 col-md-8 col-xl-8 d-flex align-items-center px-sm-0">

        <div class="col-md-12 col-xl-10" style="margin: 0 auto;">
            <div class="row no-gutters">
                <div class="col-md-6 order-md-1 bg-white">
                    <div class="block-content block-content-full px-lg-5 py-md-5 py-lg-6">
                        <!-- Header -->
                        <div class="mb-2 text-center">
                            <p><common:logo /></p>
                            <p class="text-uppercase font-w700 font-size-sm text-muted"> NEW ACCOUNT </p>
                        </div>
                        <!-- END Header -->

                    <c:choose>
                       	<c:when test="${not empty successLogin}">
                            <div class="form-group">
                                <span class="text-success">${successLogin}</span>
                            </div>
                       	</c:when>
                       	<c:otherwise>
                        <!-- Sign In Form -->
                        <form  action="/user/register" method="POST">
                        	<c:if test="${not empty errorMessage}">
                                <div class="form-group">
                                    <span class="text-danger">${errorMessage}</span>
                                </div>
                            </c:if>
                            <input type="hidden" name="id" value="0" />
                            <div class="form-group">
                                <input type="text" class="form-control form-control-alt"  id="username-username" name="username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-alt"  id="email-email" name="email" placeholder="Email Address">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-alt"  id="fullname-fullname" name="fullName" placeholder="Full Name">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control form-control-alt" id="password" name="password" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-block btn-hero-primary">
                                    <i class="fas fa-plus mr-1"></i> SIGN UP
                                </button>
                            </div>
                            <hr/>
                            <div class="form-group">
                                <p class="mt-3 mb-0 d-lg-flex justify-content-lg-between">
                                    <a class="btn btn-secondary btn-block d-block d-lg-inline-block mb-1" href="/user/login" title="SIGN IN">
                                        <i class="fa fa-fw fa-sign-in-alt mr-1"></i> SIGN IN
                                    </a>
                                </p>
                            </div>
                        </form>
                        </c:otherwise>
                        </c:choose>
                        <!-- END Sign In Form -->
                    </div>
                </div>
                <div class="col-md-6 order-md-0 bg-primary-dark-op d-flex align-items-center">
                    <div class="block-content block-content-full px-lg-5 py-md-5 py-lg-6">
                        <div class="media">
                            <div class="media-body">
                                <p class="text-white font-w600 mb-1">
                                    Please create your account.
                                </p>
                                <a class="text-white-75 font-w600" href="javascript:void(0)">Have a question? please contact us.</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</jsp:attribute>

<jsp:attribute name="javascript">
</jsp:attribute>

</t:master-login>
