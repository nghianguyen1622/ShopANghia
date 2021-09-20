<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<base href="" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="copyright" content="" />
<title>Quản trị hệ thống Zeptain</title>

<link rel="shortcut icon" type="image/x-icon"
	href="images/icon-logo.png" />
<link href="<c:url value="/assets/admin/css/bootstrap.min.css" /> "
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/layout.css" /> "
	rel="stylesheet" />

<script src="<c:url value="/assets/admin/js/jquery.min.js" /> "></script>
<script src="<c:url value="/assets/admin/js/bootstrap.min.js" /> "></script>
<script src="<c:url value="/assets/admin/js/chart.min.js" /> "></script>

<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container-fluid padding0">
		<%@include
			file="/WEB-INF/views/layouts/admin/hearder-footer/header.jsp"%>
		<div id="main">
			<%@include
			file="/WEB-INF/views/layouts/admin/hearder-footer/logininfo.jsp"%> 
			<h1>
				<span class="glyphicon glyphicon-gift addtop" aria-hidden="true"></span>&nbsp;&nbsp;Quảng
				cáo
			</h1>
			<div id="sub-main">
				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-8 col-lg-9">
						<ol class="breadcrumb">
							<li>Hệ thống</li>
							<li class="active">Quảng cáo</li>
						</ol>
					</div>
					<div class="hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
						<div class="timecount">
							07:20:47 <small>(12/01/2016)</small>
						</div>
					</div>
				</div>



				<div class="row margin0">
					<div class="table-responsive table-sanpham">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th style="width: 5%"><input type="checkbox" value="" /></th>
									<th style="width: 35%">Hình ảnh</th>
									<th style="width: 20%">Tiêu đề</th>
									<th style="width: 20%">Mô tả</th>
									<th style="width: 10%">Thời gian cập nhật</th>

									<th style="width: 10%">Thao tác</th>
								</tr>
							</thead>
							<c:forEach var="item" items="${ advertisement }">
							<tr>
								<td><input type="checkbox" value="" /></td>
								<td><img STYLE="width: 355px; height: 150px"
									class="img-responsive" src="<c:url value="/assets/user/images/slide/${item.img}"/>" alt="" /></td>
								<td>${item.caption}</td>
								<td>${item.title}</td>
								<td>${item.date}</td>
								<td>
									<button>
										<a href="<c:url value="/advertisement/${item.id}"/>">Thay đổi</a>
									</button>

								</td>
							</tr>
							</c:forEach>


						</table>
					</div>
					
				</div>
			</div>
		</div>
		<%@include
			file="/WEB-INF/views/layouts/admin/hearder-footer/footer.jsp"%>
	</div>
</body>
</html>