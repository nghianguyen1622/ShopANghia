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
				<span class="glyphicon glyphicon-folder-open addtop"
					aria-hidden="true"></span>&nbsp;&nbsp;Sửa danh mục
			</h1>
			<div id="sub-main">
				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-8 col-lg-9">
						<ol class="breadcrumb">
							<li>Hệ thống</li>
							<li>Bài viết</li>
							<li class="active">Sửa danh mục</li>
						</ol>
					</div>
					<div class="hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
						<div class="timecount">
							07:20:47 <small>(12/01/2016)</small>
						</div>
					</div>
				</div>
				<div class="row margin0 space-top">
					<div class="option-h4 text-justify">
						<h4>Sửa danh mục</h4>

						<c:url value="/editCategory" var="editCategory" />
						<form:form action="${editCategory}" method="POST"
							modelAttribute="categorys">
							<form:input type="hidden" class="texttendm" id="tendanhmuc"
								path="id" />
							<div class="form-group">

								<label>Chọn danh mục cha</label>



								<form:select class="form-control" path="id_categorys">
									<option value="" checked>${categorys.id_categorys}</option>
									<c:forEach var="item" items="${ rolecategory }">

										<option value="${item.id_role}" checked>${item.id_categorys}</option>
									</c:forEach>

								</form:select>


							</div>
							<div class="form-group">
								<label>Loại sản phẩm</label>
								<form:input type="text" path="id_category" class="form-control"
									placeholder="${ categorys.id_category }" />

							</div>
							<div class="form-group">
								<label>Mô tả</label>
								<form:input type="text" class="form-control" path="title"
									placeholder="${ categorys.title }" />

							</div>
							<div class="form-group">

								<button type="submit" class="btn btn-danger btn-lg"
									style="width: 200px">Lưu thay đổi</button>
							</div>



						</form:form>


					</div>
				</div>
			</div>
		</div>
		<%@include
			file="/WEB-INF/views/layouts/admin/hearder-footer/footer.jsp"%>
	</div>
</body>
</html>