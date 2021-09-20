<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-default">
	<ul class="nav navbar-nav navbar-right">
		<li class="active-child"><a href="#">xin chào!</a></li>
		<li class="dropdown active"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown" role="button" aria-haspopup="true"
			aria-expanded="false">${LoginInfo.name}<span
				class="caret caret-fix"></span></a>
			<ul class="dropdown-menu">
				<li><a href="homthu.html"><span
						class="glyphicon glyphicon-envelope" aria-hidden="true">&nbsp;</span>Hòm
						thư</a></li>
				<li><a href="doimatkhau.html"><span
						class="glyphicon glyphicon-wrench" aria-hidden="true">&nbsp;</span>Đổi
						mật khẩu</a></li>
				<li role="separator" class="divider"></li>
				<li><a href="<c:url value="/shop/thoat" />"><span
						class="glyphicon glyphicon-off" aria-hidden="true">&nbsp;</span>Thoát</a></li>
			</ul></li>
	</ul>
</nav>