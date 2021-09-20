<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<title>Đơn hàng của tôi</title>
</head>
<body>
	<section class="bread-crumb margin-bottom-10" style="background: white;">
		<div class="container" style="background: white;">
			<div class="row">
				<div id="layout-page" class="col-md-12 col-sm-12 col-xs-12">
					<span class="header-page clearfix">
						<h3>Đơn hàng của tôi</h3>
					</span>
					<form action="/cart" method="post" id="cartformpage">
						<table>
							<thead>
								<tr>
									<th class="item">Mã đơn hàng</th>
									<th class="item">Số điện thoại</th>
									<th class="item">Tên người nhận</th>
									<th class="item">Số lượng</th>
									<th class="item">Giá tiền</th>
									<th class="item">Ngày mua</th>
									<th class="item">Tình trạng</th>

								</tr>
							</thead>
							<tbody>

								<c:forEach var="item" items="${ orders }">

									<tr>
										<td class="item"><a href="<c:url value="/shop/orderdetail/${item.id}" />">${ item.id }</a></td>
										<td class="item">${ item.phone }</td>
										<td class="item">${ item.name }</td>
										<td class="item">${ item.quanty }</td>
										<td class="item">${ item.total }</td>
										<td class="item">${ item.date }</td>
										<td class="item">${ item.active }</td>





									</tr>

								</c:forEach>




							</tbody>
						</table>

					</form>
				</div>
			</div>
		</div>
	</section>
</body>
