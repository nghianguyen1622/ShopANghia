<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Tìm kiếm</title>
</head>

<body>


	<section class="bread-crumb margin-bottom-10">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<ul class="breadcrumb" itemscope
						itemtype="http://data-vocabulary.org/Breadcrumb">
						<li class="home"><a itemprop="url" href="index.html"
							title="Trang chủ"><span itemprop="title">Trang chủ</span></a><span><i
								class="fa fa-angle-right"></i></span></li>
						<li><strong><span itemprop="title">Tất cả sản
									phẩm</span></strong></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
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
				<h1 class="title-collections">Tất cả sản phẩm</h1>
				<div class="filter-mobile-tittle hidden-lg hidden-md">Tìm theo
				</div>
				<div class="clearfix"></div>
				<aside class="ant-sidebar sidebar">
					<div class="aside-filter clearfix">
						<div class="heading hidden-sm hidden-xs">Tìm theo:</div>
						<div class="aside-hidden-mobile">
							<div class="filter-container">
								<aside class="aside-item filter-vendor">
									<div class="aside-title">Thương hiệu</div>
									<div class="aside-content filter-group">
										<ul class="filter-vendor">
											<li
												class="filter-item filter-item--check-box filter-item--green ">
												<label data-filter="apple" for="filter-apple" class="apple">
													<input type="checkbox" id="filter-apple"
													onchange="toggleFilter(this)" data-group="Hãng"
													data-field="vendor.filter_key" data-text="Apple"
													value="(&#34;Apple&#34;)" data-operator="OR"> <i
													class="fa"></i> Apple
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green ">
												<label data-filter="asus" for="filter-asus" class="asus">
													<input type="checkbox" id="filter-asus"
													onchange="toggleFilter(this)" data-group="Hãng"
													data-field="vendor.filter_key" data-text="Asus"
													value="(&#34;Asus&#34;)" data-operator="OR"> <i
													class="fa"></i> Asus
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green ">
												<label data-filter="hp" for="filter-hp" class="hp">
													<input type="checkbox" id="filter-hp"
													onchange="toggleFilter(this)" data-group="Hãng"
													data-field="vendor.filter_key" data-text="HP"
													value="(&#34;HP&#34;)" data-operator="OR"> <i
													class="fa"></i> HP
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green ">
												<label data-filter="huawei" for="filter-huawei"
												class="huawei"> <input type="checkbox"
													id="filter-huawei" onchange="toggleFilter(this)"
													data-group="Hãng" data-field="vendor.filter_key"
													data-text="Huawei" value="(&#34;Huawei&#34;)"
													data-operator="OR"> <i class="fa"></i> Huawei
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green ">
												<label data-filter="nokia" for="filter-nokia" class="nokia">
													<input type="checkbox" id="filter-nokia"
													onchange="toggleFilter(this)" data-group="Hãng"
													data-field="vendor.filter_key" data-text="Nokia"
													value="(&#34;Nokia&#34;)" data-operator="OR"> <i
													class="fa"></i> Nokia
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green ">
												<label data-filter="oppo" for="filter-oppo" class="oppo">
													<input type="checkbox" id="filter-oppo"
													onchange="toggleFilter(this)" data-group="Hãng"
													data-field="vendor.filter_key" data-text="Oppo"
													value="(&#34;Oppo&#34;)" data-operator="OR"> <i
													class="fa"></i> Oppo
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green ">
												<label data-filter="samsung" for="filter-samsung"
												class="samsung"> <input type="checkbox"
													id="filter-samsung" onchange="toggleFilter(this)"
													data-group="Hãng" data-field="vendor.filter_key"
													data-text="Samsung" value="(&#34;Samsung&#34;)"
													data-operator="OR"> <i class="fa"></i> Samsung
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green ">
												<label data-filter="xiaomi" for="filter-xiaomi"
												class="xiaomi"> <input type="checkbox"
													id="filter-xiaomi" onchange="toggleFilter(this)"
													data-group="Hãng" data-field="vendor.filter_key"
													data-text="Xiaomi" value="(&#34;Xiaomi&#34;)"
													data-operator="OR"> <i class="fa"></i> Xiaomi
											</label>
											</li>
										</ul>
									</div>
								</aside>
								<aside class="aside-item filter-price">
									<div class="aside-title">Giá sản phẩm</div>
									<div class="aside-content filter-group">
										<ul>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-duoi-100-000d"> <input
														type="checkbox" id="filter-duoi-100-000d"
														onchange="toggleFilter(this);" data-group="Khoảng giá"
														data-field="price_min" data-text="Dưới 100.000đ"
														value="(<100000)" data-operator="OR"> <i
														class="fa"></i> Giá dưới 100.000đ
												</label>
											</span>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-100-000d-200-000d">
														<input type="checkbox" id="filter-100-000d-200-000d"
														onchange="toggleFilter(this)" data-group="Khoảng giá"
														data-field="price_min" data-text="100.000đ - 200.000đ"
														value="(>100000 AND <200000)" data-operator="OR">
														<i class="fa"></i> 100.000đ - 200.000đ
												</label>
											</span>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-200-000d-300-000d">
														<input type="checkbox" id="filter-200-000d-300-000d"
														onchange="toggleFilter(this)" data-group="Khoảng giá"
														data-field="price_min" data-text="200.000đ - 300.000đ"
														value="(>200000 AND <300000)" data-operator="OR">
														<i class="fa"></i> 200.000đ - 300.000đ
												</label>
											</span>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-300-000d-500-000d">
														<input type="checkbox" id="filter-300-000d-500-000d"
														onchange="toggleFilter(this)" data-group="Khoảng giá"
														data-field="price_min" data-text="300.000đ - 500.000đ"
														value="(>300000 AND <500000)" data-operator="OR">
														<i class="fa"></i> 300.000đ - 500.000đ
												</label>
											</span>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-500-000d-1-000-000d">
														<input type="checkbox" id="filter-500-000d-1-000-000d"
														onchange="toggleFilter(this)" data-group="Khoảng giá"
														data-field="price_min" data-text="500.000đ - 1.000.000đ"
														value="(>500000 AND <1000000)" data-operator="OR">
														<i class="fa"></i> 500.000đ - 1.000.000đ
												</label>
											</span>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-tren1-000-000d"> <input
														type="checkbox" id="filter-tren1-000-000d"
														onchange="toggleFilter(this)" data-group="Khoảng giá"
														data-field="price_min" data-text="Trên 1.000.000đ"
														value="(>1000000)" data-operator="OR"> <i
														class="fa"></i> Giá trên 1.000.000đ
												</label>
											</span>
											</li>
										</ul>
									</div>
								</aside>
								<aside class="aside-item filter-type">
									<div class="aside-title">Loại</div>
									<div class="aside-content filter-group">
										<ul class="filter-type">
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<label data-filter="điện thoại" for="filter-dien-thoai">
													<input type="checkbox" id="filter-dien-thoai"
													onchange="toggleFilter(this)" data-group="Loại"
													data-field="product_type.filter_key" data-text="Điện thoại"
													value="(&#34;Điện thoại&#34;)" data-operator="OR">
													<i class="fa"></i> Điện thoại
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<label data-filter="galaxy" for="filter-galaxy"> <input
													type="checkbox" id="filter-galaxy"
													onchange="toggleFilter(this)" data-group="Loại"
													data-field="product_type.filter_key" data-text="Galaxy"
													value="(&#34;Galaxy&#34;)" data-operator="OR"> <i
													class="fa"></i> Galaxy
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<label data-filter="ipad" for="filter-ipad"> <input
													type="checkbox" id="filter-ipad"
													onchange="toggleFilter(this)" data-group="Loại"
													data-field="product_type.filter_key" data-text="iPad"
													value="(&#34;iPad&#34;)" data-operator="OR"> <i
													class="fa"></i> iPad
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<label data-filter="iphone" for="filter-iphone"> <input
													type="checkbox" id="filter-iphone"
													onchange="toggleFilter(this)" data-group="Loại"
													data-field="product_type.filter_key" data-text="iPhone"
													value="(&#34;iPhone&#34;)" data-operator="OR"> <i
													class="fa"></i> iPhone
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<label data-filter="laptop" for="filter-laptop"> <input
													type="checkbox" id="filter-laptop"
													onchange="toggleFilter(this)" data-group="Loại"
													data-field="product_type.filter_key" data-text="Laptop"
													value="(&#34;Laptop&#34;)" data-operator="OR"> <i
													class="fa"></i> Laptop
											</label>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<label data-filter="máy tính bảng"
												for="filter-may-tinh-bang"> <input type="checkbox"
													id="filter-may-tinh-bang" onchange="toggleFilter(this)"
													data-group="Loại" data-field="product_type.filter_key"
													data-text="Máy tính bảng" value="(&#34;Máy tính bảng&#34;)"
													data-operator="OR"> <i class="fa"></i> Máy tính
													bảng
											</label>
											</li>
										</ul>
									</div>
								</aside>
								<aside class="aside-item filter-tag-style-1 tag-filtster">
									<div class="aside-title">Kích thước</div>
									<div class="aside-content filter-group">
										<ul>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-lon"> <input
														type="checkbox" id="filter-lon"
														onchange="toggleFilter(this)" data-group="tag2"
														data-field="tags" data-text="Lớn" value="(Lớn)"
														data-operator="OR"> <i class="fa"></i> Lớn
												</label>
											</span>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-nho"> <input
														type="checkbox" id="filter-nho"
														onchange="toggleFilter(this)" data-group="tag2"
														data-field="tags" data-text="Nhỏ" value="(Nhỏ)"
														data-operator="OR"> <i class="fa"></i> Nhỏ
												</label>
											</span>
											</li>
											<li
												class="filter-item filter-item--check-box filter-item--green">
												<span> <label for="filter-vua"> <input
														type="checkbox" id="filter-vua"
														onchange="toggleFilter(this)" data-group="tag2"
														data-field="tags" data-text="Vừa" value="(Vừa)"
														data-operator="OR"> <i class="fa"></i> Vừa
												</label>
											</span>
											</li>
										</ul>
									</div>
								</aside>
								<div class="clearfix"></div>
								<div class="filter-containers">
									<div class="filter-container__selected-filter"
										style="display: none;">
										<div class="filter-container__selected-filter-list clearfix">
											<ul>
											</ul>
											<a href="javascript:void(0)" onclick="clearAllFiltered()"
												class="filter-container__clear-all" title="Bỏ hết">Bỏ
												hết</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</aside>
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
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="sanpham/LaptopDellInspiron5584-N5I5384W.html"
									title="Vivo V15 6GB-128GB"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19060263/fe0bacaca11de4c9cfd3602b82e457c9_dell%20inspiron%2015%205584_silver_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19060263/fe0bacaca11de4c9cfd3602b82e457c9_dell%20inspiron%2015%205584_silver_1.jpg"
										alt="Vivo V15 6GB-128GB" class="img-responsive center-block" />
								</div>
								<h3>Laptop Dell Inspiron 5584-N5I5384W</h3>
								<div class="price">
									<strong>17.000.000₫</strong>
								</div>
							</div>
						</div>
						<div
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
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="sanpham/LaptopDellInspiron5584-N5I5384W.html"
									title="Xiaomi Mi 8 64GB"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog_v2/media/36/54/1566360015.2485907_Asus_Zenbook_UX333_Silver_NoNumpad_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog_v2/media/36/54/1566360015.2485907_Asus_Zenbook_UX333_Silver_NoNumpad_1.jpg"
										alt="Xiaomi Mi 8 64GB" class="img-responsive center-block" />
								</div>
								<h3>Laptop ASUS ZenBook 13 UX333FA-A4046T</h3>
								<div class="price">
									<strong>22.990.000đ</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/huawei-y7-pro-2019" title="Huawei Y7 Pro (2019)"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/1808443/9a77d4c433985a879686af9f9cdfb273_acer%20swift%203%20sf315-52_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/1808443/9a77d4c433985a879686af9f9cdfb273_acer%20swift%203%20sf315-52_1.jpg"
										alt="Huawei Y7 Pro (2019)" class="img-responsive center-block" />
								</div>
								<h3>Laptop Acer Swift 3 SF315-52-52Z7 (NX.GZBSV.004)</h3>
								<div class="price">
									<strong>14.990.000đ</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/huawei-mate-20-pro" title="Huawei Mate 20 Pro"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19060173/379da9be45d00d504fe5590d2d1b7e80_dell%20inspiron%2014%203480_silver_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19060173/379da9be45d00d504fe5590d2d1b7e80_dell%20inspiron%2014%203480_silver_1.jpg"
										alt="Huawei Mate 20 Pro" class="img-responsive center-block" />
								</div>
								<h3>Laptop Dell Inspiron 3480-NT4X01</h3>
								<div class="price">
									<strong>11.690.000đ</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/samsung-galaxy-j6" title="Samsung Galaxy J6+"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19030313/8b8fea358528fd0de22d56b89cd55452_hp%20probook%20440%20g6_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19030313/8b8fea358528fd0de22d56b89cd55452_hp%20probook%20440%20g6_1.jpg"
										alt="Samsung Galaxy J6+" class="img-responsive center-block" />
								</div>
								<h3>Laptop HP ProBook 440 G6 (5YM63PA)</h3>
								<div class="price">
									<strong>12.390.000đ</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/samsung-galaxy-s9-plus-red-64gb"
									title="Samsung Galaxy S9 Plus Red 64GB"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog_v2/media/37/88/1573643892.596421_2.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog_v2/media/37/88/1573643892.596421_2.jpg"
										alt="Samsung Galaxy S9 Plus Red 64GB"
										class="img-responsive center-block" />
								</div>
								<h3>Laptop Acer Aspire 5 A515-54-54EU (NX.HN3SV.002)</h3>
								<div class="price">
									<strong>13.990.000đ</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/samsung-galaxy-s10e" title="Samsung Galaxy S10e"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/1807404/41014c3030332d180ea073e14f8d8771_acer%20aspire%207%20a7_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/1807404/41014c3030332d180ea073e14f8d8771_acer%20aspire%207%20a7_1.jpg"
										alt="Samsung Galaxy S10e" class="img-responsive center-block" />
									<label class="per">Giảm 6% </label>
								</div>
								<h3>Laptop Acer Aspire 7 A715-72G-50NA (NH.GXBSV.001)</h3>
								<div class="price">
									<strong>15.990.000₫</strong> <span>17.000.000₫</span>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/iphone-xr-64gb" title="iPhone XR 64GB"></a>
								<div class="relative fix-images">
									<img
										data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636748797174925889-iphone-xr-den.png?v=1551711217433"
										src=https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636748797174925889-iphone-xr-den.png?v=1551711217433
										"  alt="iPhone XR 64GB" class="img-responsive center-block" />
								</div>
								<h3>iPhone XR 64GB</h3>
								<div class="price">
									<strong>20.990.000₫</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/iphone-xs-max-512gb" title="iPhone Xs Max 512GB"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog_v2/media/78/70/1573643189.2300682_6.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog_v2/media/78/70/1573643189.2300682_6.jpg"
										alt="iPhone Xs Max 512GB" class="img-responsive center-block" />
								</div>
								<h3>Laptop HP Pavilion 14-ce2036TU (6YZ19PA)</h3>
								<div class="price">
									<strong>10.690.000đ</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/iphone-xs-max-256gb" title="iPhone Xs Max 256GB"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog_v2/media/54/94/1573643964.0610394_3.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog_v2/media/54/94/1573643964.0610394_3.jpg"
										alt="iPhone Xs Max 256GB" class="img-responsive center-block" />
								</div>
								<h3>Laptop Acer Aspire 5 A514-52-33AB (NX.HMHSV.001)</h3>
								<div class="price">
									<strong>10.390.000đ</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/huawei-nova-3i" title="Huawei Nova 3i"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19060194/9b882a908d467ab10e6b66e1a8390399_hp%20pavilion%2015-cs2000%20series-%20gold_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19060194/9b882a908d467ab10e6b66e1a8390399_hp%20pavilion%2015-cs2000%20series-%20gold_1.jpg"
										alt="Huawei Nova 3i" class="img-responsive center-block" />
								</div>
								<h3>Laptop HP Pavilion 15-cs2056TX (6YZ11PA)</h3>
								<div class="price">
									<strong>15.249.000đ</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/samsung-galaxy-m20" title="Samsung Galaxy M20"></a>
								<div class="relative fix-images">
									<img
										data-src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19070001/6aafb897dee6565fc328b27e12cc2bcd_dell%20inspiron%203567_1.jpg"
										src="https://img.vnshop.vn/height/350/media/catalog/product/storage/laptop/19070001/6aafb897dee6565fc328b27e12cc2bcd_dell%20inspiron%203567_1.jpg"
										alt="Samsung Galaxy M20" class="img-responsive center-block" />
									<label class="per">Giảm 8% </label>
								</div>
								<h3>Laptop Dell Inspiron 3567-N3567U</h3>
								<div class="price">
									<strong>9.490.000đ</strong> <span>9.890.000đ</span>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/macbook-pro-15-touch-bar-512-gb-2018"
									title="Macbook Pro 15 Touch Bar 512 GB (2018)"></a>
								<div class="relative fix-images">
									<img
										data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636699431899480051-macbookpro-13-15-1.png?v=1551597742720"
										src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636699431899480051-macbookpro-13-15-1.png?v=1551597742720"
										alt="Macbook Pro 15 Touch Bar 512 GB (2018)"
										class="img-responsive center-block" /> <label class="per">Giảm
										8% </label>
								</div>
								<h3>Macbook Pro 15 Touch Bar 512 GB (2018)</h3>
								<div class="price">
									<strong>69.900.000₫</strong> <span>75.990.000₫</span>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/macbook-pro-13-touch-bar-256-gb-2018"
									title="Macbook Pro 13 Touch Bar 256 GB (2018)"></a>
								<div class="relative fix-images">
									<img
										data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636716712475449777-macbook-pro-13-touch-bar-256gb-2018-xam-3.jpg?v=1551597578233"
										src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636716712475449777-macbook-pro-13-touch-bar-256gb-2018-xam-3.jpg?v=1551597578233"
										alt="Macbook Pro 13 Touch Bar 256 GB (2018)"
										class="img-responsive center-block" />
								</div>
								<h3>Macbook Pro 13 Touch Bar 256 GB (2018)</h3>
								<div class="price">
									<strong>44.990.000₫</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/macbook-pro-13-inch-128gb-2017"
									title="Macbook Pro 13 inch 128GB (2017)"></a>
								<div class="relative fix-images">
									<img
										data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636566245732810504-1.jpg?v=1551597506797"
										src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636566245732810504-1.jpg?v=1551597506797"
										alt="Macbook Pro 13 inch 128GB (2017)"
										class="img-responsive center-block" />
								</div>
								<h3>Macbook Pro 13 inch 128GB (2017)</h3>
								<div class="price">
									<strong>33.990.000₫</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/macbook-12-256gb-2017" title="Macbook 12 256GB (2017)"></a>
								<div class="relative fix-images">
									<img
										data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636688312719928116-macbook12-hong-0.jpg?v=1551597431707"
										src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636688312719928116-macbook12-hong-0.jpg?v=1551597431707"
										alt="Macbook 12 256GB (2017)"
										class="img-responsive center-block" />
								</div>
								<h3>Macbook 12 256GB (2017)</h3>
								<div class="price">
									<strong>33.990.000₫</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/macbook-air-13-256gb-2018"
									title="Macbook Air 13 256GB 2018"></a>
								<div class="relative fix-images">
									<img
										data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636778883213369758-macbook-air-13-2018-gold-1-571e7fc5-6fe9-49ec-b3ef-7beb0c60e446.png?v=1551597347370"
										src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636778883213369758-macbook-air-13-2018-gold-1-571e7fc5-6fe9-49ec-b3ef-7beb0c60e446.png?v=1551597347370"
										alt="Macbook Air 13 256GB 2018"
										class="img-responsive center-block" />
								</div>
								<h3>Macbook Air 13 256GB 2018</h3>
								<div class="price">
									<strong>36.990.000₫</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a href="/macbook-air-13-128gb-2018"
									title="Macbook Air 13 128GB 2018"></a>
								<div class="relative fix-images">
									<img
										data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636778883213369758-macbook-air-13-2018-gold-1.png?v=1551597287473"
										src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636778883213369758-macbook-air-13-2018-gold-1.png?v=1551597287473"
										alt="Macbook Air 13 128GB 2018"
										class="img-responsive center-block" />
								</div>
								<h3>Macbook Air 13 128GB 2018</h3>
								<div class="price">
									<strong>31.990.000₫</strong>
								</div>
							</div>
						</div>
						<div
							class="item-border col-xs-6 col-sm-4 col-md-15 col-lg-15 no-padding">
							<div class="news-item-products">
								<a
									href="/asus-zenbook-ux333fa-a4011t-core-i5-8265u-8gb-256gssd-win10"
									title="Asus Zenbook UX333FA-A4011T/Core i5-8265U/8GB/256GSSD/WIN10"></a>
								<div class="relative fix-images">
									<img
										data-src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636801318182704747-asus-zenbook-ux333fa-2.png?v=1551597206937"
										src="https://bizweb.dktcdn.net/thumb/medium/100/348/133/products/636801318182704747-asus-zenbook-ux333fa-2.png?v=1551597206937"
										alt="Asus Zenbook UX333FA-A4011T/Core i5-8265U/8GB/256GSSD/WIN10"
										class="img-responsive center-block" />
								</div>
								<h3>Asus Zenbook UX333FA-A4011T/Core
									i5-8265U/8GB/256GSSD/WIN10</h3>
								<div class="price">
									<strong>22.990.000₫</strong>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="text-xs-right">
							<nav class="text-center">
								<ul class="pagination clearfix">
									<li class="page-item disabled"><a class="page-link"
										href="#" title="«">«</a></li>
									<li class="active page-item disabled"><a class="page-link"
										href="javascript:;" title="1">1</a></li>
									<li class="page-item"><a class="page-link"
										onclick="doSearch(2)" href="javascript:;" title="2">2</a></li>
									<li class="page-item"><a class="page-link"
										onclick="doSearch(3)" href="javascript:;" title="3">3</a></li>
									<li class="page-item"><a class="page-link"
										onclick="doSearch(2)" href="javascript:;" title="»">»</a></li>
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
				<h2>TIỆN ÍCH TẠI HỆ THỐNG CỬA HÀNG ANT MOBILE:</h2>
				“Tận tâm với khách hàng“, Ant Mobile luôn nỗ lực mang tới dịch vụ và
				trải nghiệm tốt nhất:<br> – Nhân viên thân thiện, gửi xe & Wifi
				Miễn phí<br> – Hướng dẫn cài đặt & sử dụng ứng dụng, game,…
				Miễn phí<br> – Trải nghiệm trực tiếp, và dùng thử sản phẩm Miễn
				phí.<br> – Tiếp nhận bảo hành chính hãng & Dịch vụ sửa chữa<br>
				– Miễn phí cà thẻ (ngoại trừ AMEX, UnionPay & JCB)<br> – Trả
				góp từ 0% qua thẻ tín dụng quốc tế & công ty tài chính<br> –
				Thanh toán hóa đơn trả góp, điện, nước, internet, nạp tiền điện
				thoại tiết kiệm tới 5%<br> – Giao hàng miễn phí, thanh toán tại
				nhà trên Toàn quốc
			</div>
		</div>
	</div>



</body>
