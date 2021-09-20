<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>
<style>
.pagination {
  display: inline-block;
}
.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  border: 1px solid #ddd;
}

.pagination a.active {
  background-color: #f30;
  color: white;
  border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

.pagination a:first-child {
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
}

.pagination a:last-child {
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}
</style>
</head>
<body>

	<section class="bread-crumb margin-bottom-10"></section>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="collections-slider owl-carousel not-dqowl">
					<div class="item">
						<a href="#" class="clearfix" title="Galaxy S10"> <img
							src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/cate_1.jpg?1559638811340"
							alt="Galaxy S10" class="img-responsive center-block" />
						</a>
					</div>
					<div class="item">
						<a href="#" class="clearfix" title="Vivo Y91C"> <img
							src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/cate_2.jpg?1559638811340"
							alt="Vivo Y91C" class="img-responsive center-block" />
						</a>
					</div>
					<div class="item">
						<a href="#" class="clearfix" title="Sắm Nokia Quà bao la"> <img
							src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/cate_3.jpg?1559638811340"
							alt="Sắm Nokia Quà bao la" class="img-responsive center-block" />
						</a>
					</div>
				</div>
				<!-- /.products -->
			</div>
			<section class="main_container collection col-md-12">

				<div class="clearfix"></div>

				<div class="clearfix"></div>
				<div class="category-products products category-products-grids">
					<div
						class="sort-cate clearfix margin-top-10 margin-bottom-10 hidden-sm hidden-xs">
						<div class="sort-cate-left hidden-xs">
							<h3>Xếp theo:</h3>
							<ul>
								<li class="btn-quick-sort alpha-asc"><a href="javascript:;"
									onclick="sortby('alpha-asc')" title="Tên A-Z"><i></i>Tên
										A-Z</a></li>
								<li class="btn-quick-sort alpha-desc"><a
									href="javascript:;" onclick="sortby('alpha-desc')"
									title="Tên Z-A"><i></i>Tên Z-A</a></li>
								<li class="btn-quick-sort position-desc"><a
									href="javascript:;" onclick="sortby('created-desc')"
									title="Hàng mới"><i></i>Hàng mới</a></li>
								<li class="btn-quick-sort price-asc"><a href="javascript:;"
									onclick="sortby('price-asc')" title="Giá thấp đến cao"><i></i>Giá
										thấp đến cao</a></li>
								<li class="btn-quick-sort price-desc"><a
									href="javascript:;" onclick="sortby('price-desc')"
									title="Giá cao xuống thấp"><i></i>Giá cao xuống thấp</a></li>
							</ul>
						</div>
					</div>
					<section class="products-view products-view-grid">

						<c:if test="${ productPaginate.size() > 0 }">
							<div
								class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">

								<c:forEach var="item" items="${ productPaginate }" varStatus="loop">
									<div class="news-item-products">
										<a
											href="<c:url value="/shop/chi-tiet-san-pham/${item.id}" />"
											title="${ item.title }"></a>
										<div class="relative fix-images">
											<img
												data-src="<c:url value="/assets/user/images/sanpham/${item.img}" />"
												src="<c:url value="/assets/user/images/sanpham/${item.img}" />"
												alt="${ item.title }" class="img-responsive center-block" />
											<label class="per">Giảm ${ item.sale }% </label>
										</div>
										<h3>${ item.name }</h3>
										<div class="price">
											<strong>${ item.gia }</strong> <span>${ item.giathitruong }</span>
										</div>
										
										
										
									</div>
									<div class="addtocartad"> <a href="<c:url value="/shop/AddCart/${ item.id }"/>"> Thêm vào giỏ </a> </div>
									
									<c:if test="${ (loop.index +1) % 1 == 0 || (loop.index + 1) == productPaginate.size() }">
							</div>
							<c:if test="${ (loop.index + 1) < productPaginate.size() }">
								<div
									class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							</c:if>
						</c:if>
						</c:forEach>
				</div>

				</c:if>


				<!-- 	<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="sanpham/LaptopAppleMacbookAir2019-i5-(MVFM2SA-A).html"
									title="Samsung Galaxy S10+ (8 + 128GB)"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19070192/db3ca57172753356346f2a388918f21e_acer%20aspire%20a315-54_2019_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19070192/db3ca57172753356346f2a388918f21e_acer%20aspire%20a315-54_2019_1.jpg"
										alt="Samsung Galaxy S10+ (8 + 128GB)"
										class="img-responsive center-block" /> <label class="per">Giảm
										2% </label>
								</div>
								<h3>Laptop Acer Aspire 3 A315-54K-36QU (NX.HEESV.007)</h3>
								<div class="price">
									<strong>9.490.000đ</strong> <span>9.990.000đ</span>
								</div>
							</div>
						</div> -->


				<div class="clearfix"></div>
						<div class="pagination">
					<nav class="text-center">
						<ul class="pagination clearfix">
							<c:forEach var="item" begin="1" end="${ paginateInfo.totalPage }" varStatus="loop">
								<c:if test="${ (loop.index  ) == paginateInfo.currentPage }">
									<li><a class=" page-link active"
										href="<c:url value="/shop/san-pham/${ idCategory }/${ loop.index }" />">${ loop.index }</a></li>
								</c:if>
								<c:if test="${ (loop.index ) != paginateInfo.currentPage }">
									<li><a class=" page-link "
										href="<c:url value="/shop/san-pham/${ idCategory }/${ loop.index }" />">${ loop.index }</a></li>
								</c:if>

							</c:forEach>
						</ul>
					</nav>
				</div>
			</section>
		</div>
		</section>
		<div class="collections_des_and_menu col-md-12 clearfix">
			<a href="macbook.html" class="nav-link ">Macbook</a> <a
				href="dell.html" class="nav-link ">Dell</a> <a href="asus.html"
				class="nav-link ">Asus</a> <a href="hp.html" class="nav-link ">Hp</a>
			<a href="lenovo.html" class="nav-link ">Lenovo</a>
		</div>
		<div class="collections_description col-md-12">
			<h2>TIỆN ÍCH TẠI HỆ THỐNG CỬA HÀNG PHỤ KIỆN A-NGHĨA:</h2>
			“Tận tâm với khách hàng“, PHỤ KIỆN A-NGHĨA luôn nỗ lực mang tới dịch
			vụ và trải nghiệm tốt nhất:<br> – Nhân viên thân thiện, gửi xe &
			Wifi Miễn phí<br> – Hướng dẫn cài đặt & sử dụng ứng dụng, game,…
			Miễn phí<br> – Trải nghiệm trực tiếp, và dùng thử sản phẩm Miễn
			phí.<br> – Tiếp nhận bảo hành chính hãng & Dịch vụ sửa chữa<br>
			– Miễn phí cà thẻ (ngoại trừ AMEX, UnionPay & JCB)<br> – Trả góp
			từ 0% qua thẻ tín dụng quốc tế & công ty tài chính<br> – Thanh
			toán hóa đơn trả góp, điện, nước, internet, nạp tiền điện thoại tiết
			kiệm tới 5%<br> – Giao hàng miễn phí, thanh toán tại nhà trên
			Toàn quốc
		</div>
	</div>
	</div>



</body>
</html>