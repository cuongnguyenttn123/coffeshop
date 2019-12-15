<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 09:04 CH
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
                                    <tr id="row_115">
                                        <th scope="col">1</th>
                                        <td scope="col">115</td>
                                        <td scope="col">Quang Hưng</td>
                                        <td scope="col">14/12/2019</td>
                                        <td scope="col">20:29</td>
                                        <td scope="col">
                                            20:29
                                        </td>
                                        <td>
                                            b&#224;n 201
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="115" id="115" onclick="ViewCTHD(115)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_114">
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
                                    <tr id="row_113">
                                        <th scope="col">3</th>
                                        <td scope="col">113</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">10:17</td>
                                        <td scope="col">
                                            10:17
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="113" id="113" onclick="ViewCTHD(113)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_112">
                                        <th scope="col">4</th>
                                        <td scope="col">112</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">22:52</td>
                                        <td scope="col">
                                            10:16
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="112" id="112" onclick="ViewCTHD(112)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_111">
                                        <th scope="col">5</th>
                                        <td scope="col">111</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">16:17</td>
                                        <td scope="col">
                                            21:46
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="111" id="111" onclick="ViewCTHD(111)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_110">
                                        <th scope="col">6</th>
                                        <td scope="col">110</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">16:9</td>
                                        <td scope="col">
                                            16:10
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="110" id="110" onclick="ViewCTHD(110)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_109">
                                        <th scope="col">7</th>
                                        <td scope="col">109</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">8:40</td>
                                        <td scope="col">
                                            8:40
                                        </td>
                                        <td>
                                            b&#224;n 110
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="109" id="109" onclick="ViewCTHD(109)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">8</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">8:27</td>
                                        <td scope="col">
                                            8:36
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>

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
                            url: '/Admin/CTHD/GetBillinfo',
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
