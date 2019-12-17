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
                                </form>                <br />
                                <table class="table table-bordered"  style="display:none">
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
                                    <tr id="row_114">
                                        <th scope="col">1</th>
                                        <td scope="col">114</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="114" id="114" onclick="ViewCTHD(114)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_114">
                                        <th scope="col">2</th>
                                        <td scope="col">114</td>
                                        <td scope="col">Quang Hưng</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="114" id="114" onclick="ViewCTHD(114)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_114">
                                        <th scope="col">3</th>
                                        <td scope="col">114</td>
                                        <td scope="col">Quang Hưng</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="114" id="114" onclick="ViewCTHD(114)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_113">
                                        <th scope="col">4</th>
                                        <td scope="col">113</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="113" id="113" onclick="ViewCTHD(113)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_113">
                                        <th scope="col">5</th>
                                        <td scope="col">113</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="113" id="113" onclick="ViewCTHD(113)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_113">
                                        <th scope="col">6</th>
                                        <td scope="col">113</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="113" id="113" onclick="ViewCTHD(113)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_113">
                                        <th scope="col">7</th>
                                        <td scope="col">113</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">13/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="113" id="113" onclick="ViewCTHD(113)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_112">
                                        <th scope="col">8</th>
                                        <td scope="col">112</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="112" id="112" onclick="ViewCTHD(112)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_112">
                                        <th scope="col">9</th>
                                        <td scope="col">112</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="112" id="112" onclick="ViewCTHD(112)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_112">
                                        <th scope="col">10</th>
                                        <td scope="col">112</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="112" id="112" onclick="ViewCTHD(112)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_111">
                                        <th scope="col">11</th>
                                        <td scope="col">111</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="111" id="111" onclick="ViewCTHD(111)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_111">
                                        <th scope="col">12</th>
                                        <td scope="col">111</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="111" id="111" onclick="ViewCTHD(111)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_111">
                                        <th scope="col">13</th>
                                        <td scope="col">111</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="111" id="111" onclick="ViewCTHD(111)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_111">
                                        <th scope="col">14</th>
                                        <td scope="col">111</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="111" id="111" onclick="ViewCTHD(111)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_111">
                                        <th scope="col">15</th>
                                        <td scope="col">111</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="111" id="111" onclick="ViewCTHD(111)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_110">
                                        <th scope="col">16</th>
                                        <td scope="col">110</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="110" id="110" onclick="ViewCTHD(110)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_110">
                                        <th scope="col">17</th>
                                        <td scope="col">110</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="110" id="110" onclick="ViewCTHD(110)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_110">
                                        <th scope="col">18</th>
                                        <td scope="col">110</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">12/12/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="110" id="110" onclick="ViewCTHD(110)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_109">
                                        <th scope="col">19</th>
                                        <td scope="col">109</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 110
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="109" id="109" onclick="ViewCTHD(109)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">20</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">21</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">22</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">23</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">24</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">25</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">26</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">27</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_108">
                                        <th scope="col">28</th>
                                        <td scope="col">108</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="108" id="108" onclick="ViewCTHD(108)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_107">
                                        <th scope="col">29</th>
                                        <td scope="col">107</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="107" id="107" onclick="ViewCTHD(107)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_107">
                                        <th scope="col">30</th>
                                        <td scope="col">107</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="107" id="107" onclick="ViewCTHD(107)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_107">
                                        <th scope="col">31</th>
                                        <td scope="col">107</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="107" id="107" onclick="ViewCTHD(107)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_106">
                                        <th scope="col">32</th>
                                        <td scope="col">106</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="106" id="106" onclick="ViewCTHD(106)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_106">
                                        <th scope="col">33</th>
                                        <td scope="col">106</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="106" id="106" onclick="ViewCTHD(106)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_106">
                                        <th scope="col">34</th>
                                        <td scope="col">106</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="106" id="106" onclick="ViewCTHD(106)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_105">
                                        <th scope="col">35</th>
                                        <td scope="col">105</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 205
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="105" id="105" onclick="ViewCTHD(105)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_105">
                                        <th scope="col">36</th>
                                        <td scope="col">105</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 205
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="105" id="105" onclick="ViewCTHD(105)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_104">
                                        <th scope="col">37</th>
                                        <td scope="col">104</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="104" id="104" onclick="ViewCTHD(104)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_104">
                                        <th scope="col">38</th>
                                        <td scope="col">104</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">11/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="104" id="104" onclick="ViewCTHD(104)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_102">
                                        <th scope="col">39</th>
                                        <td scope="col">102</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 302
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="102" id="102" onclick="ViewCTHD(102)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_102">
                                        <th scope="col">40</th>
                                        <td scope="col">102</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 302
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="102" id="102" onclick="ViewCTHD(102)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_102">
                                        <th scope="col">41</th>
                                        <td scope="col">102</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 302
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="102" id="102" onclick="ViewCTHD(102)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_102">
                                        <th scope="col">42</th>
                                        <td scope="col">102</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 302
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="102" id="102" onclick="ViewCTHD(102)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_102">
                                        <th scope="col">43</th>
                                        <td scope="col">102</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 302
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="102" id="102" onclick="ViewCTHD(102)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_101">
                                        <th scope="col">44</th>
                                        <td scope="col">101</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 105
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="101" id="101" onclick="ViewCTHD(101)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_100">
                                        <th scope="col">45</th>
                                        <td scope="col">100</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 108
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="100" id="100" onclick="ViewCTHD(100)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_100">
                                        <th scope="col">46</th>
                                        <td scope="col">100</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 108
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="100" id="100" onclick="ViewCTHD(100)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_99">
                                        <th scope="col">47</th>
                                        <td scope="col">99</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="99" id="99" onclick="ViewCTHD(99)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_99">
                                        <th scope="col">48</th>
                                        <td scope="col">99</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="99" id="99" onclick="ViewCTHD(99)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_99">
                                        <th scope="col">49</th>
                                        <td scope="col">99</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="99" id="99" onclick="ViewCTHD(99)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_99">
                                        <th scope="col">50</th>
                                        <td scope="col">99</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="99" id="99" onclick="ViewCTHD(99)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_99">
                                        <th scope="col">51</th>
                                        <td scope="col">99</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="99" id="99" onclick="ViewCTHD(99)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_98">
                                        <th scope="col">52</th>
                                        <td scope="col">98</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="98" id="98" onclick="ViewCTHD(98)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_97">
                                        <th scope="col">53</th>
                                        <td scope="col">97</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="97" id="97" onclick="ViewCTHD(97)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_96">
                                        <th scope="col">54</th>
                                        <td scope="col">96</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="96" id="96" onclick="ViewCTHD(96)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_94">
                                        <th scope="col">55</th>
                                        <td scope="col">94</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="94" id="94" onclick="ViewCTHD(94)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_94">
                                        <th scope="col">56</th>
                                        <td scope="col">94</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="94" id="94" onclick="ViewCTHD(94)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_94">
                                        <th scope="col">57</th>
                                        <td scope="col">94</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="94" id="94" onclick="ViewCTHD(94)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_94">
                                        <th scope="col">58</th>
                                        <td scope="col">94</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="94" id="94" onclick="ViewCTHD(94)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_93">
                                        <th scope="col">59</th>
                                        <td scope="col">93</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="93" id="93" onclick="ViewCTHD(93)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_93">
                                        <th scope="col">60</th>
                                        <td scope="col">93</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="93" id="93" onclick="ViewCTHD(93)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_93">
                                        <th scope="col">61</th>
                                        <td scope="col">93</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="93" id="93" onclick="ViewCTHD(93)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_88">
                                        <th scope="col">62</th>
                                        <td scope="col">88</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="88" id="88" onclick="ViewCTHD(88)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_87">
                                        <th scope="col">63</th>
                                        <td scope="col">87</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="87" id="87" onclick="ViewCTHD(87)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_86">
                                        <th scope="col">64</th>
                                        <td scope="col">86</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="86" id="86" onclick="ViewCTHD(86)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_86">
                                        <th scope="col">65</th>
                                        <td scope="col">86</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="86" id="86" onclick="ViewCTHD(86)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_86">
                                        <th scope="col">66</th>
                                        <td scope="col">86</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="86" id="86" onclick="ViewCTHD(86)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_86">
                                        <th scope="col">67</th>
                                        <td scope="col">86</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="86" id="86" onclick="ViewCTHD(86)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_86">
                                        <th scope="col">68</th>
                                        <td scope="col">86</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="86" id="86" onclick="ViewCTHD(86)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_84">
                                        <th scope="col">69</th>
                                        <td scope="col">84</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="84" id="84" onclick="ViewCTHD(84)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_82">
                                        <th scope="col">70</th>
                                        <td scope="col">82</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="82" id="82" onclick="ViewCTHD(82)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_82">
                                        <th scope="col">71</th>
                                        <td scope="col">82</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="82" id="82" onclick="ViewCTHD(82)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_81">
                                        <th scope="col">72</th>
                                        <td scope="col">81</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="81" id="81" onclick="ViewCTHD(81)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_81">
                                        <th scope="col">73</th>
                                        <td scope="col">81</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="81" id="81" onclick="ViewCTHD(81)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_81">
                                        <th scope="col">74</th>
                                        <td scope="col">81</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="81" id="81" onclick="ViewCTHD(81)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_80">
                                        <th scope="col">75</th>
                                        <td scope="col">80</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="80" id="80" onclick="ViewCTHD(80)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_79">
                                        <th scope="col">76</th>
                                        <td scope="col">79</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="79" id="79" onclick="ViewCTHD(79)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_78">
                                        <th scope="col">77</th>
                                        <td scope="col">78</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="78" id="78" onclick="ViewCTHD(78)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_77">
                                        <th scope="col">78</th>
                                        <td scope="col">77</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 107
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="77" id="77" onclick="ViewCTHD(77)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_76">
                                        <th scope="col">79</th>
                                        <td scope="col">76</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 110
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="76" id="76" onclick="ViewCTHD(76)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_75">
                                        <th scope="col">80</th>
                                        <td scope="col">75</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="75" id="75" onclick="ViewCTHD(75)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_74">
                                        <th scope="col">81</th>
                                        <td scope="col">74</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="74" id="74" onclick="ViewCTHD(74)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_73">
                                        <th scope="col">82</th>
                                        <td scope="col">73</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="73" id="73" onclick="ViewCTHD(73)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_72">
                                        <th scope="col">83</th>
                                        <td scope="col">72</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="72" id="72" onclick="ViewCTHD(72)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_71">
                                        <th scope="col">84</th>
                                        <td scope="col">71</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 105
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="71" id="71" onclick="ViewCTHD(71)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_70">
                                        <th scope="col">85</th>
                                        <td scope="col">70</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="70" id="70" onclick="ViewCTHD(70)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_69">
                                        <th scope="col">86</th>
                                        <td scope="col">69</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="69" id="69" onclick="ViewCTHD(69)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_69">
                                        <th scope="col">87</th>
                                        <td scope="col">69</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="69" id="69" onclick="ViewCTHD(69)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_68">
                                        <th scope="col">88</th>
                                        <td scope="col">68</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="68" id="68" onclick="ViewCTHD(68)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_67">
                                        <th scope="col">89</th>
                                        <td scope="col">67</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="67" id="67" onclick="ViewCTHD(67)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_66">
                                        <th scope="col">90</th>
                                        <td scope="col">66</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="66" id="66" onclick="ViewCTHD(66)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_65">
                                        <th scope="col">91</th>
                                        <td scope="col">65</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="65" id="65" onclick="ViewCTHD(65)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_64">
                                        <th scope="col">92</th>
                                        <td scope="col">64</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 110
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="64" id="64" onclick="ViewCTHD(64)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">93</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">94</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">95</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">96</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">97</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">98</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">99</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">100</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">101</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_63">
                                        <th scope="col">102</th>
                                        <td scope="col">63</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 106
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="63" id="63" onclick="ViewCTHD(63)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_62">
                                        <th scope="col">103</th>
                                        <td scope="col">62</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="62" id="62" onclick="ViewCTHD(62)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">104</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">105</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">106</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">107</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">108</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">109</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">110</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">111</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">112</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_61">
                                        <th scope="col">113</th>
                                        <td scope="col">61</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="61" id="61" onclick="ViewCTHD(61)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_60">
                                        <th scope="col">114</th>
                                        <td scope="col">60</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="60" id="60" onclick="ViewCTHD(60)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_60">
                                        <th scope="col">115</th>
                                        <td scope="col">60</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="60" id="60" onclick="ViewCTHD(60)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_60">
                                        <th scope="col">116</th>
                                        <td scope="col">60</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="60" id="60" onclick="ViewCTHD(60)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_60">
                                        <th scope="col">117</th>
                                        <td scope="col">60</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="60" id="60" onclick="ViewCTHD(60)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_60">
                                        <th scope="col">118</th>
                                        <td scope="col">60</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="60" id="60" onclick="ViewCTHD(60)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_60">
                                        <th scope="col">119</th>
                                        <td scope="col">60</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="60" id="60" onclick="ViewCTHD(60)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_60">
                                        <th scope="col">120</th>
                                        <td scope="col">60</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="60" id="60" onclick="ViewCTHD(60)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_58">
                                        <th scope="col">121</th>
                                        <td scope="col">58</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="58" id="58" onclick="ViewCTHD(58)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_58">
                                        <th scope="col">122</th>
                                        <td scope="col">58</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="58" id="58" onclick="ViewCTHD(58)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_58">
                                        <th scope="col">123</th>
                                        <td scope="col">58</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="58" id="58" onclick="ViewCTHD(58)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_58">
                                        <th scope="col">124</th>
                                        <td scope="col">58</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="58" id="58" onclick="ViewCTHD(58)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_58">
                                        <th scope="col">125</th>
                                        <td scope="col">58</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="58" id="58" onclick="ViewCTHD(58)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_57">
                                        <th scope="col">126</th>
                                        <td scope="col">57</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="57" id="57" onclick="ViewCTHD(57)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_56">
                                        <th scope="col">127</th>
                                        <td scope="col">56</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="56" id="56" onclick="ViewCTHD(56)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_55">
                                        <th scope="col">128</th>
                                        <td scope="col">55</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="55" id="55" onclick="ViewCTHD(55)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_54">
                                        <th scope="col">129</th>
                                        <td scope="col">54</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 103
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="54" id="54" onclick="ViewCTHD(54)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_53">
                                        <th scope="col">130</th>
                                        <td scope="col">53</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="53" id="53" onclick="ViewCTHD(53)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_53">
                                        <th scope="col">131</th>
                                        <td scope="col">53</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">10/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="53" id="53" onclick="ViewCTHD(53)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_51">
                                        <th scope="col">132</th>
                                        <td scope="col">51</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 402
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="51" id="51" onclick="ViewCTHD(51)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_50">
                                        <th scope="col">133</th>
                                        <td scope="col">50</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="50" id="50" onclick="ViewCTHD(50)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_49">
                                        <th scope="col">134</th>
                                        <td scope="col">49</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="49" id="49" onclick="ViewCTHD(49)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_48">
                                        <th scope="col">135</th>
                                        <td scope="col">48</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 204
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="48" id="48" onclick="ViewCTHD(48)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_47">
                                        <th scope="col">136</th>
                                        <td scope="col">47</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="47" id="47" onclick="ViewCTHD(47)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_47">
                                        <th scope="col">137</th>
                                        <td scope="col">47</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 203
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="47" id="47" onclick="ViewCTHD(47)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_46">
                                        <th scope="col">138</th>
                                        <td scope="col">46</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="46" id="46" onclick="ViewCTHD(46)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_46">
                                        <th scope="col">139</th>
                                        <td scope="col">46</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="46" id="46" onclick="ViewCTHD(46)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_46">
                                        <th scope="col">140</th>
                                        <td scope="col">46</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="46" id="46" onclick="ViewCTHD(46)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_45">
                                        <th scope="col">141</th>
                                        <td scope="col">45</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="45" id="45" onclick="ViewCTHD(45)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_45">
                                        <th scope="col">142</th>
                                        <td scope="col">45</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="45" id="45" onclick="ViewCTHD(45)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_45">
                                        <th scope="col">143</th>
                                        <td scope="col">45</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="45" id="45" onclick="ViewCTHD(45)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_45">
                                        <th scope="col">144</th>
                                        <td scope="col">45</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="45" id="45" onclick="ViewCTHD(45)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_45">
                                        <th scope="col">145</th>
                                        <td scope="col">45</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="45" id="45" onclick="ViewCTHD(45)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_45">
                                        <th scope="col">146</th>
                                        <td scope="col">45</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 104
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="45" id="45" onclick="ViewCTHD(45)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_44">
                                        <th scope="col">147</th>
                                        <td scope="col">44</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="44" id="44" onclick="ViewCTHD(44)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_44">
                                        <th scope="col">148</th>
                                        <td scope="col">44</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="44" id="44" onclick="ViewCTHD(44)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_44">
                                        <th scope="col">149</th>
                                        <td scope="col">44</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="44" id="44" onclick="ViewCTHD(44)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_44">
                                        <th scope="col">150</th>
                                        <td scope="col">44</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="44" id="44" onclick="ViewCTHD(44)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_44">
                                        <th scope="col">151</th>
                                        <td scope="col">44</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="44" id="44" onclick="ViewCTHD(44)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_44">
                                        <th scope="col">152</th>
                                        <td scope="col">44</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="44" id="44" onclick="ViewCTHD(44)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_43">
                                        <th scope="col">153</th>
                                        <td scope="col">43</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="43" id="43" onclick="ViewCTHD(43)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_43">
                                        <th scope="col">154</th>
                                        <td scope="col">43</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="43" id="43" onclick="ViewCTHD(43)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_43">
                                        <th scope="col">155</th>
                                        <td scope="col">43</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="43" id="43" onclick="ViewCTHD(43)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_43">
                                        <th scope="col">156</th>
                                        <td scope="col">43</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="43" id="43" onclick="ViewCTHD(43)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_43">
                                        <th scope="col">157</th>
                                        <td scope="col">43</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">09/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="43" id="43" onclick="ViewCTHD(43)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">158</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">159</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">160</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">161</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">162</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">163</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">164</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">165</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">166</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">167</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_42">
                                        <th scope="col">168</th>
                                        <td scope="col">42</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="42" id="42" onclick="ViewCTHD(42)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_41">
                                        <th scope="col">169</th>
                                        <td scope="col">41</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="41" id="41" onclick="ViewCTHD(41)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_40">
                                        <th scope="col">170</th>
                                        <td scope="col">40</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="40" id="40" onclick="ViewCTHD(40)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_40">
                                        <th scope="col">171</th>
                                        <td scope="col">40</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="40" id="40" onclick="ViewCTHD(40)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_40">
                                        <th scope="col">172</th>
                                        <td scope="col">40</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="40" id="40" onclick="ViewCTHD(40)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_40">
                                        <th scope="col">173</th>
                                        <td scope="col">40</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="40" id="40" onclick="ViewCTHD(40)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_40">
                                        <th scope="col">174</th>
                                        <td scope="col">40</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="40" id="40" onclick="ViewCTHD(40)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_39">
                                        <th scope="col">175</th>
                                        <td scope="col">39</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="39" id="39" onclick="ViewCTHD(39)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_39">
                                        <th scope="col">176</th>
                                        <td scope="col">39</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="39" id="39" onclick="ViewCTHD(39)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_38">
                                        <th scope="col">177</th>
                                        <td scope="col">38</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="38" id="38" onclick="ViewCTHD(38)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_37">
                                        <th scope="col">178</th>
                                        <td scope="col">37</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="37" id="37" onclick="ViewCTHD(37)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">179</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">180</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">181</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">182</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">183</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">184</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">185</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">186</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">187</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">188</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">189</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">190</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_36">
                                        <th scope="col">191</th>
                                        <td scope="col">36</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">03/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="36" id="36" onclick="ViewCTHD(36)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_35">
                                        <th scope="col">192</th>
                                        <td scope="col">35</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">02/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 401
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="35" id="35" onclick="ViewCTHD(35)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_34">
                                        <th scope="col">193</th>
                                        <td scope="col">34</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">02/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="34" id="34" onclick="ViewCTHD(34)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_34">
                                        <th scope="col">194</th>
                                        <td scope="col">34</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">02/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="34" id="34" onclick="ViewCTHD(34)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_32">
                                        <th scope="col">195</th>
                                        <td scope="col">32</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">01/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="32" id="32" onclick="ViewCTHD(32)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_32">
                                        <th scope="col">196</th>
                                        <td scope="col">32</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">01/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="32" id="32" onclick="ViewCTHD(32)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_32">
                                        <th scope="col">197</th>
                                        <td scope="col">32</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">01/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="32" id="32" onclick="ViewCTHD(32)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_32">
                                        <th scope="col">198</th>
                                        <td scope="col">32</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">01/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 202
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="32" id="32" onclick="ViewCTHD(32)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_31">
                                        <th scope="col">199</th>
                                        <td scope="col">31</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">01/05/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 302
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="31" id="31" onclick="ViewCTHD(31)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_30">
                                        <th scope="col">200</th>
                                        <td scope="col">30</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">30/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 303
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="30" id="30" onclick="ViewCTHD(30)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_30">
                                        <th scope="col">201</th>
                                        <td scope="col">30</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">30/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 303
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="30" id="30" onclick="ViewCTHD(30)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_28">
                                        <th scope="col">202</th>
                                        <td scope="col">28</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">30/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="28" id="28" onclick="ViewCTHD(28)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_28">
                                        <th scope="col">203</th>
                                        <td scope="col">28</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">30/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 102
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="28" id="28" onclick="ViewCTHD(28)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_27">
                                        <th scope="col">204</th>
                                        <td scope="col">27</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">30/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="27" id="27" onclick="ViewCTHD(27)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_27">
                                        <th scope="col">205</th>
                                        <td scope="col">27</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">30/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 101
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="27" id="27" onclick="ViewCTHD(27)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_26">
                                        <th scope="col">206</th>
                                        <td scope="col">26</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">29/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 302
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="26" id="26" onclick="ViewCTHD(26)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_25">
                                        <th scope="col">207</th>
                                        <td scope="col">25</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">29/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 201
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="25" id="25" onclick="ViewCTHD(25)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_25">
                                        <th scope="col">208</th>
                                        <td scope="col">25</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">29/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 201
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="25" id="25" onclick="ViewCTHD(25)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>
                                    <tr id="row_24">
                                        <th scope="col">209</th>
                                        <td scope="col">24</td>
                                        <td scope="col">Nguyễn Văn Cường</td>
                                        <td scope="col">29/04/2019</td>
                                        <td scope="col">00:00</td>
                                        <td scope="col">
                                            00:00
                                        </td>
                                        <td>
                                            b&#224;n 201
                                        </td>

                                        <td>
                                            <a class="btn btn-success btn-sm" data-id="24" id="24" onclick="ViewCTHD(24)" style="color:white;padding:0px 8px"><i class="fas fa-eye"></i></a>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>

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

