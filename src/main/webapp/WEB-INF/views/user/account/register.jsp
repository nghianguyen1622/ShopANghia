<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<title>Đăng kí</title>
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/loginstyle.css" /> ">
	
	
	
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


			<form:form action="dang-ky" method="POST" modelAttribute="user"
				class="form-login-regeter" name="myForm"
				onsubmit="return validate()" id="registration">
				<div class="imgcontainer ">
					<div class="option">
						<div class="w3-content w3-section" style="max-width: 780px">
							<img class="mySlides"
								src="https://cdn.tgdd.vn/2019/11/banner/800-170-800x170-(89).png"
								style="width: 100%; display: block;"> <img
								class="mySlides"
								src="https://cdn.tgdd.vn/2019/11/banner/800-170-800x170-(100).png"
								style="width: 100%; display: none;"> <img
								class="https://cdn.tgdd.vn/2019/11/banner/800-170-800x170-(85).png"
								style="width: 100%">

						</div>

					</div>
				</div>

				<div class=" login-geterform">
					<label><b>Họ và tên</b></label>

					<form:input class=" login-geter1" name="username" id="name"
						type="text" placeholder="Nhập họ tên" value="" required=""
						path="name" onchange='this.myForm.submit()' />
					<span id="name-p" class="error"></span>

					<%-- <form:errors path="name" cssClass="error" /> --%>


					<label><b>Tên đăng nhập</b></label>

					<form:input class=" login-geter1" id="playname" name="playname"
						type="text" placeholder="Tên đăng nhập" value="" required=""
						path="play_name" />
					<span id="playname-p" class="error"></span>
					<c:forEach var="item" items="${status2}" varStatus="index">
                        <p style="margin-bottom: 20px ; color: red;">${item}</p>
                        </c:forEach>

					<%-- <form:errors path="play_name" cssClass="error" /> --%>

					<label><b>Email</b></label>

					<form:input class=" login-geter1" name="email" id="email"
						type="text" placeholder="Email@gmail.com" value="" required=""
						path="email" />
					<span id="email-p" class="error"></span>
					<c:forEach var="item" items="${status1}" varStatus="index">
                        <p style="margin-bottom: 20px ; color: red;">${item}</p>
                        </c:forEach>

					<%-- <form:errors path="email" cssClass="error" /> --%>

					<label><b>Mật khẩu</b></label>

					<form:input class=" login-geter1" name="pass" id="password"
						type="password" placeholder="Nhập mậu khẩu" required=""
						path="password" />
					<span id="pass-p" class="error"></span>

					<%-- <form:errors path="password" cssClass="error" /> --%>

					<label><b>Nhập lại mật khẩu</b></label>

					<form:input class=" login-geter1" name="confirmpassword"
						id="confirmpassword" type="password"
						placeholder="Nhập lại mật khẩu" required="" path="" />
					<span id="conpass-p" class="error"></span>

					<%--  <form:errors path="" cssClass="error" /> --%>

					<button class="login-buton" name="signup" id="signup" type="submit">Đăng
						kí</button>


					<div class="container-loginadd">
						<a class="cancelbtn" href="<c:url value="/shop/dang-nhap" />">Đăng
							nhập</a>
					</div>

				</div>


			</form:form>

		</div>
		<div class="right-login">
			<div class="img-left-login"></div>
		</div>
	</div>


<%-- 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src=" https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js "></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="<c:url value="/assets/user/js/register.js" /> " type="text/javascript"></script> --%>

<!-- 	<script type="text/javascript">
		$(function() {
			var $registrationForm = $('#registration');
			$.validator.addMethod("noSpace", function(value, element) {
				return value == '' || value.trim().length != 0;

			}, "Không chứa khoảng trắng");
			$.validator
					.addMethod(
							"customEmail",
							function(value, element) {
								return this.optional(element)
										|| /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
												.test(value);
							}, "Vui lòng nhập địa chỉ Email hợp lệ!");

			$.validator.addMethod("alphanumeric", function(value, element) {
				return this.optional(element) || /^\w+$/i.test(value);
			}, "Không chứa kí tự đặc biệt!");

			if ($registrationForm.length) {
				$registrationForm.validate({
					rules : {
						username : {
							required : true
						},
						playname : {
							required : true,
							alphanumeric : true
						},
						email : {
							required : true,
							customEmail : true
						},
						pass : {
							required : true
						},
						confirm : {
							required : true,
							equalTo : '#pass'
						}

					},
					messages : {
						username : {
							required : 'Không được bỏ trống!'

						},
						playname : {
							required : 'Không được bỏ trống!'

						},
						email : {
							required : 'Không được bỏ trống!'

						},
						pass : {
							required : 'Nhập mật khẩu!'

						},
						confirm : {
							required : 'Nhập lại mật khẩu!',
							equalTo : 'Nhập đúng mật khẩu!'

						}

					},
					errorPlacement : function(error, element) {

					}

				})
			}

		})
	</script>
 -->





	<script type="text/javascript">
		function showError(key, mess) {
			document.getElementById(key).innerHTML = mess;
		}

		// Form validation code will come here.
		function validate() {
			var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
			var emailID = document.myForm.email.value;
			var regex = /^[a-zA-Z0-9]+$/;
			atpos = emailID.indexOf("@");
			dotpos = emailID.lastIndexOf(".");

			if (document.myForm.name.value == "") {
				showError('name-p', 'Vui lòng nhập tên của bạn!');
				document.myForm.name.focus();
				return false;
			} else {

				showError('name-p', '');

			}
			if (document.myForm.playname.value == "") {
				showError('playname-p', 'Vui lòng nhập tên đăng nhập!');
				document.myForm.name.focus();
				return false;
			} else {

				showError('playname-p', '');

			}
			if (!regex.test(document.myForm.playname.value)) {
				showError('playname-p', 'Không chứa kí tự đặc biệt và khoảng trắng!');
				document.myForm.playname.focus();
				return false;
			} else {

				showError('playname-p', '');

			}

			if (document.myForm.email.value == "") {
				showError('email-p', 'Vui lòng nhập Email của bạn!');
				document.myForm.email.focus();
				return false;
			} else {

				showError('email-p', '');

			}
			if (!mailformat.test(document.myForm.email.value)) {
				showError('email-p', 'Email không hợp lệ!');
				document.myForm.email.focus();
				return false;
			} else {

				showError('email-p', '');

			}

			if (document.myForm.password.value == "") {
				showError('pass-p', 'Vui lòng nhập mật khẩu!');
				document.myForm.password.focus();
				return false;
			} else {

				showError('pass-p', '');

			}

			if (document.myForm.password.value.length < 3) {
				showError('pass-p', 'Mật khẩu của bạn phải tối thiểu 5 kí tự!');
				document.myForm.password.focus();
				return false;
			} else {

				showError('pass-p', '');

			}
			if (document.myForm.confirmpassword.value == "") {
				showError('conpass-p', 'Vui lòng nhập mật khẩu!');
				document.myForm.password.focus();
				return false;
			} else {

				showError('conpass-p', '');

			}
			if (document.myForm.password.value != document.myForm.confirmpassword.value) {
				showError('conpass-p', 'Mật khẩu không khớp!');
				document.myForm.password.focus();
				return false;
			} else {

				showError('conpass-p', '');

			}

			return (true);
		}
	</script>

</body>
