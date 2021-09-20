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
				<span class="glyphicon glyphicon-pencil addtop" aria-hidden="true"></span>&nbsp;&nbsp;Sản
				phẩm
			</h1>
			<div id="sub-main">
				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-8 col-lg-9">
						<ol class="breadcrumb">
							<li>Hệ thống</li>
							<li>Sản phẩm</li>
							<li class="active">Thêm mới</li>
						</ol>
					</div>
					<div class="hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
						<div class="timecount">
							07:20:47 <small>(12/01/2016)</small>
						</div>
					</div>
				</div>
				<div class="row space-top">
					<div class="col-xs-12 col-sm-12 col-md-8 col-lg-9">
						<div class="panel panel-default">
							<div class="panel-heading">
								<span class="glyphicon glyphicon-pencil addtop"
									aria-hidden="true">&nbsp;</span>Thông tin sản phẩm
							</div>
							<div class="panel-body">
								<c:url value="/updateproduct" var="updateproduct" />
								<form:form action="${ updateproduct }" modelAttribute="producteidt" method="POST">

										<form:input type="hidden" class="texttendm" path="id" placeholder="${ producteidt.id}" />
										<div class="form-group">
											<label>Loại sản phẩm</label>
											<form:select class="form-control" path="id_category">
												<option value="" checked>${producteidt.id_category}</option>
												<c:forEach var="item" items="${ edit }">

													<option value="${item.id}" checked>${item.id_category}</option>
												</c:forEach>

											</form:select>

										</div>
										<div class="form-group">
											<label>Tên sản phẩm</label>
											<form:input type="text" path="name" class="form-control"
												placeholder="${ producteidt.name }" />
										</div>

										<div class="panel panel-default">
											<div class="panel-heading">
												<span class="glyphicon glyphicon-picture" aria-hidden="true">&nbsp;</span>Hình
												ảnh
											</div>
											<div class="panel-body">
												<div class="img-chosse">
													<img id="blah"
														src="<c:url value="/assets/user/images/sanpham/${ producteidt.img }"/>"
														style="width: 200px; height: 200px">
												</div>
												<div class="form-group" style="margin-top: 10px">
													<form:input type="file" path="img"
														onchange="readURL(this);" />
												</div>

											</div>
										</div>


										<div class="form-group">
											<label>Mô tả</label>
											<form:input type="text" path="title" class="form-control"
												placeholder="${ producteidt.title }" />
										</div>
										<div class="form-group">
											<label>Mã sản phẩm</label>
											<form:input type="text" path="masanpham" class="form-control"
												placeholder="${ producteidt.masanpham }" />
										</div>
										<div class="form-group">
											<label>Giá bán</label>
											<div class="input-group">
												<form:input type="text" path="gia" class="form-control"
													placeholder="${ producteidt.gia }" />
												<div class="input-group-addon">.000</div>
											</div>
										</div>
										<div class="form-group">
											<label>Giá bán thị trường</label>
											<div class="input-group">
												<form:input type="text" path="giathitruong"
													class="form-control"
													placeholder="${ producteidt.giathitruong }" />
												<div class="input-group-addon">.000</div>
											</div>
										</div>


										<div class="form-group">
											<label>Khuyến mãi</label>
											<form:input type="text" path="sale" class="form-control"
												placeholder="${ producteidt.sale }" />
										</div>
										<div class="form-group">
											<label>Tình trạng</label>
											<form:input type="text" path="tinhtrang" class="form-control"
												placeholder="${ producteidt.tinhtrang }" />
										</div>
										<div class="form-group">
											<label>Dung lượng</label>
											<form:input type="text" path="dungluong" class="form-control"
												placeholder="${ producteidt.dungluong }" />
										</div>
										<div class="form-group">
											<label>Màu sắc</label>
											<form:input type="text" path="mausac" class="form-control"
												placeholder="${ producteidt.mausac }" />
										</div>
											<div class="form-group">
											<label>Ngày cập nhập</label>
											<form:input type="date" path="update_at" class="form-control"
												placeholder="${ producteidt.update_at }" />
										</div>
									
										<div class="form-group">

											<button type="submit" class="btn btn-danger btn-lg"
												style="width: 200px">Lưu</button>
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
	</script>

</body>
</html>