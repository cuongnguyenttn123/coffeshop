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
    <title>TTN Admin</title>
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
                                Thống Kê Doanh Thu
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->

                <style>
                    /*.header{
        font-size:25px;
        padding:10px;
        color:#007bff;
        font-weight:bold;
        border-bottom:2px solid #007bff;
        border-width:5px;
    }*/
                    .doanhthu1
                    {
                        border-radius: 5px;
                        border-color: #007bff;
                        font-size: 15px;
                        outline-style: none;
                        height: 2.35em;
                        margin-top: 1.45em;
                    }
                    .dropdown-style{
                        margin:50px;
                    }
                    .viewdoanhthu{
                        width: 40%;
                        height: 15.1em;
                        border: 1px solid #007bff;
                        border-radius: 0.3em;
                        margin-left: 30%;
                        margin-bottom: 10em;
                        outline-style: none;
                    }
                    .doanhthutitle{
                        background-color: #007bff;
                        text-align:center;
                        color:#fff;
                        font-size:20px;
                        border-radius:4px 4px 0px 0px;
                        padding:20px;
                    }
                    .valuedanhthu{
                        text-align: center;
                        font-size: 40px;
                        padding: 37px 0 42px 0px;
                        color:#007bff;
                    }
                    #date{
                        border-radius:5px;
                        border-color:#007bff;
                        padding:4px 5px;
                        font-size:15px;
                        outline-style: none;
                    }
                    #date1{
                        border-radius:5px;
                        border-color:#007bff;
                        padding:4px 5px;
                        font-size:15px;
                        outline-style: none;
                    }
                </style>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card" >
                            <h4 class="card-header fas fa-coffee">&nbsp; Chi tiết Thống kê</h4>
                            <div class="card-body">
                                <form action="/admin/statistical/search" method="get">
                                    <div class="row">
                                    <select class="doanhthu1 col-3" id="ChonTime" name="ChonTime"><option value="">--Lựa chọn thời gian--</option>
                                        <option value="1">Trong Ng&#224;y</option>
                                        <option value="2">Trong Th&#225;ng</option>
                                        <option value="3">Trong Năm</option>
                                    </select>
                                    <div class="col-3">
                                        Từ ngày: <input type="date" name="date" id="date" class="col"/>
                                    </div>
                                    <div class="col-3">
                                        Đến ngày: <input type="date" name="date1" id="date1" class="col"/>
                                    </div>
                                    <div class="col-3">
                                        <button type="submit" class="btn btn-info active btn-sm" id="tkdt" style="margin-top:1.7em"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button>
                                    </div>
                                </div>
                                </form>
                                <br />


                                <div class="viewdoanhthu">
                                    <div class="groupdanhthu">
                                        <div class="doanhthutitle">
                                            DOANH THU
                                        </div>
                                        <div class="valuedanhthu">
                                            ${sum}
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>


                    </div>

                </div>
                <script>
                    $('#date').click(function(){
                        var x= $('#date').val();
                        debugger
                        $('#date1').click(function(){
                            var y= $('#date1').val();
                            debugger
                            if(x>y)
                            {
                                alert("Từ ngày không thể lớn hơn đến ngày!");
                            }
                        })
                    })
                    $('.doanhthu1').change(function () {
                        var SelectedValue = $(this).val();
                        if(SelectedValue ==1)
                        {

                            $('#date').click(function () {
                                alert('Bạn đã chọn thời gian');
                            })
                            $('#date1').click(function () {
                                alert('Bạn đã chọn thời gian');
                            })
                        }
                        else if(SelectedValue == 2)
                        {
                            $('#date').click(function () {
                                alert('Bạn đã chọn thời gian');
                            })
                            $('#date1').click(function () {
                                alert('Bạn đã chọn thời gian');
                            })
                        }
                        else if (SelectedValue == 3) {

                            $('#date').click(function () {
                                alert('Bạn đã chọn thời gian');
                            })
                            $('#date1').click(function () {
                                alert('Bạn đã chọn thời gian');
                            })
                        }
                        else if (SelectedValue == 4) {

                            $('#date').click(function () {
                                alert('Bạn đã chọn thời gian');
                            })
                            $('#date1').click(function () {
                                alert('Bạn đã chọn thời gian');
                            })
                        }
                    })

                    $('#tkdt').click(function (e) {
                        var x = $('#date').val();
                        var y = $('#date1').val();
                        var z =$('.doanhthu1').val();
                        if(z=="" && x=="" && y=="")
                        {
                            alert('bạn cần chọn các mục để tìm kiếm');
                        }
                        else
                        if(x != "" && y=="")
                        {
                            alert('Bạn phải chọn đến ngày tìm');
                            e.preventDefault();
                        }
                        else if (y != "" && x == "") {
                            alert('Bạn phải chọn từ ngày tìm');
                            e.preventDefault();
                        }
                        else
                        if(x>y)
                        {
                            alert("Từ ngày không thể lớn hơn đến ngày!");
                            e.preventDefault();
                        }
                    })
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
    <jsp:include page="common/jsLibrary.jsp"/>

</body>

</html>

