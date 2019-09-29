<%@tag description="Header" pageEncoding="UTF-8"%>

<%@taglib prefix="common" tagdir="/WEB-INF/tags/common" %>

<header id="page-header">
    <div class="content-header">
        <div class="d-flex align-items-center">
        	<common:logo />
        </div>
        <div>
            <div class="dropdown d-inline-block">
            	<common:login-menu />
            </div>
        </div>
    </div>
</header>