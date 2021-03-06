<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 17/12/2019
  Time: 12:03 SA
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:out value="/resources/Admin/vendor/bootstrap/css/bootstrap.min.css"/>">
    <link href="<c:out value="/resources/Admin/vendor/fonts/circular-std/style.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="<c:out value="/resources/Admin/libs/css/style.css"/>">
    <link rel="stylesheet" href="<c:out value="/resources/Admin/vendor/fonts/fontawesome/css/fontawesome-all.css"/>">
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-image:url(<c:out value="/resources/Client/Image/anhcasse.jpg"/>);
            background-size: cover;
            background-repeat: no-repeat;
        }

        .logo {
            color: #299cfd;
        }
    </style>
</head>
<body>
<!-- ============================================================== -->
<!-- login page  -->
<!-- ============================================================== -->
<div class="splash-container">
    <div class="card ">
        <div class="card-header text-center">
            <h1>Login</h1>
            <span class="splash-description">${message}</span>
        </div>
        <div class="card-body">
            <form action="/j_spring_security_login" method="post">
                <div class="form-group">
                    <input autocomplete="off" class="form-control form-control-lg" id="UserName" name="username" placeholder="Tên đăng nhập" type="text" value="" />

                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" id="PassWord" name="password" placeholder="Mật khẩu" type="Password" value="" />

                </div>
                <button type="submit" class="btn btn-primary btn-lg btn-block">Đăng nhập</button>
            </form>
        </div>
    </div>
</div>

<!-- ============================================================== -->
<!-- end login page  -->
<!-- ============================================================== -->
<!-- Optional JavaScript -->
<script src="<c:out value="/resources/Admin/vendor/jquery/jquery-3.3.1.min.js"/>"></script>
<script src="<c:out value="/resources/Admin/vendor/bootstrap/js/bootstrap.bundle.js"/>"></script>
</body>

</html>
