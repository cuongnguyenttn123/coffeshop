<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 09:00 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <jsp:include page="common/header.jsp"/>
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
    <jsp:include page="common/nav-1.jsp"/>
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

    <jsp:include page="common/nav.jsp"/>




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

                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->



                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp; DANH SÁCH MÓN THEO ORDER</h4>
                            <div class="card-body">
                                <form action="/Admin/QLBepBar" method="get">                    <div class="row">
                                    <div class="col-md-3">
                                        <input type="text" placeholder="Tìm kiếm theo tên" class="form-control" name="seaching" style="border-radius:0.2em" />
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" class="btn btn-info active btn-sm" style="border-radius:0.2em"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button>
                                    </div>
                                </div>
                                </form>                <br />
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th scope="col">Bàn</th>
                                        <th scope="col">Tên món</th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Giờ vào</th>
                                        <th scope="col">Chế biến</th>
                                        <th scope="col">Trả món</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr id="row_0">
                                        <td scope="col">b&#224;n 101</td>
                                        <td scope="col">C&#224; ph&#234;n đen</td>
                                        <td scope="col">2</td>
                                        <td scope="col">10:19</td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update" href="#" style="color:white;border-radius:0.2em" data-id="0">Chế biến</a>
                                        </td>
                                        <td scope="col">
                                            <a class="btn btn-warning btn-sm Delete" onclick="tramon(321)" id="321" style="color:white;border-radius:0.2em">Trả món</a>
                                        </td>

                                    </tr>

                                    </tbody>
                                </table>
                                <div class="pagination-container"><ul class="pagination"><li class="active"><a>1</a></li></ul></div>
                            </div>



                        </div>
                    </div>
                </div>
                <script>
                    function tramon(id)
                    {

                        $.ajax({
                            url: '/Admin/QLBepBar/tramon',
                            data: { idbill: id },
                            type: 'POST',
                            dataType: 'json',
                            success: function (response) {
                                var data = response.idbill;
                                var idbill = '#' + data;
                                $(idbill).text("Đã trả");
                                $(idbill).css({ "background": "red", "color": "white" });
                            },
                            error: function () {
                                alert('Lỗi rồi');
                            }

                        })
                    }
                    //$('.Delete').click(function(){
                    //    $(this).text("Đã trả");
                    //    $(this).css({ "background": "red", "color": "white" });
                    //})
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
<jsp:include page="common/jsLibrary.jsp"/>
</body>

</html>

