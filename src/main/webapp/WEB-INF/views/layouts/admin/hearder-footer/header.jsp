<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<div class="nav-side-menu">
		<div class="brand">
			<a href="#"><img class="img-responsive margin0auto"
				src="images/logo.png" alt="" /></a>
		</div>
		<div class="toggle-btn" data-toggle="collapse"
			data-target="#menu-content"></div>
		<div class="menu-list">
			<ul id="menu-content" class="menu-content collapse">
				<li class="active"><a href="<c:url value="/quantri" />"><span
						class="glyphicon glyphicon-globe" aria-hidden="true">&nbsp;</span>Tổng
						quan</a></li>
				
				<li><a href="<c:url value="/advertisement" />"><span
						class="glyphicon glyphicon-pencil" aria-hidden="true">&nbsp;</span>Quảng cáo</a></li>
				
				<li><a href="<c:url value="/order" />"><span
						class="glyphicon glyphicon-heart" aria-hidden="true">&nbsp;</span>Đơn hàng</a></li>
				
				<li data-toggle="collapse" data-target="#product" class="collapsed">
					<a href="#"><span class="glyphicon glyphicon-gift"
						aria-hidden="true">&nbsp;</span>Sản phẩm<span class="caret"></span></a>
				</li>
				<ul class="sub-menu collapse" id="product">
					<li><a href="<c:url value="/adminproduct" />"><span
							class="glyphicon glyphicon-paperclip" aria-hidden="true">&nbsp;</span>Tất
							cả sản phẩm</a></li>
					<li><a href="<c:url value="/danhmuc" />"><span
							class="glyphicon glyphicon-folder-open" aria-hidden="true">&nbsp;</span>Danh
							mục sản phẩm</a></li>
				</ul>

				<li><a href="<c:url value="/account" />"><span
						class="glyphicon glyphicon-heart" aria-hidden="true">&nbsp;</span>Khách
						hàng</a></li>
				<li><a href="quantri.html"><span
						class="glyphicon glyphicon-user" aria-hidden="true">&nbsp;</span>Quản
						trị viên</a></li>
				<li><a href="tuychinh.html"><span
						class="glyphicon glyphicon-wrench" aria-hidden="true">&nbsp;</span>Tùy
						chỉnh website</a></li>
			</ul>
		</div>
	</div>
</header>