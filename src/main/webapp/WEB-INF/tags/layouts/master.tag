<%@tag description="Master Template" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>
<%@taglib prefix="cschema" tagdir="/WEB-INF/tags/common/schema" %>
<%@taglib prefix="sidebar" tagdir="/WEB-INF/tags/sidebar" %>

<%@attribute name="title"%>
<%@attribute name="description"%>
<%@attribute name="author"%>
<%@attribute name="nosidebar"%>

<%@attribute name="stylesheet" fragment="true" %>
<%@attribute name="schema" fragment="true" %>
<%@attribute name="content" fragment="true" %>
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

		<common:cookie-enabled />

        <!-- override -->
        <style>
            #page-footer {
                padding-top:2rem;
                min-height: auto !important;
            }
        </style>

        <!-- for search popup -->
        <script>document.documentElement.className = 'js';</script>

        <!-- default schema -->
        <cschema:index/>
        <jsp:invoke fragment="schema"/>
    </head>
    <body>
        <div id="page-container" class="page-header-dark main-content-boxed">
        	<common:header />
            <main id="main-container">
            	<common:navigation />
                <div class="content content-full">
                    <div class="row">
                    	<c:choose>
                    		<c:when test="${noSideBar}">
		                        <div class="col-lg-8 col-xl-8">
	    		                    <jsp:invoke fragment="content"/>
                		        </div>
                    		</c:when>
                    		<c:otherwise>
		                        <div class="col-lg-8 col-xl-8">
	    		                    <jsp:invoke fragment="content"/>
                		        </div>
                        		<div class="col-lg-4 col-xl-4">
                        			<sidebar:sidebar />
		                        </div>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                </div>
            </main>
            <common:footer />
        </div>

        <!-- search modal -->
        <common:search-modal />

        <!-- default javascript -->
        <common:default-javascript />

		<common:search-modal-javascript />

        <!-- push custom javascript -->
        <jsp:invoke fragment="javascript"/>
    </body>
</html>
