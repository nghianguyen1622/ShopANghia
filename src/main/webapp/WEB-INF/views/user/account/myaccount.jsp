<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>

<title>Thông tin cá nhân</title>
</head>
<body>
	<div class="site-footerab" style="background: white">
		<div class="container">
			<div class="footer-inner">
				<div class="row">


					<div class="col-xs-12 col-sm-6 col-md-3" style="margin-left: 20% ; width: 100%">
						<div class="footer-widget">

							<h2>Thông tin cá nhân</h2>
							<div class="aperson"
								style="width: 100%; font-size: 17px; font: bold">
								Họ và tên: <span
									style="font-size: 17px; font: bold; margin-left: 7%">${ myaccount.name }</span>

							</div>

							<div class="aperson"
								style="width: 100%; font-size: 17px; font: bold">
								Tên người dùng: <span
									style="font-size: 17px; font: bold; margin-left: 3%">${ myaccount.play_name }</span>

							</div>

							<div class="aperson"
								style="width: 100%; font-size: 17px; font: bold">
								Email: <span
									style="font-size: 17px; font: bold; margin-left: 10%">${ myaccount.email }</span>


							</div>


						</div>
						<button class="chonl"
							style="background: #f30; border: none; color: white; padding: 5px 20px; text-align: center; text-decoration: none; display: inline-block; border-radius: 3px; font-size: 16px; margin-top: 10%"
							type="submit">
							<a href="<c:url value="/shop/updateUser/" />" style="color: white">Chỉnh sửa</a>
						</button>
						<button class="chonl"
							style="background: #f30; border: none; color: white; padding: 5px 20px; text-align: center; text-decoration: none; display: inline-block; border-radius: 3px; font-size: 16px; margin-top: 10%"
							type="submit">
							<a href="#" style="color: white">Đổi mật khẩu</a>
						</button>
					</div>

				</div>

			</div>
		</div>
	</div>

</body>
