<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<title>Giỏ hàng</title>
</head>
<body>
	<section class="bread-crumb margin-bottom-10" style="background: white;">
		<div class="container">
			<div class="row">
				<div id="layout-page" class="col-md-12 col-sm-12 col-xs-12">
					<span class="header-page clearfix">
						<h3 style="float: left; clear: right;">Giỏ hàng</h3>
						<p style="float: left; margin-left: 60%;color: #f30;font-weight: bold">Có ${ TotalQuantyCart }</p>
						&nbsp;sản phẩm trong giỏ hàng của bạn
						</p> </span>
						<form action="/cart" method="post" id="cartformpage">
							<table>
								<thead>
									<tr>
										<th class="image text-center">Hình ảnh</th>
										<th class="item text-center">Tên sản phẩm</th>
										<th class="qty text-center">Số lượng</th>
										<th class="price text-center">Giá tiền</th>

										<th class="edit text-center">Thay đổi</th>
										<th class="remove text-center">Xóa</th>
									</tr>
								</thead>
								<tbody>




									<c:forEach var="item" items="${ Cart }">

										<tr style="background: white;">
											<td class="image ">
												<div class="product_image "
													style="width: 150px; height: 150px; margin-left: 25%">
													<a
														href="<c:url value="/shop/chi-tiet-san-pham/${item.value.product.id}" />">
														<img
														src="<c:url value="/assets/user/images/sanpham/${ item.value.product.img }" />"
														alt="" />

													</a>
												</div>
											</td>
											<td class="item"><a
												href="<c:url value="/shop/chi-tiet-san-pham/${item.value.product.id}" />">
													<strong> ${ item.value.product.name }</strong>

											</a></td>
											<td class="qty"><input type="number"
												style="margin-left: 30%" size="4" name="updates[]" min="0"
												max="10" id="quanty-cart-${ item.key }"
												value="${ item.value.quanty }" onfocus="this.select();"
												class="tc item-quantity" /></td>
											<td class="price">${ item.value.totalPrice  }₫</td>
											<td class="edit">
												<button  data-id="${ item.key }"
													type="button" class="btn-xoasp edit-cart"
													style="border: hidden; margin-left: 40%; background: white;">
													<i class="fa fa-random" style="color: #2bf525"
														aria-hidden="true"></i>
												</button>
											</td>
											<td class="remove"><a
												href="<c:url value="/shop/DeleteCart/${ item.key } "></c:url>"
												class="btn-xoasp" style="border: hidden; margin-left: 20%">
													<i class="fa fa-trash" style="color: #f30"
													aria-hidden="true"></i>
											</a></td>
										</tr>


									</c:forEach>
									<tr class="summary">
										<td class="image">&nbsp;</td>
										<td>&nbsp;</td>
										<td class="text-center"><b>Tổng cộng:</b></td>
										<td class="price"><span class="total"> <strong
												style="color: #f30">${ TotalPriceCart }₫</strong>
										</span></td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>






									<!-- 
								<tr>
									<td class="image">
										<div class="product_image">
											<a href="/products/dong-ho-nam-tevise-1952-chay-co-cuc-chat">
												<img
												src="./product.hstatic.net/1000177652/product/7_0590d26379fb4da3ba8d9b57564ee6b0_small.jpg "
												alt="" />

											</a>
										</div>
									</td>
									<td class="item"><a
										href="/products/dong-ho-nam-tevise-1952-chay-co-cuc-chat">
											<strong>Laptop Apple MacBook Air 2018 i5/8GB/128GB
												(MRE82SA/A)</strong>

									</a></td>
									<td class="qty"><input type="number" size="4"
										name="updates[]" min="1" id="updates_1012006173" value="3"
										onfocus="this.select();" class="tc item-quantity" /></td>
									<td class="price">2,400,000₫</td>
									<td class="remove"><a
										href="/cart/change?line=2&quantity=0" class="cart">Xóa</a></td>
								</tr> -->


								</tbody>
							</table>
							<div class="row">
								<div class="col-md-6 col-sm-6 col-xs-12 inner-left inner-right">
									<div class="checkout-buttons clearfix">
										<label for="note">Ghi chú </label>
										<textarea id="note" name="note" rows="8" cols="50"></textarea>
									</div>
								</div>
								<div
									class="col-md-6 col-sm-6 col-xs-12 cart-buttons inner-right inner-left">
									<div class="buttons clearfix nutthanhtoan">
										<a href="#" type="submit" id="update-cart"
											class="button-default bd1">Cập nhật</a> 
											
											<c:if test="${not  empty Cart }">
											<a href="<c:url value="/shop/checkout" />" type="submit" id="checkout"
											class="button-default bd2">Thanh toán</a>
											</c:if>

									</div>
								</div>
								<div class="col-md-12 col-sm-12  col-xs-12 continue-shop">

									<a href="#"> <i class="fa fa-reply"></i> Tiếp
										tục mua hàng
									</a>
								</div>

							</div>
						</form>
				</div>
			</div>
		</div>
	</section>

	<link href="css/bpr-products-module.scss.css" rel="stylesheet"
		type="text/css" />
	<div class="bizweb-product-reviews-module"></div>

	<!-- Xử lý Giỏ hàng -->

	<content tag="script"> 
	
	
	<script type="text/javascript">
		$(".edit-cart").on("click", function () {
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-" + id).val();
			window.location = "EditCart/" + id + "/" + quanty;
			
		} )
	</script> 
	
	</content>












</body>
