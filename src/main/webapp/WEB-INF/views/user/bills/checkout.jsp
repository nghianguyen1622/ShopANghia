<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>


        .roww {
            display: -ms-flexbox; /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap; /* IE10 */
            flex-wrap: wrap;
            margin: 0 -16px;
            margin-top: 30px;
            margin-bottom: 30px
        }

        .col-2555 {
            -ms-flex: 35%; /* IE10 */
            flex: 35%;
            width: 35%;
        }

        .col-5000 {
            -ms-flex: 50%; /* IE10 */
            flex: 50%;
        }

        .col-7555 {
            -ms-flex: 65%; /* IE10 */
            flex: 65%;
            width: 65%;
        }

        .col-2555,
        .col-5000,
        .col-7555 {
            padding: 0 16px;
        }

        .containerr {
            background-color: #f2f2f2;
            padding: 5px 20px 15px 20px;
            border: 1px solid lightgrey;
            border-radius: 3px;
        }
        .container1 {
            background-color: #313a73;
            padding: 5px 20px 15px 20px;
            border: 1px solid lightgrey;
            border-radius: 3px;
        }

       .containerr input[type=text] {
            width: 100%;
            margin-bottom: 20px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

       .containerr label {
            margin-bottom: 10px;
            display: block;
        }

        .icon-container {
            margin-bottom: 20px;
            padding: 7px 0;
            font-size: 24px;
        }

        .containerr .addcheckout {
            background-color: #f30;
            color: white;
            font:bold;
            margin: 10px 0;
            border: none;
            width: 100%;
            border-radius: 3px;
            cursor: pointer;
            font-size: 22px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        a {
            color: #2196F3;
        }

        hr {
            border: 1px solid lightgrey;
        }

        span.price {
            float: right;
            color: grey;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
            .row {
                flex-direction: column-reverse;
            }
            .col-25 {
                margin-bottom: 20px;
            }
        }

        .col-2555 th, td {
            text-align: left;
            padding: 15px;
            border: 1px solid #e1e1e1;
            color: white;
        }
        .cart-price-color{
            color: #fbd020;
        }
    </style>
</head>
<body>
<div class="roww" style="background: white;">
    <div class="col-7555" style="background: white;">
        <div class="containerr" style="background: white;">
            <form:form action="checkout" method="POST" modelAttribute="bills" >

                <div class="row" style="background: white;">
                    <div class="col-5000">
                        <h3>?????a ch??? giao h??ng</h3>
                        <label for="name"><i class="fa fa-user"></i> H??? v?? t??n</label>
                        <form:input type="text" id="name" name="firstname" placeholder="Nguy???n V??n A" path="name" />

                        <label for="phone"><i class="fa fa-address-card-o"></i> S??? ??i???n tho???i</label>
                        <form:input type="text" id="phone" name="address" placeholder="097777122" path="phone" />

                        <label for="email" style="margin-top: 20px"><i class="fa fa-envelope"></i> Email</label>
                        <form:input type="text" id="email" name="email" placeholder="john@example.com" path="email" />
                        
                        <div class="row" >
                            <div class="col-5000">
                                <label for="number_home">S??? nh??</label>
                                <form:input type="text" id="number_home" name="zip" placeholder="20/A" path="address" />
                                
                            </div>
                            <div class="col-5000">
                                <label for="street">T??n ???????ng</label>
                                <form:input type="text" id="street" name="zip" placeholder="L?? h???ng phong" path="address" />
                                
                            </div>
                            <div class="col-5000">
                                <label for="wards">Ph?????ng/X??</label>
                                <form:input type="text" id="wards" name="zip" placeholder="T??n ????ng hi???p" path="address" />
                                
                            </div>
                            <div class="col-5000">
                                <label for="district">Qu???n/Huy???n</label>
                                <form:input type="text" id="district" name="zip" placeholder="D?? An" path="address" />
                                
                                
                            </div>
                            <div class="col-5000">
                                <label for="province">Th??nh ph???/T???nh</label>
                                <form:input type="text" id="province" name="zip" placeholder="D?? An" path="address" />
                                
                            </div>
                        </div>
                    </div>


                </div>
                <label>
                    <input type="checkbox" checked="checked" name="sameadr"> X??c th???c ?????a ch???
                </label>
                <input type="submit" value="?????t h??ng" onclick="return confirm('Ho??n t???t thanh to??n!');" class="btn addcheckout" style="width: 150px; margin-left: 40% ">
            </form:form>
        </div>
    </div>
    <div class="col-2555">
        <div class="container1">
            <table id="shopping-cart-menu">
                <tr class='shopping-cart-item'>
                    <td class='cart-title'>T??n s???n ph???m</td>
                    <td class='cart-title'>S??? l?????ng</td>
                    <td class='cart-price'>Gi??</td>
                </tr>
                
                <c:forEach var="item" items="${ Cart }">
                <tr class='shopping-cart-item'>
                    <td class='cart-title'><a href="<c:url value="/shop/chi-tiet-san-pham/${item.value.product.id}" />" style="color: white;">${ item.value.product.name } </a></td>
                    <td class='cart-title'>${ item.value.quanty }</td>
                    <td class='cart-price'>${ item.value.totalPrice  }???</td>
                </tr>
                </c:forEach>
                <tr class='shopping-cart-total'>
                    <td class='cart-price-color'>T???ng c???ng:</td>
                    <td class='cart-title'>${ TotalQuantyCart }</td>
                    <td class='cart-price-color'>${ TotalPriceCart }???</td>
                </tr>
            </table>
        </div>
    </div>
</div>

	<script type="text/javascript">
	function showError(key, mess) {
		document.getElementById(key).innerHTML = mess;
	}

	function checkDate(strDate) {
		var comp = strDate.split('/')
		var d = parseInt(comp[0], 10)
		var m = parseInt(comp[1], 10)
		var y = parseInt(comp[2], 10)
		var date = new Date(y, m - 1, d);
		if (date.getFullYear() == y && date.getMonth() + 1 == m
				&& date.getDate() == d) {
			return true
		}
		return false
	}

	<!--
	// Form validation code will come here.
	function validate() {
		var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
		var emailID = document.myForm.email.value;
		atpos = emailID.indexOf("@");
		dotpos = emailID.lastIndexOf(".");

		
		if (document.myForm.name.value == "") {
			showError('na', 'B???n kh??ng th??? ????? tr???ng d??? li???u n??y');
			document.myForm.name.focus();
			return false;
		} else {

			showError('na', '');

		}
		
		
	

		if (document.myForm.diachi.value == "") {
			showError('dc', 'B???n kh??ng th??? ????? tr???ng d??? li???u n??y');
			document.myForm.diachi.focus();
			return false;
		} else {

			showError('dc', '');

		}
		
		
		if (document.myForm.tinhthanh.value == "") {
			showError('tt', 'B???n kh??ng th??? ????? tr???ng d??? li???u n??y');
			document.myForm.tinhthanh.focus();
			return false;
		} else {

			showError('tt', '');

		}
		
		
		
		if (document.myForm.quanhuyen.value == "") {
			showError('qh', 'B???n kh??ng th??? ????? tr???ng d??? li???u n??y');
			document.myForm.quanhuyen.focus();
			return false;
		} else {

			showError('qh', '');

		}

		
		if (document.myForm.phuongxa.value == "") {
			showError('px', 'B???n kh??ng th??? ????? tr???ng d??? li???u n??y');
			document.myForm.phuongxa.focus();
			return false;
		} else {

			showError('px', '');

		}
		
		
		if (document.myForm.sodt.value == "") {
			showError('sdt', 'B???n kh??ng th??? ????? tr???ng d??? li???u n??y');
			document.myForm.email.focus();
			return false;
		} else {

			showError('sdt', '');

		}
		
		if (document.myForm.sodt.value.length < 10) {
			showError('sdt', 'S??? ??i???n tho???i ph???i c?? ??t nh???t 10 s???.Th??? l???i');
			document.myForm.sodt.focus();
			return false;
		} else {

			showError('sdt', '');

		}
		

		
		
		if (document.myForm.email.value == "") {
			showError('emaill', 'B???n kh??ng th??? ????? tr???ng d??? li???u n??y');
			document.myForm.email.focus();
			return false;
		} else {

			showError('emaill', '');

		}
		if (!mailformat.test(document.myForm.email.value)) {
			showError('emaill', 'Email kh??ng h???p l??.Th??? l???i');
			document.myForm.email.focus();
			return false;
		} else {

			showError('emaill', '');

		}
		
		return (true);
	}
</script>

</body>

