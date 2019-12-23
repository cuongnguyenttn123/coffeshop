<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 17/12/2019
  Time: 09:28 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <jsp:include page="../common/header.jsp"/>
    <title>TL Admin</title>
</head>
<body>
<!-- ============================================================== -->
<!-- main wrapper -->
<!-- ============================================================== -->
<div class="dashboard-main-wrapper">
    <!-- ============================================================== -->
    <!-- navbar -->
    <!-- ============================================================== -->
    <div class="dashboard-header">
        <nav class="navbar navbar-expand-lg bg-white fixed-top">
            <div class="logo" id="logo" style="text-align: center;height: 25;width: 240px;">
                <img src="<c:out value="/resources/Client/Image/logocafe.png"/>" style="width: 72px;">
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>



            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto navbar-right-top">

                    <li class="nav-item dropdown nav-user">
                        <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border-left:1px solid #e6e6f2; padding:6px 21px" >
                            ${pageContext.request.userPrincipal.name}
                        </a>
                        <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                            <a class="dropdown-item" href="/sell"><i class="fas fa-user mr-2"></i>Bán hàng</a>
                            <a class="dropdown-item" href="/user/profile"><i class="fas fa-cog mr-2"></i>Cập nhật tài khoản</a>
                            <a class="dropdown-item" href="/j_spring_security_logout"><i class="fas fa-power-off mr-2"></i>Đăng xuất</a>
                        </div>
                    </li>
                </ul>
            </div>


        </nav>
    </div>
    <!-- ============================================================== -->
    <!-- end navbar -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- left sidebar -->
    <!-- ============================================================== -->


    <style>
        #showthucdon {
            display: block;
        }

        #showthongke {
            display: none;
        }
        #showTongQuan{
            display:none;
        }
    </style>

    <div class="nav-left-sidebar sidebar-dark">
        <div class="menu-list">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav flex-column">
                        <li class="nav-divider">
                            Menu
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link active" href="/sell" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fas fa-paper-plane"></i>Bán hàng <span class="badge badge-success">6</span></a>

                        </li>
                        <li class="nav-item" id="showTongQuan">
                            <a class="nav-link" href="/user/generality" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fas fa-home"></i>Tổng quan</a>
                        </li>

                        <li class="nav-item " id="showthucdon">
                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fas fa-coffee"></i>Đồ uống, món ăn</a>
                            <div id="submenu-4" class="collapse submenu" style="">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="/user/food">Đồ uống - Món ăn</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/user/category">Nhóm thực đơn</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/user/dvt">Đơn vị tính</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item" id="showthucdon">
                            <a class="nav-link" href="/user/bar" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-diagnoses"></i>Quản lí bếp/bar</a>
                        </li>

                    </ul>
                </div>
            </nav>
        </div>

    </div>



    <!-- ============================================================== -->
    <!-- end left sidebar -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- wrapper  -->
    <!-- ============================================================== -->
    <div class="dashboard-wrapper">
        <div class="dashboard-ecommerce">
            <div class="container-fluid dashboard-content ">
                <!-- ============================================================== -->
                <!-- pageheader  -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h1 class="pageheader-title">
                                Cập nhập tài khoản
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->

                <div class="row">
                    <div class="col-10">
                        <div class="card">
                            <h4 class="card-header">Thông tin cập nhật</h4>
                            <div class="card-body">
                                <form action="/user/profile" method="post">
                                    <input data-val="true" data-val-number="The field id must be a number." data-val-required="The id field is required." id="id" name="id" type="hidden" value="6" />
                                    <input data-val="true" data-val-number="The field Quyền must be a number." data-val-required="The Quyền field is required." id="idRole" name="idRole" type="hidden" value="4" />

                                    <div class="form-group">
                                        <label class="control-label col-3" for="UserName">T&#224;i khoản</label>
                                        <input data-val="true" data-val-length="The field Tài khoản must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Tài khoản field is required." htmlAttributes="{ class = col-5 }" id="UserName" name="UserName" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getUserName()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="UserName" data-valmsg-replace="true"></span>

                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="PassWord">Mật khẩu</label>
                                        <input data-val="true" data-val-length="The field Mật khẩu must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Mật khẩu field is required." htmlAttributes="{ class = col-5 }" id="PassWord" name="PassWord" style="border-radius:5px;outline:none;padding:5px" type="password" value="" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="PassWord" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="image" class="col-sm-12 col-form-label">Ảnh đại diện</label>
                                        <input id = "avt" name="avt" type="hidden">
                                        <input id="image" type="file" value='" />'
                                               class="form-control" placeholder="Ảnh đại diện" />
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="Name">Họ t&#234;n</label>
                                        <input data-val="true" data-val-length="The field Họ tên must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Họ tên field is required." htmlAttributes="{ class = col-5 }" id="Name" name="Name" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getName()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="Email">Email</label>
                                        <input data-val="true" data-val-length="The field Email must be a string with a maximum length of 100." data-val-length-max="100" data-val-required="The Email field is required." htmlAttributes="{ class = col-5 }" id="Email" name="Email" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getEmail()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="Email" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="Address">Địa chỉ</label>
                                        <input data-val="true" data-val-length="The field Địa chỉ must be a string with a maximum length of 150." data-val-length-max="150" data-val-required="The Địa chỉ field is required." htmlAttributes="{ class = col-5 }" id="Address" name="Address" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getAddress()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="Address" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="Phone">SDT</label>
                                        <input data-val="true" data-val-length="The field SDT must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The SDT field is required." htmlAttributes="{ class = col-5 }" id="Phone" name="Phone" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getPhone()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="Phone" data-valmsg-replace="true"></span>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-3" for="status">Trạng th&#225;i</label>
                                        <input checked="checked" data-val="true" data-val-required="The Trạng thái field is required." id="status" name="status" type="checkbox" value="true" /><input name="status" type="hidden" value="false" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="status" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Lưu dữ liệu" class="btn btn-success" style="padding:5px 16px;" />
                                            <a href="/user/home" class="btn btn-dark btn-sm">Hủy thao tác</a>

                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- ============================================================== -->
    </div>
    <!-- footer -->
    <!-- ============================================================== -->
    <div class="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    Copyright © 2019 C-COFFEE by <a href="#">Cường Nguyễn</a>.
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="text-md-right footer-links d-none d-sm-block">
                        <a href="javascript: void(0);">About</a>
                        <a href="javascript: void(0);">Support</a>
                        <a href="javascript: void(0);">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end footer -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- end wrapper  -->
<!-- ============================================================== -->

<!-- ============================================================== -->
<!-- end main wrapper  -->
<!-- ============================================================== -->
<!-- Optional JavaScript -->
<!-- jquery 3.3.1 -->
<!-- bootstap bundle js -->
<jsp:include page="../common/jsLibrary.jsp"/>

</body>

</html>

