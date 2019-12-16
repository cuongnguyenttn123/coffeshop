<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 16/12/2019
  Time: 07:59 SA
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
                <img src="/Assets/Client/Image/logocafe.png" style="width: 76px;">
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>



            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto navbar-right-top">

                    <li class="nav-item dropdown nav-user">
                        <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border-left:1px solid #e6e6f2; padding:6px 21px" >
                            Quang Hưng
                        </a>
                        <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                            <a class="dropdown-item" href="/HomeClient/Index"><i class="fas fa-user mr-2"></i>Bán hàng</a>
                            <a class="dropdown-item" href="/Admin/User/Edit/6"><i class="fas fa-cog mr-2"></i>Cập nhật tài khoản</a>
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
                                Nhóm thực đơn
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <h5 class="card-header fas fa-coffee">&nbsp; Quản lí thực đơn</h5><br/>
                            <form action="/Admin/FoodCategory" method="get">                <div class="row">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" style="margin-left:1.5em;" name="seaching" placeholder="Tìm kiếm theo tên" />
                                </div>
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-info active btn-sm col-3"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button> &nbsp;&nbsp;
                                </div>
                            </div>
                            </form>            <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th style="width:1em">STT</th>
                                    <th scope="col" style="width:13em">Tên nhóm</th>
                                    <th scope="col" style="width:25em">Mô tả</th>
                                    <th scope="col" style="width:9em">Trạng thái</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr id="row_1">
                                    <th >1</th>
                                    <td >CAFE</td>
                                    <td ></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="1">K&#237;ch hoạt</a>
                                    </td>

                                </tr>
                                <tr id="row_2">
                                    <th >2</th>
                                    <td >SINH TỐ</td>
                                    <td ></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="2">K&#237;ch hoạt</a>
                                    </td>

                                </tr>
                                <tr id="row_3">
                                    <th >3</th>
                                    <td >TR&#192; SỮA</td>
                                    <td ></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="3">K&#237;ch hoạt</a>
                                    </td>

                                </tr>
                                <tr id="row_5">
                                    <th >4</th>
                                    <td >TR&#192; XANH NHẬT BẢN</td>
                                    <td ></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="5">K&#237;ch hoạt</a>
                                    </td>

                                </tr>
                                <tr id="row_6">
                                    <th >5</th>
                                    <td >THỨC UỐNG KEM SỮA</td>
                                    <td ></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="6">K&#237;ch hoạt</a>
                                    </td>

                                </tr>


                                </tbody>
                            </table>
                            <div class="pagination-container"><ul class="pagination"><li class="active"><a>1</a></li><li><a href="/Admin/FoodCategory?page=2">2</a></li><li><a href="/Admin/FoodCategory?page=3">3</a></li><li class="PagedList-skipToNext"><a href="/Admin/FoodCategory?page=2" rel="next">»</a></li></ul></div>

                        </div>
                        </div>
                    </div>
                </div>
                <div id="modal-wrapper-Del" class="modal">
                    <form action="/Admin/FoodCategory/Delete" class="modal-contentDel animateDel" method="post"><input name="__RequestVerificationToken" type="hidden" value="NiRATKSC1VMwACtuZnBzM8nr5KMJtpIRzs1k6mjAQzCvIn6mdpCtbxXKEaaP9hWrLqUalztCt7f5INVBERpxpUppNPLuuKqa1BdgMwQncaQ1" />        <div class="container-confirm">
                        <div class="title-main">Xác nhận xóa</div>
                        <div class="title-content">
                            <div class="content-titlt">Bạn có đồng ý xóa ?</div>
                            <div class="content-confrim">
                                <a class="btnCf-cancel" onclick="document.getElementById('modal-wrapper-Del').style.display = 'none'">Hủy</a>
                                <button class="btnCf-yes" type="submit" onclick="dongy(idfood)" id="DeleteF">Đồng ý</button>
                            </div>
                        </div>
                    </div>
                    </form></div>

                <script>

                    function clik(id) {
                        document.getElementById('modal-wrapper-Del').style.display = 'block';
                        $('#DeleteF').click(function (e) {
                            var iddelete =
                                {
                                    id: id
                                }
                            $.ajax({
                                url: '/Admin/FoodCategory/Delete',
                                type: 'POST',
                                data: iddelete,
                                OnComplete: function () {
                                    OnComplete: "$('#row_" + id + "').remove()";
                                },
                                success: function () {
                                    window.location.reload();
                                },
                                error: function () {
                                    alert('error');
                                }
                            })
                        })


                    }
                </script>

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
<jsp:include page="../common/jsLibrary.jsp"/>

</body>

</html>

