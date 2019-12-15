<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 09:01 CH
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
                                Quản lý hóa đơn
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->


                <style>
                    #date{
                        border-radius:5px;
                        border-color:#007bff;
                        padding:4px 5px;
                        font-size:15px;
                        outline-style: none;
                    }
                </style>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp; Chi tiết hóa đơn</h4>
                            <div class="card-body">
                                <form action="/Admin/CTHD" method="get">                    <div class="row">
                                    <div class="col-md-5">
                                        <input type="text" placeholder="Tìm kiếm theo tên" class="form-control" name="seaching" />
                                    </div>
                                    <div class="col-3">
                                        <input type="date" name="date" id="date" class="col" />
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" class="btn btn-info active btn-sm"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button>
                                    </div>
                                </div>
                                </form>                <br />
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th scope="col">STT</th>
                                        <th scope="col">Số hóa đơn</th>
                                        <th scope="col">Nhân viên</th>
                                        <th scope="col">Ngày Vào</th>
                                        <th scope="col">Giờ vào</th>
                                        <th scope="col">Giờ ra</th>
                                        <th scope="col">Bàn   </th>
                                        <th scope="col">Chi tiết</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${bills}" var="bill">
                                        <tr id="row_${bill.getId()}">
                                            <th scope="col">1</th>
                                            <td scope="col">${bill.getId()}</td>
                                            <td scope="col">${bill.getEmployee()}</td>
                                            <td scope="col">${bill.getDate()}</td>
                                            <td scope="col">${bill.getCheckIn()}</td>
                                            <td scope="col">${bill.getCheckOut()}</td>
                                            <td>
                                                201
                                            </td>

                                            <td>
                                                <a class="btn btn-success btn-sm" data-id="115" id="115" onclick="ViewCTHD(${bill.getId()})" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    <%--<tr id="row_114">
                                        <th scope="col">2</th>
                                        <td scope="col">114</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">10:19</td>
                                        <td scope="col">
                                            10:19
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="114" id="114" onclick="ViewCTHD(114)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    sh--%>

                                    </tbody>
                                </table>
                                <div class="pagination-container"><ul class="pagination"><li class="active"><a>1</a></li><li><a href="/Admin/CTHD?page=2">2</a></li><li><a href="/Admin/CTHD?page=3">3</a></li><li><a href="/Admin/CTHD?page=4">4</a></li><li><a href="/Admin/CTHD?page=5">5</a></li><li><a href="/Admin/CTHD?page=6">6</a></li><li><a href="/Admin/CTHD?page=7">7</a></li><li><a href="/Admin/CTHD?page=8">8</a></li><li><a href="/Admin/CTHD?page=9">9</a></li><li><a href="/Admin/CTHD?page=10">10</a></li><li class="disabled PagedList-ellipses"><a>&#8230;</a></li><li class="PagedList-skipToNext"><a href="/Admin/CTHD?page=2" rel="next">»</a></li><li class="PagedList-skipToLast"><a href="/Admin/CTHD?page=11">»»</a></li></ul></div>
                            </div>
                        </div>
                    </div>
                    <div id="modal-wrapper" class="modal">

                    </div>
                </div>

                <script>
                    function ViewCTHD(id)
                    {
                        showBill(id);

                    }
                    function showBill(id) {
                        $.ajax({
                            url: '/admin/bill/info',
                            type:'POST',
                            data: {
                                id : id
                            },
                            success: function (d) {
                                $('#modal-wrapper').html(d);
                                $('#modal-wrapper').css("display","block");


                            },
                            erorr:function()
                            {
                                alert("failse rồi");
                            }
                        });
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
<jsp:include page="common/jsLibrary.jsp"/>

</body>

</html>
