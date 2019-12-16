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
                                    <tr id="row_1">
                                        <th scope="col">1</th>
                                        <td scope="col">Bạc xỉu</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="1">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_4">
                                        <th scope="col">2</th>
                                        <td scope="col">C&#224; ph&#234; sữa </td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">20.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="4">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_5">
                                        <th scope="col">3</th>
                                        <td scope="col">C&#224; ph&#234;n đen</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">20.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="5">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_6">
                                        <th scope="col">4</th>
                                        <td scope="col">C&#224; ph&#234; đ&#225; xay</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="6">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_7">
                                        <th scope="col">5</th>
                                        <td scope="col">C&#224; Ph&#234; Socola Đ&#225; Xay</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="7">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_8">
                                        <th scope="col">6</th>
                                        <td scope="col">C&#224; Ph&#234; Sinh Tố Dừa</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="8">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_21">
                                        <th scope="col">7</th>
                                        <td scope="col">Sinh Tố Xo&#224;i</td>
                                        <td scope="col">SINH TỐ</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="21">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_22">
                                        <th scope="col">8</th>
                                        <td scope="col">Sinh Tố Dưa Hấu</td>
                                        <td scope="col">SINH TỐ</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="22">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_23">
                                        <th scope="col">9</th>
                                        <td scope="col">Sinh Tố Bơ</td>
                                        <td scope="col">SINH TỐ</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">30.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="23">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>
                                    <tr id="row_24">
                                        <th scope="col">10</th>
                                        <td scope="col">Sinh Tố M&#227;ng Cầu</td>
                                        <td scope="col">SINH TỐ</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">30.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="24">K&#237;ch hoạt</a>
                                        </td>

                                    </tr>

                                    </tbody>
                                </table>
                                <div class="pagination-container"><ul class="pagination"><li class="active"><a>1</a></li><li><a href="/Admin/Food?page=2&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">2</a></li><li><a href="/Admin/Food?page=3&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">3</a></li><li><a href="/Admin/Food?page=4&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">4</a></li><li><a href="/Admin/Food?page=5&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">5</a></li><li><a href="/Admin/Food?page=6&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">6</a></li><li class="PagedList-skipToNext"><a href="/Admin/Food?page=2&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList" rel="next">»</a></li></ul></div>
                            </div>
                        </div>
                    </div>
                    <div id="modal-wrapper" class="modal">
                        <form action="/Admin/Food/Update" class="modal-content animate" method="post"><input name="__RequestVerificationToken" type="hidden" value="t6IX94UsgdzkGn8bZDnqVaF0m5fYEMWxQe6xRaKA4lmqmVf8SWEdskF9h0gXVFpOrDp9ZRXrNZWIy0gFu9pdzeiSbsHsMrOVC-iK8sioa3Q1" />            <div class="imgcontainer">
                            <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
                            <h1 style="text-align:center;color:#007bff">Cập nhật món ăn</h1>
                        </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">Tên món:</label>
                                            <div class="col-7">
                                                <input type="text" placeholder="Enter Username" id="FoodName" class="text col" name="Food_name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">Giá:</label>
                                            <div class="col-7">
                                                <input type="text" placeholder="Enter Password" id="Price" class="text" name="price">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">Nhóm đồ uống:</label>
                                            <div class="col-7">
                                                <select class="nav-link dropdown-toggle" id="DanhMuc" name="idCategory" style="padding: 0.3em 5.4em 0.3em 1em;"><option value="">--Chọn danh mục--</option>
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
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">DVT:</label>
                                            <div class="col-7">
                                                <select class="nav-link dropdown-toggle" id="DVT" name="idDVT" style="padding: 0.3em 7.1em 0.3em 1em; "><option value="">--Chọn danh mục--</option>
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
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">Trạng thái:</label>
                                            <div class="col-7">
                                                <input type="checkbox" name="status" class="checkbox1" id="ckStatus" />
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <button type="submit" class="button" id="submit">Save</button>
                            </div>
                        </form>    </div>
                    <div id="modal-wrapper-Del" class="modal">
                        <form action="/Admin/Food/Delete" class="modal-contentDel animateDel" method="post"><input name="__RequestVerificationToken" type="hidden" value="xinw3Q33ARnVGLqb2rE3ZPuX8bOPFCq-wyvMnVdV9mMdTPa4ifQotlT_MaKRz0j3jJ0kcHLXnWob3R1BxCykmee6tNHf0kkJ90zGV8AGWXM1" />            <div class="container-confirm">
                            <div class="title-main">Xác nhận xóa</div>
                            <div class="title-content">
                                <div class="content-titlt">Bạn có đồng ý xóa ?</div>
                                <div class="content-confrim">
                                    <a class="btnCf-cancel" onclick="document.getElementById('modal-wrapper-Del').style.display = 'none'">Hủy</a>
                                    <button class="btnCf-yes" type="submit" onclick="dongy(idfood)" id="DeleteF">Đồng ý</button>
                                </div>
                            </div>
                        </div>
                        </form>    </div>
                </div>



                <script>
                    var foodId = 0;
                    var Deleteid = 0;
                    var idfood = 0;
                    //sự kiện xóa
                    $('#creatCate').click(function(e) {
                        var x = $('#iddvt').val();
                        var y = $('#cate').val();
                        var z = $('#status').prop('checked');
                        if(y==0)
                        {
                            alert('Bạn Cần chọn danh mục');
                            e.preventDefault();
                        }else if(x==0)
                        {
                            alert('Bạn Cần chọn đơn vị tính');
                            e.preventDefault();

                        }else if(z== false)
                        {
                            alert('Bạn Cần chọn trạng thái');
                            e.preventDefault();
                        }
                        else
                        {
                            e.preventDefault.remove();
                        }
                    })
                    function isNumberKey(evt) {
                        var charCode = (evt.which) ? evt.which : event.keyCode;
                        if (charCode == 59 || charCode == 46)
                            return true;
                        if (charCode > 31 && (charCode < 48 || charCode > 57))
                            return false;
                        return true;
                    }
                    function DeleteFood(element, id) {
                        document.getElementById('modal-wrapper-Del').style.display = 'block';
                        $('#DeleteF').click(function (e) {
                            var iddelete =
                                {
                                    id: id
                                }
                            $.ajax({
                                url: '/Admin/Food/Delete',
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


                    // If user clicks anywhere outside of the modal, Modal will close

                    var modal = document.getElementById('modal-wrapper');
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                    //Bind giữ liệu lên popup
                    function UpdateFood(id) {
                        document.getElementById('modal-wrapper').style.display = 'block';
                        $.ajax({
                            url: '/Admin/Food/Edit',
                            data:
                                { id: id },
                            type: 'GET',
                            dataType: 'json',
                            success: function (response) {
                                var data = response.data;
                                $('#FoodName').val(data.Food_name);
                                $('#Price').val(data.price);
                                $('#ckStatus').prop('checked', data.status);
                                $('#DanhMuc').val(data.idCategory);
                                $('#DVT').val(data.idDVT);
                                foodId = id;
                            },
                            error: function () {
                                alert('Lỗi rồi');
                            }
                        })
                    }
                    //update dữ liệu...
                    $('#submit').click(function (e) {
                        //call ajax
                        var foodName = $('#FoodName').val();
                        var price = $('#Price').val();
                        var stt = $('#ckStatus').prop('checked');
                        var danhmuc = $('#DanhMuc').val();
                        var dvt = $('#DVT').val();
                        var food_id = foodId;
                        var url = 'Admin/Food/Index';
                        var Food = {
                            Food_id: food_id,
                            Food_name: foodName,
                            price: price,
                            status: stt,
                            idCategory: danhmuc,
                            idDVT: dvt
                        }
                        $.ajax({
                            url: '/Admin/Food/Update',
                            type: 'POST',
                            data: Food,
                            success: function () {
                                document.getElementById('modal-wrapper').style.display = 'none';
                                window.location.reload();
                            },
                            error: function () {
                                alert('error');
                            }
                        })
                        e.preventDefault();
                    })

                    //=====================DELETE===================
                    var modal = document.getElementById('modal-wrapper-Del');
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
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

