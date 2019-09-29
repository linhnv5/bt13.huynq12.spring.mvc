<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="t" tagdir="/WEB-INF/tags/layouts" %>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

<t:master-login title="Login">

<jsp:attribute name="content">
<div class="row no-gutters justify-content-center ">
    <div class="hero-static col-sm-8 col-md-8 col-xl-8 d-flex align-items-center px-sm-0">
        <div class="col-md-12 col-xl-10" style="margin: 0 auto;">
            <div class="row no-gutters">
                <div class="col-md-6 order-md-1 bg-white">
                    <div class="block-content block-content-full px-lg-6 py-md-5 py-lg-6">
                        <!-- Header -->
                        <div class="mb-2 text-center">
                            <p> <common:logo /></p>
                            <p class="text-uppercase font-w700 font-size-sm text-muted">Sign In</p>
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
                        <form action="/user/login?returnURL=${returnURL}" method="POST">
                        	<c:if test="${not empty errorMessage}">
                                <div class="form-group">
                                    <span class="text-danger">${errorMessage}</span>
                                </div>
                            </c:if>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-alt"  id="login-username" name="username" placeholder="Enter Username">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control form-control-alt" id="password" name="password" placeholder="Enter Password">
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-block btn-hero-primary">
                                    <i class="fa fa-fw fa-sign-in-alt mr-1"></i> SIGN IN
                                </button>
                            </div>
                            <hr/>
                            <div class="form-group">
                                <p class="mt-3 mb-0 d-lg-flex justify-content-lg-between">
                                    <a class="btn btn-sm btn-light d-block d-lg-inline-block mb-1" href="/user/forgot-password">
                                        <i class="fa fa-exclamation-triangle text-muted mr-1"></i> Forgot password
                                    </a>
                                    <a class="btn btn-sm btn-secondary d-block d-lg-inline-block mb-1" href="/user/new-account">
                                        <i class="fa fa-fw fa-sign-in-alt mr-1"></i> New Account
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
                                    Welcome, Please login your account.
                                </p>
                                <a class="text-white-75 font-w600" href="javascript:void(0)" title="Have a question? please contact us.">Have a question? please contact us.</a>
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
