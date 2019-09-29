<%@tag description="Meta Tags" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="title"%>
<%@attribute name="description"%>
<%@attribute name="author"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

<title>${title}</title>

<meta name="description" content="${description}">
<meta name="author" content="${author}">
<meta name="robots" content="noindex, nofollow">

<!-- Open Graph Meta -->
<meta property="og:title" content="">
<meta property="og:site_name" content="">
<meta property="og:description" content=" ">
<meta property="og:type" content="website">
<meta property="og:url" content="">
<meta property="og:image" content="">

<!--meta name="csrf-token" content="{{ csrf_token() }}"-->
