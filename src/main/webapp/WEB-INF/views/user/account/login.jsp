<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<title>Đăng nhập</title>
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/loginstyle.css" /> ">

<script src="<c:url value="/assets/user/js/jquery-3.6.0.min.js" /> "
	type="text/javascript"></script>


<style>
.error {
	color: red;
	font-style: italic;
}
</style>

</head>
<body>
	<div class="content-login">
		<div class="left-login"></div>

		<div class="form-login-regeter">

			<form:form action="dang-nhap" method="POST" modelAttribute="user"
				class="form-login-regeter" name="myForm" onsubmit="return validate()">
				<div class="login-geter">
					<c:forEach var="item" items="${statusLogin }">
						<p>${item}</p>
					</c:forEach>
					<label><b>Tên đăng nhập</b></label>

					<!-- <input class=" login-geter1" type="text" placeholder="Tên đăng nhập" name="uname" required value=""> -->
					<form:input class=" login-geter1" type="text"
						placeholder="Tên đăng nhập" value="" id="playname" name="playname" required=""
						path="play_name" />
					<span id="playname-p" class="error"></span>

					<label><b>Mật khẩu</b></label>

					<!-- <input class=" login-geter1" type="password" placeholder="Nhập mậu khẩu" name="pwd" required> -->
					<form:input class="" type="password" placeholder="Nhập mậu khẩu"
						name="pass" id="password" required="" path="password" />
					<span id="pass-p" class="error"></span>


					<button class="login-buton" type="submit" name="signup" id="signup"
						style="background: #FDDE54 !important" >
						<span style="color: #6E6D6A">Đăng nhập</span>
					</button>




					<div class="container-loginadd">
						<a class="cancelbtn" href="<c:url value="/shop/dang-ky" />">Đăng
							kí</a> &emsp; <span class="adpsw">Quên <a href="#">Mật
								khẩu?</a></span>

					</div>
				</div>

			</form:form>
			<button class="login-buton" type="button"
				style="background: #2851A3 !important"
				onclick="window.location.href='https://www.facebook.com/dialog/oauth?client_id=282473129876153&redirect_uri=http://localhost:8080/cnpm/dangnhapbangFB';">
				<i class="fab fa-facebook-square" style="font-size: 20px"></i><span
					style="color: #fefefe"> Đăng nhập bằng Facebook</span>
			</button>
			<button class="login-buton" type="submit"
				style="background: #EA4335 !important">
				<i class="fab fa-google" style="font-size: 20px"></i> <a
					href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/CDW_Project/shop/dangnhap-google&response_type=code&client_id=606065012158-dsiab1edvr6lsu3bohqhihmulphk3nke.apps.googleusercontent.com&approval_prompt=force">
					<span style="color: #fefefe"> Đăng nhập bằng Google</span>
				</a>
			</button>
		</div>
		<div class="right-login">
			<div class="img-left-login"></div>
		</div>
	</div>
	
	<script type="text/javascript">
		function showError(key, mess) {
			document.getElementById(key).innerHTML = mess;
		}

		// Form validation code will come here.
		function validate() {
			
			var regex = /^[a-zA-Z0-9]+$/;
			
			if (document.myForm.playname.value == "") {
				showError('playname-p', 'Vui lòng nhập tên đăng nhập!');
				document.myForm.name.focus();
				return false;
			} else {

				showError('playname-p', '');

			}
			if (!regex.test(document.myForm.playname.value)) {
				showError('playname-p', 'Tên đăng nhập không hợp lệ!');
				document.myForm.playname.focus();
				return false;
			} else {

				showError('playname-p', '');

			}

			

			if (document.myForm.password.value == "") {
				showError('pass-p', 'Vui lòng nhập mật khẩu!');
				document.myForm.password.focus();
				return false;
			} else {

				showError('pass-p', '');

			}

			if (document.myForm.password.value.length < 4) {
				showError('pass-p', 'Mật khẩu không hợp lệ!');
				document.myForm.password.focus();
				return false;
			} else {

				showError('pass-p', '');

			}
			
			return (true);
		}
	</script>
	
	
</body>
