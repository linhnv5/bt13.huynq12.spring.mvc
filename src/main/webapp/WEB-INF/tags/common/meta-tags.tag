<%@tag description="Meta Tags" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="title"%>
<%@attribute name="description"%>
<%@attribute name="author"%>
<%@attribute name="redirect"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

<title>${title}</title>

<meta name="description" content="${description}">
<meta name="author" content="${author}">

<meta property="og:title" content="${title}">
<meta property="og:site_name" content="${title}">
<meta property="og:description" content="${description}">
<meta property="og:type" content="website">
<!--meta property="og:url" content="{{ url()->current() }}"-->
<!--meta property="og:image" content="@yield('image', asset(dcmConfig('site_logo')) ?? '#' )"> --}}-->

<link rel="icon" href="/img/favicon.png" type="image/x-icon"/>
<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon"/>

<meta name="csrf-token" content="iQSzLHL0n9ZgqLsABY7KCJ4LYHh8y6ZowYOYP9Ss">

<c:if test="${not empty redirect}">
	<meta http-equiv="Refresh" content="5;url=http://localhost:8080/"${redirect}>
</c:if>
