<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
	
<title><decorator:title default="Master-Layout"></decorator:title></title>

<script src="https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js"
	type="text/javascript" async=""></script>
<script src="<c:url value="/assets/user/js/defer_plus.js" /> " type="text/javascript"></script>
<!-- <script>
	deferscript('js/polyfill.js', 'polyfill-js', 1)
</script> -->
<meta name="description" content="">
<meta name="keywords" content="Kiến vàng, Ant Theme" />
<link rel="canonical" href="https://ant-mobile.mysapo.net/" />
<meta name='revisit-after' content='1 days' />
<meta name="robots" content="noodp,index,follow" />
<link rel="icon"
	href="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/favicon.png?1559638811340"
	type="image/x-icon" />
<meta property="og:type" content="website">
<meta property="og:title" content="Ant Mobile">
<meta property="og:image"
	content="https:https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/logo.png?1559638811340">
<meta property="og:image:secure_url"
	content="https:https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/logo.png?1559638811340">
<meta property="og:description" content="">
<meta property="og:url" content="https://ant-mobile.bizwebvietnam.net">
<meta property="og:site_name" content="Ant Mobile">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	media="all">

<link href="<c:url value="/assets/user/css/bootstrap.scss.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/user/css/plugin.scss.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/user/css/base.scss.css" /> " rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/user/css/style.css" />  " rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/user/css/custom.css" /> " rel="stylesheet" type="text/css" />



<script src="<c:url value="/assets/user/js/jquery.min.js" /> " type="text/javascript"></script>
<script src="<c:url value="/assets/user/js/option-selectors.js" />  " type="text/javascript"></script>
<script src="<c:url value="/assets/user/js/api.jquery.js?4" /> " type="text/javascript"></script>
<script src="<c:url value="/assets/user/js/owl.carousel.min.js" /> " type="text/javascript"></script>



<decorator:head></decorator:head>

</head>
<body>
	<%@include file="/WEB-INF/views/layouts/user/hearder-footer/header.jsp" %>
	
	<!-- lấy body trong Index -->
	<decorator:body></decorator:body>
	
	<%@include file="/WEB-INF/views/layouts/user/hearder-footer/footer.jsp" %>
	
	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>
