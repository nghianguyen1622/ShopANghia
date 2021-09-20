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
				<span class="glyphicon glyphicon-gift addtop" aria-hidden="true"></span>&nbsp;&nbsp;Sản
				phẩm
			</h1>
			<div id="sub-main">
				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-8 col-lg-9">
						<ol class="breadcrumb">
							<li>Hệ thống</li>
							<li class="active">Chi tiết đơn hàng</li>
						</ol>
					</div>
					<div class="hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
						<div class="timecount">
							07:20:47 <small>(12/01/2016)</small>
						</div>
					</div>
				</div>
				<div class="row space-top">
					<div class="col-xs-12 col-sm-5 col-md-7 col-lg-7"></div>
					<div class="col-xs-12 col-sm-7 col-md-5 col-lg-5">
						<div class="input-group text-right">
							<input type="text" class="form-control"
								placeholder="Bạn cần tìm gì?"> <span
								class="input-group-btn">
								<button class="btn btn-danger" type="button">Tìm kiếm</button>
							</span>
						</div>
					</div>
				</div>
				<div class="row space-top box-total">
					<div class="col-xs-12 col-sm-8 col-md-7 col-lg-6">
						<span><i>Tổng số sản phẩm: </i><strong>124</strong> |</span> <span><i>Có
						</i><strong>21</strong> <i>sản phẩm chưa đăng</i></span>
					</div>
				</div>
				<div class="row margin0 space">
					<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 padding0">
						<div class="form-inline">
							<select class="form-control">
								<option>Sự kiện</option>
								<option>Tin tức</option>
								<option>Thông báo</option>
								<option>Liên hệ</option>
							</select>
							<button type="submit" class="btn btn-danger">Lọc</button>
						</div>
					</div>
					<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 padding0">
						<div class="form-inline">
							<select class="form-control">
								<option>Bài đã đăng</option>
								<option>Bài chưa đăng</option>
							</select>
							<button type="submit" class="btn btn-danger">Lọc</button>
						</div>
					</div>
					<div
						class="col-xs-12 col-sm-2 col-md-4 col-lg-6 text-right padding0">
						<div class="btn btn-danger btn-a">
							<a href="#">Xóa tất cả</a>
						</div>
					</div>
				</div>
				<div class="row margin0">
					<div class="table-responsive table-sanpham">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th><input type="checkbox" value="" /></th>
									<th>Mã đơn hàng</th>
									<th>Hình ảnh</th>
									<th>Tên sản phẩm</th>
									<th>Số lượng</th>
									<th>Giá</th>



								</tr>
							</thead>
							<c:forEach var="item" items="${ orderdetail }">
							<tr>
								<td><input type="checkbox" value="" /></td>
								<td>${ item.id_bills }</td>
								<td><img class="img-responsive" style="width: 100px; height: 100px; margin-left: 30%" src="<c:url value="/assets/user/images/sanpham/${item.img}"/>"
									alt="" /></td>
								<td>${ item.name_product }</td>
								<td>${ item.quanty }</td>
								<td>${ item.total }</td>
							</tr>
							</c:forEach>


						</table>
					</div>
					<nav>
						<ul class="pagination">
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<%@include
			file="/WEB-INF/views/layouts/admin/hearder-footer/footer.jsp"%>
	</div>
</body>
</html>