<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 25/12/2019
  Time: 09:49 CH
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
    <link rel="stylesheet" href="/Assets/Admin/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/Assets/Admin/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/Assets/Admin/libs/css/style.css">
    <link rel="stylesheet" href="/Assets/Admin/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="/Assets/Admin/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="/Assets/Admin/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="/Assets/Admin/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/Assets/Admin/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="/Assets/Admin/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <link href="/Content/PagedList.css" rel="stylesheet" />
    <link href="/Assets/Admin/libs/css/all.css" rel="stylesheet" />
    <script src="/Assets/Admin/vendor/jquery/jquery-3.3.1.min.js"></script>
    <link href="/Assets/Admin/libs/css/popupUpdate.css" rel="stylesheet" />
    <link href="/Assets/Admin/libs/css/styleDelete.css" rel="stylesheet" />
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
                <img src="/Assets/Client/Image/logocafe.png" style="width: 76px;">
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>



            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto navbar-right-top">

                    <li class="nav-item dropdown nav-user">
                        <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border-left:1px solid #e6e6f2; padding:6px 21px" >
                            Nguyễn Văn Cường
                        </a>
                        <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                            <a class="dropdown-item" href="/HomeClient/Index"><i class="fas fa-user mr-2"></i>Bán hàng</a>
                            <a class="dropdown-item" href="/Admin/User/Edit/1"><i class="fas fa-cog mr-2"></i>Cập nhật tài khoản</a>
                            <a class="dropdown-item" href="/Admin/Login/index"><i class="fas fa-power-off mr-2"></i>Đăng xuất</a>
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
        #showTongQuan {
            display: block;
        }
        #showthongke {
            display: block;
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
                            <a class="nav-link active" href="/HomeClient/Index" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fas fa-paper-plane"></i>Bán hàng <span class="badge badge-success">6</span></a>

                        </li>
                        <li class="nav-item" id="showTongQuan">
                            <a class="nav-link" href="/Admin/Home/index" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fas fa-home"></i>Tổng quan</a>
                        </li>
                        <li class="nav-item " id="showTongQuan">
                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-8" aria-controls="submenu-4"><i class="fas fa-table"></i>Sơ đồ phòng,bàn</a>
                            <div id="submenu-8" class="collapse submenu" style="">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Admin/Area/index">Khu vực</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Admin/TableFood/index">Bàn</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item " id="showthucdon">
                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fas fa-coffee"></i>Đồ uống, món ăn</a>
                            <div id="submenu-4" class="collapse submenu" style="">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Admin/Food/index">Đồ uống - Món ăn</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Admin/FoodCategory/index">Nhóm thực đơn</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/Admin/DVT/index">Đơn vị tính</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item" id="showthucdon">
                            <a class="nav-link" href="/Admin/QLBepBar/index" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-diagnoses"></i>Quản lí bếp/bar</a>
                        </li>
                        <li class="nav-item" id="showTongQuan">
                            <a class="nav-link" href="/Admin/TKDT/index" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="far fa-chart-bar"></i>Thống kê doanh thu</a>
                        </li>

                        <li class="nav-item" id="showTongQuan">
                            <a href="/Admin/CTHD/index" class="nav-link" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-database"></i>Quản lý hóa đơn</a>
                        </li>
                        <li class="nav-item" id="showTongQuan">
                            <a  href="/Admin/User/index" class="nav-link" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fa fa-fw fa-user-circle"></i>Quản lý nhân viên</a>
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
                                Quản Lý Nghiệp Vụ Quán Cafe</h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->


                <div class="row">
                    <!-- ============================================================== -->
                    <!-- sales  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="card border-3 border-top border-top-primary">
                            <div class="card-body">
                                <h5 class="text-muted">Doanh thu</h5>
                                <div class="metric-value d-inline-block">
                                    <h1 class="mb-1">11.150.000 đ</h1>

                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end sales  -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- new customer  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="card border-3 border-top border-top-primary">
                            <div class="card-body">
                                <h5 class="text-muted col">Quản lý</h5>
                                <div class="metric-value d-inline-block col">
                                    <h1 class="mb-1">1</h1>
                                </div>


                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end new customer  -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- visitor  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="card border-3 border-top border-top-primary">
                            <div class="card-body">
                                <h5 class="text-muted">Nhân viên</h5>
                                <div class="metric-value d-inline-block">
                                    <h1 class="mb-1">2</h1>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end visitor  -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- total orders  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                        <div class="card border-3 border-top border-top-primary">
                            <div class="card-body">
                                <h5 class="text-muted">Tổng hóa đơn đặt hàng</h5>
                                <div class="metric-value d-inline-block">
                                    <h1 class="mb-1">89</h1>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end total orders  -->
                    <!-- ============================================================== -->
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
                    Copyright © 2019 T-COFFEE by <a href="#">Luhanbc</a>.
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
<script src="/Assets/Admin/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<!-- slimscroll js -->
<script src="/Assets/Admin/vendor/slimscroll/jquery.slimscroll.js"></script>
<!-- main js -->
<script src="/Assets/Admin/libs/js/main-js.js"></script>
<!-- chart chartist js -->
<script src="/Assets/Admin/vendor/charts/chartist-bundle/chartist.min.js"></script>
<!-- sparkline js -->
<script src="/Assets/Admin/vendor/charts/sparkline/jquery.sparkline.js"></script>
<!-- morris js -->
<script src="/Assets/Admin/vendor/charts/morris-bundle/raphael.min.js"></script>
<script src="/Assets/Admin/vendor/charts/morris-bundle/morris.js"></script>
<!-- chart c3 js -->
<script src="/Assets/Admin/vendor/charts/c3charts/c3.min.js"></script>
<script src="/Assets/Admin/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
<script src="/Assets/Admin/vendor/charts/c3charts/C3chartjs.js"></script>
<script src="/Assets/Admin/libs/js/dashboard-ecommerce.js"></script>

</body>

</html>

