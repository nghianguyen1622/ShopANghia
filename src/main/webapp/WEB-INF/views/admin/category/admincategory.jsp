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
					aria-hidden="true"></span>&nbsp;&nbsp;Danh mục sản phẩm
			</h1>
			<div id="sub-main">
				<div class="row">
					<div class="col-xs-12 col-sm-7 col-md-8 col-lg-9">
						<ol class="breadcrumb">
							<li>Hệ thống</li>
							<li>Sản phẩm</li>
							<li class="active">Danh mục sản phẩm</li>
						</ol>
					</div>
					<div class="hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
						<div class="timecount">
							07:20:47 <small>(12/01/2016)</small>
						</div>
					</div>
				</div>
				<div class="row space-top">
					<div
						class="col-xs-12 col-sm-12 col-md-4 col-lg-4 option-h4 text-justify">
						<h4>Thêm danh mục</h4>
						<form:form action="danhmuc" modelAttribute="categorys" method="POST">
							<div class="form-group">
								<label>Chọn danh mục cha</label>

								<form:select class="form-control" path="id_categorys">
									<c:forEach var="item" items="${ rolecategory }">
										<option value="${item.id_role}" checked>${item.id_categorys}</option>
									</c:forEach>

								</form:select>

							</div>
							<div class="form-group">
								<label>Loại sản phẩm</label>
								<form:input type="text" path="id_category" class="form-control"
									placeholder="cáp xạc, ốp lưng,..." />

							</div>
							<div class="form-group">
								<label>Mô tả</label>
								<form:input type="text" class="form-control" path="title"
									placeholder="mô tả" />

							</div>
							<div class="form-group">

								<button type="submit" class="btn btn-danger btn-lg"
									style="width: 200px">Thêm danh mục</button>
							</div>


						</form:form>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6"></div>
							<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
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
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<span><i>Có </i><strong>21</strong> <i>danh mục</i></span>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
								<div class="text-right">
									<div class="btn btn-danger btn-a">
										<a href="#">Xóa tất cả</a>
									</div>
								</div>
							</div>
						</div>
						<div class="row margin0">
							<div class="table-responsive">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th><input type="checkbox" value="" /></th>
											<th>Tên danh mục</th>
											<th>Loại sản phẩm</th>
											<!-- <th>Số sản phẩm</th> -->

											<th>Chức năng</th>
										</tr>
									</thead>

									<c:forEach var="item" items="${ admincategory }">

										<tbody>
											<tr>
												<td><input type="checkbox" value="" /></td>
												<td>${ item.id_categorys }</td>
												<td>${ item.id_category }</td>
												<%-- <td>${ productsadmin.size() }</td> --%>
												<td><a href="<c:url value="/editcategory/${item.id}"/>">Sửa
														|</a> <a href="<c:url value="/deletedanhmuc/${item.id}" />"   onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm ${item.id_categorys}  ?');">Xóa</a></td>
											</tr>
											<!-- <tr>
											<td><input type="checkbox" value="" /></td>
											<td>Laptop, PC</td>
											<td>Cáp xạc</td>
											<td>12</td>
											<td><a href="suadm.html">Sửa |</a> <a href="#">Xóa</a></td>
										</tr>
										<tr>
											<td><input type="checkbox" value="" /></td>
											<td>Laptop, PC</td>
											<td>Cáp xạc</td>
											<td>12</td>
											<td><a href="suadm.html">Sửa |</a> <a href="#">Xóa</a></td>
										</tr> -->

										</tbody>

									</c:forEach>


								</table>
							</div>
						</div>
						<p>
							<i> Chú ý: Việc bạn xóa bỏ danh mục không làm ảnh hưởng đến
								các bài viết. Tất cả các bài viết nằm trong danh mục bị xóa hoặc
								chưa có tên trong danh mục sẽ được để mặc định trong danh mục
								tên là "Chưa có". </i>
						</p>
					</div>
				</div>
			</div>
		</div>

		<%@include
			file="/WEB-INF/views/layouts/admin/hearder-footer/footer.jsp"%>
	</div>
</body>
</html>