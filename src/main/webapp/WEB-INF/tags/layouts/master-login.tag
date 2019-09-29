<%@tag description="Master Login Template" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

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
        <common:meta-tags title="${title}" description="${description}" author="${author}" />

        <!-- default styling for all layouts. -->
        <common:default-styles />

        <!-- push custom stylesheet based on page. -->
        <jsp:invoke fragment="stylesheet"/>

        <!-- override -->
        <style>
            #page-footer {
                padding-top:2rem;
                min-height: auto !important;
            }
        </style>

        <!-- push custom meta redirect -->
        <jsp:invoke fragment="meta"/>
    </head>
    <body>
        <div id="page-container" class="page-header-dark main-content-boxed">
        	<common:header />
            <main id="main-container">
                <div class="content-full">
                    <div class="row">
                        <div class="col-lg-12 col-xl-12">
	                        <jsp:invoke fragment="content"/>
                        </div>

                    </div>
                </div>
            </main>
            <common:footer />
        </div>

        <!-- default javascript -->
        <common:default-javascript />

        <!-- push custom javascript -->
        <jsp:invoke fragment="javascript"/>
    </body>
</html>