<%@tag description="Header" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<button type="button" class="btn btn-dual" id="page-header-user-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <i class="fa fa-fw fa-user d-sm-none"></i>
    <span class="d-none d-sm-inline-block">
    	${user != null ? user.getUsername() : "Login/Register"}
    </span>
    <i class="fa fa-fw fa-angle-down ml-1 d-none d-sm-inline-block"></i>
</button>

<div class="dropdown-menu dropdown-menu-right p-0" aria-labelledby="page-header-user-dropdown">
    <div class="p-2">
   	<c:choose>
   		<c:when test="${not empty user}">
            <a class="dropdown-item" href="/user/profile" title="${user.getUsername()}">
                <i class="fa fa-fw fa-sign-in-alt mr-1"></i>${user.getUsername()}
            </a>
            <c:if test="${user.isAdmin()}">
                <a class="dropdown-item" href="/admin" title="Go to Admin Panel">
                    <i class="fa fa-fw fa-lock mr-1"></i> Go to Admin Panel
                </a>
            </c:if>
            <div role="separator" class="dropdown-divider"></div>
            <a class="dropdown-item" href="/user/logout">
                <i class="far fa-fw fa-arrow-alt-circle-left mr-1"></i> Logout
            </a>
        </c:when>
        <c:otherwise>
            <a class="dropdown-item" href="/user/login" title="Sign-in">
                <i class="fa fa-fw fa-sign-in-alt mr-1"></i> Login
            </a>
            <a class="dropdown-item" href="/user/register" title="Register">
                <i class="fa fa-fw fa-user-plus mr-1"></i> Register
            </a>
        </c:otherwise>
    </c:choose>
    </div>
</div>
