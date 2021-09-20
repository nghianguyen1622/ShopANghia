<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Trang chủ</title>
<body>

	<section class="awe-section-1">
		<div class="container margin-top-15">
			<div class="row top-sliders">
				<!--  hiển thị dữ liệu slide.-->
				<div class="col-md-8">

					<div id="sync1" class="owl-carousel owl-theme not-dqowl">
						<c:forEach var="item" items="${slides}" varStatus="index">
							<div class="item ">

								<a href="#" class="clearfix" title="${item.title}"> <picture>
									<source media="(max-width: 767px)"
										srcset="https://bizweb.dktcdn.net/thumb/large/100/348/133/themes/709285/assets/slider_1.jpg?1559638811340">
									<img
										data-src="<c:url value="/assets/user/images/slide/${item.img}" />"
										src="<c:url value="/assets/user/images/slide/${item.img}" />"
										alt="Ant Green" class="img-responsive center-block" /> </picture>
								</a>
							</div>
						</c:forEach>
					</div>
					<div id="sync2" class="owl-carousel owl-theme not-dqowl hidden-xs">
						<c:forEach var="item" items="${slides}" varStatus="index">
							<div class="item">${item.caption}</div>
						</c:forEach>
					</div>

				</div>
				<div class="col-md-4 homenews hidden-sm hidden-xs">
					<figure>
						<h2>
							<a href="tin-tuc">Tin công nghệ</a>
						</h2>
					</figure>
					<ul>
						<li class="clearfix"><a
							href="/oppo-trinh-lang-dien-thoai-gap-nhung-se-khong-san-xuat-hang-loat"
							title="HP Envy 13 siêu mỏng nhẹ vừa giảm giá, máy sang còn ưu đãi nhiều"></a>
							<img width="100" height="70"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
							data-lazyload="https://cdn.tgdd.vn/Files/2019/11/12/1217976/hp-envy-13-ad125tu-design-3_800x450-300x200.jpg"
							alt="HP Envy 13 siêu mỏng nhẹ vừa giảm giá, máy sang còn ưu đãi nhiều"
							class="img-responsive center-block" />
							<h3>HP Envy 13 siêu mỏng nhẹ vừa giảm giá, máy sang còn ưu
								đãi nhiều</h3> <span>26/Tháng Hai/2019</span></li>
						<li class="clearfix"><a
							href="/voi-qualcomm-5g-khong-chi-danh-cho-dien-thoai-ma-con-ca-pc"
							title="Với Qualcomm, 5G kh&#244;ng chỉ d&#224;nh cho điện thoại m&#224; c&#242;n cả PC"></a>
							<img width="100" height="70"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
							data-lazyload="https://bizweb.dktcdn.net/thumb/grande/100/348/133/articles/nen-800x450.jpg?v=1551189624743"
							alt="Với Qualcomm, 5G kh&#244;ng chỉ d&#224;nh cho điện thoại m&#224; c&#242;n cả PC"
							class="img-responsive center-block" />
							<h3>Với Qualcomm, 5G kh&#244;ng chỉ d&#224;nh cho điện thoại
								m&#224; c&...</h3> <span>26/Tháng Hai/2019</span></li>
						<li class="clearfix"><a
							href="/galalaxy-s10-ra-mat-tai-viet-nam-gia-tot-hon-du-kien-chi-tu-16-trieu"
							title=" Apple sẽ ra mắt MacBook Pro 16 inch vào ngày mai, giá bán có thể khiến bạn bất ngờ"></a>
							<img width="100" height="70"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
							data-lazyload="https://cdn.tgdd.vn/Files/2019/11/13/1218277/1_800x450-300x200.jpg"
							alt=" Apple sẽ ra mắt MacBook Pro 16 inch vào ngày mai, giá bán có thể khiến bạn bất ngờ"
							class="img-responsive center-block" />
							<h3>Apple sẽ ra mắt MacBook Pro 16 inch vào ngày mai, giá
								bán có thể khiến bạn bất ngờ</h3> <span>26/Tháng Hai/2019</span></li>
					</ul>
					<div class="twobanner">
						<a href="#" title="Ant Mobile"> <img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
							data-lazyload="https://cdn.tgdd.vn/2019/11/banner/390-80-390x80.png"
							alt="Ant Mobile" class="img-responsive center-block" />
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="awe-section-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				
				
				
					<div class="promo-title">
						<a class="promo-title-a" href="sanpham.html"
							title="Giá sốc cuối tuần">Giá sốc cuối tuần</a>
							
							
						<div id="owl-promo"
							class="section-tour-owl2 owl-carousel not-dqowl">
							
							<c:forEach var="item" items="${ products }">
							
							<div class="item">
								<div class="news-item-products">
									<a href="<c:url value="/shop/chi-tiet-san-pham/${item.id}" />"
										title="${ item.title }"></a>
									<div class="relative fix-images">
										<img
											src="<c:url value="/assets/user/images/sanpham/${item.img}" />"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Dell Inspiron 5584-N5I5384W (15' FHD/i5-8265U/4GB/1TB HDD/GeForce MX130/Win10/1.95 kg)"
											class="img-responsive center-block" /> <label class="per">${ item.sale }% </label>
									</div>
									<h3>${ item.name }</h3>
									<div class="price">
										<strong>${ item.gia }</strong> <span>${ item.giathitruong }</span>
									</div>
								</div>
								<div class="addtocartad"> <a href="<c:url value="/shop/AddCart/${ item.id }"/>"> Thêm vào giỏ </a> </div>
								
							</div>
							
							</c:forEach>
							
						</div>
						
					</div>
				
				
				
				</div>
			</div>
		</div>
	</section>

	<section class="awe-section-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section_product clearfix">
						<div class="section-head clearfix">
							<h2 class="title_blog">Sản Phẩm Mới</h2>
						</div>
						<div class="product-blocks clearfix">
							<div
								class="item-border col-md-40 col-sm-4 col-xs-12 no-padding big-item-product">
								<div class="news-item-products">
									<a href="<c:url value="/shop/chi-tiet-san-pham/${productnew.id}" />"
										title="${ productnew.title }"></a>
									<div class="relative">
										<img
											src="<c:url value="/assets/user/images/sanpham/${productnew.img}" />"
											alt="Laptop Apple MacBook Air 2019 MVFH2 (13' QHD/Core i5/8GB/128GB SSD/UHD 617/macOS/1.3 kg)"
											class="img-responsive center-block" /> <label class="per">${ productnew.sale }% </label>
									</div>
									<div class="big-content">
										<h3>${ productnew.name }</h3>
										<div class="price">
											<strong> ${ productnew.gia }đ</strong> <span>${ productnew.giathitruong }đ</span>
										</div>
										<div class="promos hidden-sm">
											<ul>
												<li><label>Mã sản phẩm:</label>${ productnew.masanpham }</li>
												<li><label>Tình trạng:</label>${ productnew.tinhtrang }</li>
												<li><label>Dung lượng:</label>${ productnew.dungluong }</li>
												<li><label>Màu sắc:</label>${ productnew.mausac }</li>
												<!-- <li><label>Lưu trữ:</label>128GB SSD M.2 NVMe /</li>
												<li><label>Hệ điều hành:</label>macOS</li>
												<li><label>50 Wh Pin liền, Khối lượng:</label>1.3 kg</li> -->
											</ul>
										</div>
									</div>
								</div>
							</div>
							<c:forEach var="item" items="${ productallnew }">
							<div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="<c:url value="/shop/chi-tiet-san-pham/${item.id}" />"
										title="${item.title}"></a>
									<div class="relative fix-images">
										<img
											src="<c:url value="/assets/user/images/sanpham/${item.img}" />"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple MacBook Air 2019 MVFL2 (13' QHD/Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)"
											class="img-responsive center-block" /> <label class="per">${item.sale}% </label>
									</div>
									<h3>${item.name}</h3>
									<div class="price">
										<strong>${item.gia}đ</strong> <span>${item.giathitruong}đ</span>
									</div>
								</div>
							</div>
							</c:forEach>
							
							<!-- <div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="/samsung-galaxy-a9-2018"
										title="Laptop Apple Macbook Pro 2017 13.3' MPXR2 (13.3'/Core i5/8GB/Iris Plus 640/macOS/1.3 kg)"></a>
									<div class="relative fix-images">
										<img
											src="https://img.vnshop.vn/height/350/media/catalog/product/uploads/product/p_14474/2017/11/13/14474.png"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple Macbook Pro 2017 13.3' MPXR2 (13.3'/Core i5/8GB/Iris Plus 640/macOS/1.3 kg)"
											class="img-responsive center-block" /> <label class="per">Giảm
											5% </label>
									</div>
									<h3>Laptop Apple Macbook Pro 2017 13.3" MPXR2 (13.3"/Core
										i5/8GB/Iris Plus 640/macOS/1.3 kg)</h3>
									<div class="price">
										<strong>33.300.000đ</strong>
									</div>
								</div>
							</div> -->
							<!-- <div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="/samsung-galaxy-a7-2018"
										title="Laptop Apple MacBook Air 2019 MVFN2 (13' QHD/Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)"></a>
									<div class="relative fix-images">
										<img
											src="https://img.vnshop.vn/height/350/media/catalog/product/m/a/macbook_air_2018_silver_1.jpg"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple MacBook Air 2019 MVFN2 (13' QHD/Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)"
											class="img-responsive center-block" />
									</div>
									<h3>Laptop Apple MacBook Air 2019 MVFN2 (13" QHD/Core
										i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)</h3>
									<div class="price">
										<strong>31.900.000đ</strong>
									</div>
								</div>
							</div>
							<div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="/oppo-a3s-16gb"
										title="Laptop Apple MacBook Air 2019 MVFN2 (13' QHD/Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)"></a>
									<div class="relative fix-images">
										<img
											src="https://img.vnshop.vn/height/350/media/catalog_v2/media/24/92/1565858590.9076781_Macbook_Air_13.3_2019_Gold_1.jpg"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple MacBook Air 2019 MVFN2 (13' QHD/Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)"
											class="img-responsive center-block" /> <label class="per">Giảm
											5% </label>
									</div>
									<h3>Laptop Apple MacBook Air 2019 MVFN2 (13" QHD/Core
										i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)</h3>
									<div class="price">
										<strong>34.990.000đ</strong> <span>36.990.000đ</span>
									</div>
								</div>
							</div>
							<div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="/samsung-galaxy-j8"
										title="Laptop Apple MacBook Air 2019 MVFK2 (13' QHD/Core i5/8GB/128GB SSD/UHD 617/macOS/1.3 kg)"></a>
									<div class="relative fix-images">
										<img
											src="https://img.vnshop.vn/height/350/media/catalog_v2/media/12/39/1565858515.0622213_Macbook_Air_13.3_2019_Silver_1.jpg"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple MacBook Air 2019 MVFK2 (13' QHD/Core i5/8GB/128GB SSD/UHD 617/macOS/1.3 kg)"
											class="img-responsive center-block" /> <label class="per">Giảm
											5% </label>
									</div>
									<h3>Laptop Apple MacBook Air 2019 MVFK2 (13" QHD/Core
										i5/8GB/128GB SSD/UHD 617/macOS/1.3 kg)</h3>
									<div class="price">
										<strong>28.590.000đ</strong> <span>31.990.000đ</span>
									</div>
								</div>
							</div>
							<div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="/samsung-galaxy-s9"
										title="Laptop Apple MacBook Air 2019 MVFM2 (13' QHD/Core i5/8GB/128GB SSD/UHD 617/macOS/1.3 kg)"></a>
									<div class="relative fix-images">
										<img
											src="https://img.vnshop.vn/height/350/media/catalog_v2/media/6/71/1565858549.8730547_Macbook_Air_13.3_2019_Gold_1.jpg"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple MacBook Air 2019 MVFM2 (13' QHD/Core i5/8GB/128GB SSD/UHD 617/macOS/1.3 kg)"
											class="img-responsive center-block" /> <label class="per">Giảm
											5% </label>
									</div>
									<h3>Laptop Apple MacBook Air 2019 MVFM2 (13" QHD/Core
										i5/8GB/128GB SSD/UHD 617/macOS/1.3 kg)</h3>
									<div class="price">
										<strong>28.590.000đ</strong> <span>31.990.000đ</span>
									</div>
								</div>
							</div>
							<div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="/nokia-6-1-plus"
										title="Laptop Apple Macbook Pro 2018 13.3' MR9U2 (13.3'/Core i5/8GB/HD/macOS/1.4 kg)"></a>
									<div class="relative fix-images">
										<img
											src="https://img.vnshop.vn/height/350/media/catalog/product/1/_/1_54_1.jpg"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple Macbook Pro 2018 13.3' MR9U2 (13.3'/Core i5/8GB/HD/macOS/1.4 kg)"
											class="img-responsive center-block" />
									</div>
									<h3>Laptop Apple Macbook Pro 2018 13.3" MR9U2 (13.3"/Core
										i5/8GB/HD/macOS/1.4 kg)</h3>
									<div class="price">
										<strong> 44.390.000đ</strong>
									</div>
								</div>
							</div>
							<div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="/samsung-galaxy-a7-2018-128gb"
										title="Laptop Apple Macbook Pro 2017 13.3' MPXV2 (13.3'/i5-7267U/8GB/Iris Plus 650/macOS/1.4 kg)"></a>
									<div class="relative fix-images">
										<img
											data-src="https://img.vnshop.vn/height/350/media/catalog/product/m/a/may-tinh-xach-tay-laptop-macbook-13.3-mpxv2lla-1.jpg"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple Macbook Pro 2017 13.3' MPXV2 (13.3'/i5-7267U/8GB/Iris Plus 650/macOS/1.4 kg)"
											class="img-responsive center-block" />
									</div>
									<h3>Laptop Apple Macbook Pro 2017 13.3" MPXV2
										(13.3"/i5-7267U/8GB/Iris Plus 650/macOS/1.4 kg)</h3>
									<div class="price">
										<strong> 45.000.000đ</strong>
									</div>
								</div>
							</div> -->
						</div>
						<a href="san-pham-moi" title="Xem tất cả Điện thoại"
							class="hidden-lg hidden-md mobile-viewmore">Xem tất cả Điện
							thoại</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="awe-section-4">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section_product clearfix">
						<div class="section-head clearfix">
							<h2 class="title_blog">Sản Phẩm Bán Chạy</h2>
						</div>
						<div class="product-blocks clearfix">
							<!-- <div
								class="item-border col-md-40 col-sm-4 col-xs-12 no-padding big-item-product">
								<div class="news-item-products">
									<a href="/samsung-galaxy-s10-8-128gb"
										title="Laptop Dell Inspiron 7591-KJ2G41 (15' FHD/i7-9750H/8GB/256GB SSD/GTX 1050/Win10/1.8 kg)"></a>
									<div class="relative">
										<img
											src="https://img.vnshop.vn/height/350/media/catalog_v2/media/78/99/1566625130.154246_Dell_Inspiron_15_7591_1.jpg"
											alt="Laptop Dell Inspiron 7591-KJ2G41 (15' FHD/i7-9750H/8GB/256GB SSD/GTX 1050/Win10/1.8 kg)"
											class="img-responsive center-block" /> <label class="per">Giảm
											5% </label>
									</div>
									<div class="big-content">
										<h3>Laptop Dell Inspiron 7591-KJ2G41 (15"
											FHD/i7-9750H/8GB/256GB SSD/GTX 1050/Win10/1.8 kg)</h3>
										<div class="price">
											<strong>29.390.000đ</strong> <span>29.990.000đ </span>
										</div>
										<div class="promos hidden-sm">
											<ul>
												<li><label>CPU:</label>Intel Core i7-9750H (2.6 GHz -
													4.5 GHz/12MB/6 nhân, 12 luồng)</li>
												<li><label>Màn hình:</label>15.6" (1920 x 1080), không
													cảm ứng</li>
												<li><label>RAM:</label>8 GB</li>
												<li><label>Bộ nhớ trong:</label>1 x 8GB DDR4 2666MHz (2
													Khe cắm, tối đa 32GB)</li>
												<li><label>Đồ họa:</label>Intel UHD Graphics 630/
													NVIDIA GeForce GTX 1050 3GB</li>
												<li><label>Hệ điều hành:</label> Windows 10 Home SL
													64-bit</li>
												<li><label>Pin:</label>3 cell 56 Wh Pin liền, Khối
													lượng: 1.8 kg</li>
											</ul>
										</div>
									</div>
								</div>
							</div> -->
							
							
							<c:forEach var="item" items="${ productbestseller }">
							<div class="item-border col-md-15 col-sm-4 col-xs-6 no-padding">
								<div class="news-item-products">
									<a href="<c:url value="/shop/chi-tiet-san-pham/${item.id}" />"
										title="${item.title}"></a>
									<div class="relative fix-images">
										<img
											src="<c:url value="/assets/user/images/sanpham/${item.img}" />"
											src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
											alt="Laptop Apple MacBook Air 2019 MVFL2 (13' QHD/Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)"
											class="img-responsive center-block" /> <label class="per">${item.sale}% </label>
									</div>
									<h3>${item.name}</h3>
									<div class="price">
										<strong>${item.gia}đ</strong> <span>${item.giathitruong}đ</span>
									</div>
								</div>
							</div>
							</c:forEach>
							
							
							
							
						</div>
						<a href="san-pham-moi" title="Xem tất cả Tablet"
							class="hidden-lg hidden-md mobile-viewmore">Xem tất cả Tablet</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="awe-section-6">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section_blogs">
						<h2>
							<a href="/tin-tuc" title="Video sản phẩm">Video sản phẩm</a>
						</h2>
						<div class="clearfix">
							<div class="col-md-3 col-sm-6 col-xs-12 news-items">
								<a
									href="/oppo-trinh-lang-dien-thoai-gap-nhung-se-khong-san-xuat-hang-loat"
									title="Apple ra mắt MacBook Pro 16 inch: Bàn phím 'Magic Keyboard', 6 loa, chip 8 nhân, giá khởi điểm từ 55.7 triệu đồng"
									class="clearfix"> <img
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
									data-lazyload="https://cdn.tgdd.vn/Files/2019/11/13/1218557/77_800x450-300x200.jpg"
									alt="Apple ra mắt MacBook Pro 16 inch: Bàn phím 'Magic Keyboard', 6 loa, chip 8 nhân, giá khởi điểm từ 55.7 triệu đồng"
									class="img-responsive center-block" />
									<h3>Apple ra mắt MacBook Pro 16 inch: Bàn phím 'Magic
										Keyboard', 6 loa, chip 8 nhân, giá khởi điểm từ 55.7 triệu
										đồng</h3>
									<div class="date_added">Ngày đăng: 26/02/2019</div>
								</a>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12 news-items">
								<a
									href="/voi-qualcomm-5g-khong-chi-danh-cho-dien-thoai-ma-con-ca-pc"
									title=" Apple sẽ ra mắt MacBook Pro 16 inch vào ngày mai, giá bán có thể khiến bạn bất ngờ"
									class="clearfix"> <img
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
									data-lazyload="https://cdn.tgdd.vn/Files/2019/11/13/1218277/macbook-1_1280x720-300x200.jpg"
									alt=" Apple sẽ ra mắt MacBook Pro 16 inch vào ngày mai, giá bán có thể khiến bạn bất ngờ"
									class="img-responsive center-block" />
									<h3>Apple sẽ ra mắt MacBook Pro 16 inch vào ngày mai, giá
										bán có thể khiến bạn bất ngờ</h3>
									<div class="date_added">Ngày đăng: 26/02/2019</div>
								</a>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12 news-items">
								<a
									href="/galalaxy-s10-ra-mat-tai-viet-nam-gia-tot-hon-du-kien-chi-tu-16-trieu"
									title="Tại sao người ta không còn ưa thích các mẫu laptop gaming cồng kềnh?"
									class="clearfix"> <img
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
									data-lazyload="https://cdn.tgdd.vn/Files/2019/11/11/1217748/a%CC%89nhchu%CC%A3pma%CC%80nhi%CC%80nh92_1280x720-300x200.png"
									alt="Tại sao người ta không còn ưa thích các mẫu laptop gaming cồng kềnh?"
									class="img-responsive center-block" />
									<h3>Tại sao người ta không còn ưa thích các mẫu laptop
										gaming cồng kềnh?</h3>
									<div class="date_added">Ngày đăng: 26/02/2019</div>
								</a>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12 news-items">
								<a
									href="/xuat-hien-hinh-anh-render-sac-net-cua-smartphone-oppo-zoom-quang-10x"
									title="Apple chuẩn bị tổ chức họp báo tại New York, Macbook Pro 16 inch sẽ ra mắt tại đây?"
									class="clearfix"> <img
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
									data-lazyload="https://cdn.tgdd.vn/Files/2019/11/12/1218049/mbp_sidebyside-3_800x449-300x200.jpg"
									alt="Apple chuẩn bị tổ chức họp báo tại New York, Macbook Pro 16 inch sẽ ra mắt tại đây?"
									class="img-responsive center-block" />
									<h3>Apple chuẩn bị tổ chức họp báo tại New York, Macbook
										Pro 16 inch sẽ ra mắt tại đây?</h3>
									<div class="date_added">Ngày đăng: 26/02/2019</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>

