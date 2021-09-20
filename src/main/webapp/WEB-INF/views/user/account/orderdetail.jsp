<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>Chi tiết đơn hàng</title>
</head>
<body>
	<section class="bread-crumb margin-bottom-10" style="background: white;">
		<div class="container">
			<div class="row">
				<div id="layout-page" class="col-md-12 col-sm-12 col-xs-12">
					<span class="header-page clearfix">
						<h3>Chi tiết đơn hàng</h3>
					</span>
					<form action="/cart" method="post" id="cartformpage">
						<table>
							<thead>
								<tr>
									<th class="item">Mã đơn hàng</th>
									<th class="item">Tên sản phẩm</th>
									<th class="item">Hình ảnh</th>
									<th class="item">Số lượng</th>
									<th class="item">Giá tiền</th>


								</tr>
							</thead>
							<tbody>

								<c:forEach var="item" items="${ orderdetail }">

									<tr>
										<td class="item" style="text-align: center">${ item.id_bills }</td>
										<td class="item">${ item.name_product }</td>
										<td class="item"><a
											href="<c:url value="/shop/chi-tiet-san-pham/${item.id_product}" />"> <img
												style="width: 120px; height: 120px; margin-left: 25%"
												src="<c:url value="/assets/user/images/sanpham/${item.img}" /> "
												alt="" /></a></td>
										<td class="item" style="text-align: center">${ item.quanty }</td>
										<td class="item">${ item.total }</td>
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
