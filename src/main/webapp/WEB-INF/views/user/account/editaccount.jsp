<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>

<title>Chỉnh sửa tài khoản</title>
</head>
<body>
    <div class="site-footerab" style="background: white">
        <div class="container">
            <div class="footer-inner">
                <div class="row">


                    <div class="col-xs-12 col-sm-6 col-md-3" style="margin-left: 20%">
                    <c:url value="/shop/updateUsers" var="updateUsers" />
                        <form:form action="${updateUsers}" modelAttribute="myaccount"  name="myForm" method="POST"
			onsubmit="return validate()" class="register-form" id="register-form">  
                        
                        <div class="footer-widget">

                                    <div class="aperson" style="width: 100%;font-size: 17px; font: bold">Họ và tên:
                                <form:input path="id" type="hidden" placeholder="${myaccount.id}"/>

                            </div>
                            <h2>Thông tin cá nhân</h2>
                            <div class="aperson" style="width: 100%;font-size: 17px; font: bold">Họ và tên:
                                <form:input path="name" type="text" placeholder="${ myaccount.name }"/>

                            </div>
                            <div class="aperson" style="width: 100%;font-size: 17px; font: bold">Email:
                                <form:input path="email" type="text" placeholder="${ myaccount.email }"/>

                            </div>
                        </div>
                       <button class="chonl" style="background: #f30; border: none;color: white;padding: 5px 20px;text-align: center;text-decoration: none;display: inline-block;border-radius: 3px;font-size: 16px; margin-top: 10%"
                                type="submit">Lưu
                            
                        </button>
                        </form:form>
                    </div>

                </div>

            </div>
        </div>
    </div>
</body>
