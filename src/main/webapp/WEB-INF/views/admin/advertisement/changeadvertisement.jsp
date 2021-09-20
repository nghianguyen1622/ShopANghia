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
				<span class="glyphicon glyphicon-wrench addtop" aria-hidden="true"></span>&nbsp;&nbsp;Tùy
				chỉnh
			</h1>
			<div id="sub-main">
				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-8 col-lg-9">
						<ol class="breadcrumb">
							<li>Hệ thống</li>
							<li class="active">Thay đổi quảng cáo</li>
						</ol>
					</div>
					<div class="hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
						<div class="timecount">
							07:20:47 <small>(12/01/2016)</small>
						</div>
					</div>
				</div>
				<div class="row space-top">



					<div class="clr"></div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<span class="glyphicon glyphicon-star" aria-hidden="true">&nbsp;</span>Slide
								qoảng cáo
							</div>
							<div class="panel-body">
								<c:url value="/changeadvertisement" var="change" />
								<form:form action="${change}"	modelAttribute="slides" method="POST">
									<div class="form-group">
										<label>Nội dung</label>
										<form:input type="hidden" path="id" class="form-control"
											placeholder="${slides.id}" />
										<form:input type="text" path="caption" class="form-control"
											placeholder="${slides.caption}" />
										<form:input type="text" path="title" class="form-control"
											placeholder="${slides.title}" />
										<div class="panel-body">
											<div class="img-chosse">
												<img id="blah"
													src="<c:url value="/assets/user/images/slide/${slides.img}"/>"
													style="width: 355px; height: 150px">
											</div>
											<div class="form-group" style="margin-top: 10px">
												<form:input type="file" path="img" onchange="readURL(this);" />
											</div>

										</div>
									</div>
									<!-- 	<div class="form-group">
										<label>Ảnh 2</label> <input type="text" class="form-control"
											placeholder="Tiêu đề slide"> 
											<input type="text"
											class="form-control" placeholder="Nội dung slide">
										<div class="panel-body">
											<div class="img-chosse">
												<img id="blah1" src="images/"
													style="width: 200px; height: 200px">
											</div>
											<div class="form-group" style="margin-top: 10px">
												<input type="file" onchange="readURL1(this);">
											</div>

										</div>
									</div> -->
									<!-- <div class="form-group">
										<label>Ảnh 3</label> <input type="text" class="form-control"
											placeholder="Tiêu đề slide"> <input type="text"
											class="form-control" placeholder="Nội dung slide">
										<div class="panel-body">
											<div class="img-chosse">
												<img id="blah2" src="images/"
													style="width: 200px; height: 200px">
											</div>
											<div class="form-group" style="margin-top: 10px">
												<input type="file" onchange="readURL2(this);">
											</div>

										</div>
									</div> -->
									<!-- 	<div class="form-group">
										<label>Ảnh 4</label> <input type="text" class="form-control"
											placeholder="Tiêu đề slide"> <input type="text"
											class="form-control" placeholder="Nội dung slide">
										<div class="panel-body">
											<div class="img-chosse">
												<img id="blah3" src="images/"
													style="width: 200px; height: 200px">
											</div>
											<div class="form-group" style="margin-top: 10px">
												<input type="file" onchange="readURL3(this);">
											</div>

										</div>
									</div> -->
									<div class=" panel-footer">
										<div class="text-right">
											<div class="btn btn-danger btn-a">
												<button type="submit" class="btn btn-danger btn-lg"
													style="width: 200px">Lưu</button>
											</div>
										</div>
									</div>


								</form:form>
							</div>

						</div>
					</div>


				</div>
			</div>
		</div>
		<%@include
			file="/WEB-INF/views/layouts/admin/hearder-footer/footer.jsp"%>
	</div>
	<script>
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#blah + img').remove();
					$('#blah').attr('src', e.target.result);

				};
				reader.readAsDataURL(input.files[0]);
			}

		}
		function readURL1(input1) {
			if (input1.files && input1.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#blah1 + img').remove();
					$('#blah1').attr('src', e.target.result);

				};
				reader.readAsDataURL(input1.files[0]);
			}

		}
		function readURL2(input2) {
			if (input2.files && input2.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#blah2 + img').remove();
					$('#blah2').attr('src', e.target.result);

				};
				reader.readAsDataURL(input2.files[0]);
			}

		}
		function readURL3(input3) {
			if (input3.files && input3.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#blah3 + img').remove();
					$('#blah3').attr('src', e.target.result);

				};
				reader.readAsDataURL(input3.files[0]);
			}

		}
	</script>

</body>
</html>