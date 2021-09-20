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