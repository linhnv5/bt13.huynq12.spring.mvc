<%@tag description="Master Login Template" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>
<%@taglib prefix="adcommon" tagdir="/WEB-INF/tags/admin/common" %>

<%@attribute name="title"%>
<%@attribute name="description"%>
<%@attribute name="author"%>

<%@attribute name="stylesheet" fragment="true" %>
<%@attribute name="content" fragment="true" %>
<%@attribute name="meta" fragment="true" %>
<%@attribute name="javascript" fragment="true" %>

<!doctype html>
<html>
    <head>
        <!-- meta tags -->
        <adcommon:meta-tags title="${title}" description="${description}" author="${author}" />

        <!-- default styling for all layouts. -->
        <common:default-styles />

        <!-- push custom stylesheet based on page. -->
        <jsp:invoke fragment="stylesheet"/>

        <style>
            #page-container.page-header-dark #page-header {
                background-color: #435450;
            }

            .page-header-dark #page-header .btn-dual:hover, .page-header-dark #page-header .btn-dual:focus, .page-header-dark #page-header .btn-dual.focus, .sidebar-dark #sidebar .btn-dual:hover, .sidebar-dark #sidebar .btn-dual:focus, .sidebar-dark #sidebar .btn-dual.focus {
                background-color: #506962 !important;
                border-color: #506962  !important;
            }
            .nav-main-link:hover, .nav-main-link.active {
                color: #000;
                background-color: #e4e4e4;
            }
        </style>
    </head>
    <body>
        <div id="page-container" class="page-header-dark main-content-boxed">
        	<adcommon:header />
            <main id="main-container">
            	<adcommon:navigation />
                <div class="content content-full">
                    <div class="row">
                        <div class="col-lg-12 col-xl-12">
   		                    <jsp:invoke fragment="content"/>
                        </div>
                    </div>
                </div>
            </main>
            <%-- @include('common.footer') --%>
        </div>

        <!-- default javascript -->
        <common:default-javascript />

        <!-- push custom javascript -->
        <jsp:invoke fragment="javascript"/>
    </body>
</html>