<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 16/12/2019
  Time: 07:58 SA
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
                            Cuong Nguyen
                        </a>
                        <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                            <a class="dropdown-item" href="/sell"><i class="fas fa-user mr-2"></i>Bán hàng</a>
                            <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Cập nhật tài khoản</a>
                            <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Đăng xuất</a>
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
                                Đồ uống/ Món ăn
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->
                `


                <div class="row">

                    <div class="col-lg-12">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp; Danh sách đồ uống/ món ăn</h4>
                            <div class="card-body">
                                <form action="/Admin/Food" method="get">                    <div class="row">
                                    <div class="col-md-3">
                                        <input type="text" placeholder="Tìm kiếm theo tên" class="form-control" name="seaching" style="border-radius:0.2em" />
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="col">
                                            <select class="nav-link dropdown-toggle col" id="idCategory" name="idCategory" style="border-radius:0.2em"><option value="">--Nh&#243;m đồ uống--</option>
                                                <option value="1">CAFE</option>
                                                <option value="2">SINH TỐ</option>
                                                <option value="3">TR&#192; SỮA</option>
                                                <option value="5">TR&#192; XANH NHẬT BẢN</option>
                                                <option value="6">THỨC UỐNG KEM SỮA</option>
                                                <option value="7">SOCOLA Đ&#193; XAY</option>
                                                <option value="8">HOA QUẢ Đ&#193; XAY</option>
                                                <option value="9">ĐỒ UỐNG VỊ B&#193;NH</option>
                                                <option value="10">KEM CHANH</option>
                                                <option value="11">ĐỒ ĂN NHANH</option>
                                                <option value="12">SỮA CHUA HOA QUẢ </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="col">
                                            <select class="nav-link dropdown-toggle col" id="idDVT" name="idDVT" style="border-radius:0.2em"><option value="">--đơn vị t&#237;nh--</option>
                                                <option value="2">Cốc</option>
                                                <option value="3">Chai</option>
                                                <option value="5">Đĩa</option>
                                                <option value="6">Lon</option>
                                                <option value="7">G&#243;i</option>
                                                <option value="8">Gram</option>
                                                <option value="9">K&#233;t</option>
                                                <option value="10">kg</option>
                                                <option value="11">L&#237;t</option>
                                                <option value="15">Quả</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" class="btn btn-info active btn-sm" style="border-radius:0.2em"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button>
                                    </div>
                                </div>
                                </form>                <br />
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th scope="col">STT</th>
                                        <th scope="col">Tên đồ</th>
                                        <th scope="col">Danh mục</th>
                                        <th scope="col">Đơn vị tính</th>
                                        <th scope="col">Giá</th>
                                        <th scope="col">Tình trạng</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%  int i = 0; %>
                                    <c:forEach items="${foods}" var="food">
                                        <tr id="row_${food.getId()}">
                                            <th scope="col">${ i = i+ 1}</th>
                                            <td scope="col">${food.getName()}</td>
                                            <td scope="col">${food.getFoodcategory().getName()}</td>
                                            <td scope="col">${food.getDvt().getName()}</td>
                                            <td scope="col">${food.getPrice()}</td>
                                            <td scope="col"></td>
                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1">Previous</a>
                                        </li>
                                        <c:forEach var="i" begin="1" end="${count}">
                                            <li class="page-item"><a class="page-link" href="/admin/food?page=${i}">${i}</a></li>
                                        </c:forEach>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </ul>
                                </nav>
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
<jsp:include page="../../common/jsLibrary.jsp"/>


</body>

</html>

