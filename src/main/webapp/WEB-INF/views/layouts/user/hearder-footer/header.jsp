<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>







<header class="header">
	<div class="container">
		<div class="row">


			<div class="col-lg-2 col-md-2 col-100-h">


				<div class="tab text-center">



					<ul class="nav register" style="background: white;">
						<li class="nav-item1 has-mega" style="margin-top: -10px"><c:if
								test="${ empty LoginInfo }">

								<a href="#"> <i class="fas fa-user fa-2x"
									style="color: black; margin-top: 20px"></i>

								</a>

							</c:if> <c:if test="${ not empty LoginInfo }">

								<a href="#"> <i class="fas fa-user fa-2x"
									style="color: black; margin-top: 10px"></i>
									<div class="account">
										<p style="width: 150px">Xin chào! ${LoginInfo.name}</p>

									</div>



								</a>

							</c:if>

							<div class="mega-content"
								style="top: 10px !important; width: 165px; margin-top: 60px">
								<ul class="level0">
									<li class="level1 parent item">
										<ul class="level1 register-btn">
											<c:if test="${ empty LoginInfo }">
												<li class="level2">

													<div class="login">
														<a href="<c:url value="/shop/dang-nhap" />" class="login1"
															style="border: none; color: white; margin-left: -15px; margin-top: 5px"
															onclick=""> <i class="fa fa-sign-in-alt"></i> Đăng
															nhập
														</a>
													</div>
												</li>
												<li class="level2">

													<div class="register">
														<a href="<c:url value="/shop/dang-ky" />"
															class="register1"
															style="border: none; color: white; margin-left: -15px; margin-top: 5px"
															onclick=""> <i class="fa fa-registered"></i> Đăng kí
														</a>
													</div>
												</li>
											</c:if>

											<c:if test="${ not empty LoginInfo }">


												<li class="level2 padding-top-5">
													<div class="logout" style="padding-right: 10px">
														<a href="<c:url value="/shop/dang-xuat" />"
															class="logout1"
															style="border: none; color: white; margin-left: -15px; margin-top: 5px"
															onclick=""> <i class="fa fa-sign-out-alt"></i> Đăng
															xuất
														</a>
													</div>
												</li>

											</c:if>

										</ul>
									</li>

								</ul>
							</div></li>


					</ul>



				</div>



			</div>
			<div class="col-lg-3 col-md-3 add-arrow">
				<form class="search-bar has-validation-callback" role="search"
					action="timkiem" method="get">



					<input type="search" id="name" name="name" value=""
						oninput="search_product()" placeholder="Tìm kiếm..."
						class="input-group-field search-text">
					<!-- <input type="text" id="search" placeholder="Search" class="textbox" oninput="search_product()" name="key-search"> -->


					<button class="btn icon-fallback-text">
						<svg xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px"
							y="0px" viewBox="0 0 451 451"
							style="enable-background: new 0 0 451 451;" xml:space="preserve"
							width="20px" height="20px">
                           <g>
                              <g>
                                 <path
								d="M447.05,428l-109.6-109.6c29.4-33.8,47.2-77.9,47.2-126.1C384.65,86.2,298.35,0,192.35,0C86.25,0,0.05,86.3,0.05,192.3   s86.3,192.3,192.3,192.3c48.2,0,92.3-17.8,126.1-47.2L428.05,447c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4   C452.25,441.8,452.25,433.2,447.05,428z M26.95,192.3c0-91.2,74.2-165.3,165.3-165.3c91.2,0,165.3,74.2,165.3,165.3   s-74.1,165.4-165.3,165.4C101.15,357.7,26.95,283.5,26.95,192.3z"
								data-original="#000000" class="active-path"
								data-old_color="#ff3300" fill="#ff3300" />
                              </g>
                           </g>
                        </svg>
					</button>
				</form>
				<div class="arrow-left"></div>
			</div>
			<div class="col-md-7 col-lg-7 nav-bg-white hidden-sm hidden-xs" style="float: left">
				<ul id="nav" class="nav">
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value="/shop/" />" title="Trang chủ">Trang chủ</a></li>
					<li class="nav-item "><a class="nav-link"
						href="gioithieu.html" title="Giới thiệu">Giới thiệu</a></li>
					<li class="nav-item has-mega"><a href="#" class="nav-link"
						title="Sản phẩm">Sản phẩm <i class="fa fa-angle-down"
							data-toggle="dropdown"></i></a>
						<div class="mega-content">
							<ul class="level0">



								<li class="level1 parent item"><a class="hmega" href="#"
									title="Laptop">PHONE, TABLET</a>
									<ul class="level1">

										<c:forEach var="item" items="${ categorys }">

											<li class="level2"><a
												href='<c:url value="/shop/san-pham/${ item.id }"></c:url>'
												title="${ item.title }">${ item.id_category }</a></li>
										</c:forEach>
									</ul></li>



								<li class="level1 parent item"><a class="hmega" href="#"
									title="Laptop">PC, LAPTOP</a>
									<ul class="level1">
										<c:forEach var="item" items="${ categorys1 }">

											<li class="level2"><a
												href="<c:url value="/shop/san-pham/${ item.id }"></c:url>"
												title="Apple (Macbook)">${ item.id_category }</a></li>
										</c:forEach>

									</ul></li>


								<li class="level1 parent item"><a class="hmega" href="#"
									title="Laptop">ÂM THANH</a>
									<ul class="level1">
										<c:forEach var="item" items="${ categorys2 }">

											<li class="level2"><a
												href="<c:url value="/shop/san-pham/${ item.id }"></c:url>"
												title="Apple (Macbook)">${ item.id_category }</a></li>
										</c:forEach>

									</ul></li>


							</ul>
						</div></li>
					<li class="nav-item "><a href="tintuc.html" class="nav-link"
						title="Tin tức">Tin tức </a></li>

					<c:if test="${ not empty LoginInfo }">
						<li class="nav-item "><a class="nav-link"
							href="<c:url value="/shop/myorder/"></c:url>" title="Liên hệ">Đơn
								hàng</a></li>
					</c:if>

					<c:if test="${ not empty LoginInfo }">
						<li class="nav-item "><a class="nav-link"
							href="<c:url value="/shop/myaccount/"></c:url>" title="Liên hệ">Tài
								khoản</a></li>
					</c:if>
				</ul>
				
				
				 <ul  class="nav" style="float: right; margin-top: -50px">

                                   <img href="" style="width: 30px; height: 30px" src="<c:url value="/assets/user/images/vietnam.png"></c:url>">
                    <img href="" style="width: 30px; height: 30px" src="<c:url value="/assets/user/images/united-kingdom.png"></c:url>">

                </ul>
				
				
				
			</div>




		</div>
	</div>
</header>
<script type="text/javascript">
	function search() {
		$.ajax({
			type : "post",
			url : "http://localhost:8080/CDW_Project/shop/timkiem/",
			data : "name=" + $("#name").val(),
			success : function(res) {
				var result = "";
				$("#result").html(result);

			},
			error : function() {
				alert('Error while request!');

			}

		});

	}
</script>