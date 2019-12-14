<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 08:59 CH
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
                                Đơn vị tính</h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <h5 class="card-header fas fa-coffee">&nbsp; Tạo nhóm nguyên liệu</h5>
                            <div class="card-body">
                                <form action="/Admin/DVT/Create" method="post">                        <div class="row">
                                    <div class="col-4">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-4 col-form-label text-left">Tên nhóm<span>*</span></label>
                                            <div class="col-8">
                                                <input type="text" class="form-control DVTName col" name="DVT_Name" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required style="border-radius:0.2em">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group row">
                                            <label for="inputWebSite" class="col-4 col-form-label text-left">Diễn giải:</label>
                                            <div class="col-8">
                                                <textarea rows="3" cols="30" class="DVT_Des col" name="Description" placeholder="Enter text here..."> </textarea>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group row">
                                            <label class="col-3 col-lg-3 col-form-label text-right">
                                                Trạng thái *
                                            </label>
                                            <div class="col-9 col-lg-6 " style="padding-top: 0.5em;margin-left:1.2em">
                                                <input data-val="true" data-val-required="The isNewlyEnrolled field is required." id="status" name="status" type="checkbox" value="true" style="margin-left:1.7em" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    <div class="pt-2 pt-sm-5 mt-1" style="padding-top: 0px !important;float: right;margin-right: 130px;">
                                        <div class="col-sm-6 pl-0">
                                            <p class="text-success">

                                                <button id="TaoNhomVL" class="btn btn-space btn-primary"><i class="fas fa-plus"></i>&nbsp;Tạo mới</button>
                                            </p>
                                        </div>
                                    </div>
                                </form>                </div>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="card">
                            <h5 class="card-header fas fa-coffee">&nbsp; Quản lí nhóm nguyên liệu</h5>
                            <div class="card-body">
                                <form action="/Admin/DVT" method="get">                    <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="seaching" placeholder="Tìm kiếm theo tên" />
                                    </div>
                                    <div class="col-md-4">
                                        <button type="submit" class="btn btn-info active btn-sm"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button> &nbsp;&nbsp;
                                    </div>
                                </div><br />
                                </form>                <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th scope="col" style="width:1em">STT</th>
                                    <th scope="col" style="width:13em">Tên nhóm</th>
                                    <th scope="col" style="width:19em">Mô tả</th>
                                    <th scope="col" style="width:13em">Trạng thái</th>
                                    <th scope="col">Thao tác</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr id="row_2">
                                    <th>1</th>
                                    <td>Cốc</td>
                                    <td></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="2">K&#237;ch hoạt</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-success btn-sm Update col-6" onclick="UpdateMC(2)" data-id="2" style="color:#fff;"><i class="fas fa-edit"></i>Cập nhật</a>
                                        <strong>|</strong>
                                        <a class="btn btn-warning btn-sm col-4" id="2" onclick="DeleteMate(2)" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
                                    </td>

                                </tr>
                                <tr id="row_3">
                                    <th>2</th>
                                    <td>Chai</td>
                                    <td></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="3">K&#237;ch hoạt</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-success btn-sm Update col-6" onclick="UpdateMC(3)" data-id="3" style="color:#fff;"><i class="fas fa-edit"></i>Cập nhật</a>
                                        <strong>|</strong>
                                        <a class="btn btn-warning btn-sm col-4" id="3" onclick="DeleteMate(3)" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
                                    </td>

                                </tr>
                                <tr id="row_5">
                                    <th>3</th>
                                    <td>Đĩa</td>
                                    <td></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="5">K&#237;ch hoạt</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-success btn-sm Update col-6" onclick="UpdateMC(5)" data-id="5" style="color:#fff;"><i class="fas fa-edit"></i>Cập nhật</a>
                                        <strong>|</strong>
                                        <a class="btn btn-warning btn-sm col-4" id="5" onclick="DeleteMate(5)" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
                                    </td>

                                </tr>
                                <tr id="row_6">
                                    <th>4</th>
                                    <td>Lon</td>
                                    <td></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="6">K&#237;ch hoạt</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-success btn-sm Update col-6" onclick="UpdateMC(6)" data-id="6" style="color:#fff;"><i class="fas fa-edit"></i>Cập nhật</a>
                                        <strong>|</strong>
                                        <a class="btn btn-warning btn-sm col-4" id="6" onclick="DeleteMate(6)" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
                                    </td>

                                </tr>
                                <tr id="row_7">
                                    <th>5</th>
                                    <td>G&#243;i</td>
                                    <td></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="7">K&#237;ch hoạt</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-success btn-sm Update col-6" onclick="UpdateMC(7)" data-id="7" style="color:#fff;"><i class="fas fa-edit"></i>Cập nhật</a>
                                        <strong>|</strong>
                                        <a class="btn btn-warning btn-sm col-4" id="7" onclick="DeleteMate(7)" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
                                    </td>

                                </tr>
                                <tr id="row_8">
                                    <th>6</th>
                                    <td>Gram</td>
                                    <td></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="8">K&#237;ch hoạt</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-success btn-sm Update col-6" onclick="UpdateMC(8)" data-id="8" style="color:#fff;"><i class="fas fa-edit"></i>Cập nhật</a>
                                        <strong>|</strong>
                                        <a class="btn btn-warning btn-sm col-4" id="8" onclick="DeleteMate(8)" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
                                    </td>

                                </tr>


                                </tbody>
                            </table>

                                <div class="pagination-container"><ul class="pagination"><li class="active"><a>1</a></li><li><a href="/Admin/DVT?page=2">2</a></li><li class="PagedList-skipToNext"><a href="/Admin/DVT?page=2" rel="next">»</a></li></ul></div>
                            </div>
                        </div>
                    </div>
                    <div id="modal-wrapper" class="modal">
                        <form action="/Admin/DVT/Update" class="modal-content animate" method="post"><input name="__RequestVerificationToken" type="hidden" value="RsP70RuCRK4cmb6wveuIJfyGUsJIs7tp1XP7myU99ihK1H-_ZziXVi_NV1i_UA-j9jfZw6cY8OHH9KIVGMiS5jvUUo8O0-arX95BSohRZZw1" />            <div class="imgcontainer">
                            <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
                            <h1 style="text-align:center;color:#007bff">Cập nhật món ăn</h1>
                        </div>
                            <div class="container">
                                <table>
                                    <tr>
                                        <td>Nhóm nguyên liệu:</td>
                                        <td><input type="text" placeholder="Enter Username" id="DVTName" class="text" name="DVT_Name"></td>
                                    </tr>
                                    <tr>
                                        <td>Diễn giải</td>
                                        <td>
                                            <textarea rows="3" cols="30" class="nav-link dropdown-toggle DVT_Des" name="Description" id="Diengiai" style="margin-left:26px;padding: 5px 81px 5px 16px;" placeholder="Enter text here..."> </textarea>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Trạng thái</td>
                                        <td><input type="checkbox" name="status" class="checkbox1" id="ckStatus" /></td>
                                    </tr>
                                </table>

                                <button type="submit" class="button" id="submit">Save</button>
                            </div>
                        </form>    </div>
                    <div id="modal-wrapper-Del" class="modal">
                        <form action="/Admin/DVT/Delete" class="modal-contentDel animateDel" method="get"><input name="__RequestVerificationToken" type="hidden" value="Vtya0FcPFbZJtBZ7dXIiqw3NxFhiELCUWmsJPTdDGbouGvD6MG7qAr7IhJAa5KLN33Sh_PL6zXCmvI1YFuRkK8oqaSGiDzZSqyC40kl4Jhs1" />            <div class="container-confirm">
                            <div class="title-main">Xác nhận xóa</div>
                            <div class="title-content">
                                <div class="content-titlt">Bạn có đồng ý xóa ?</div>
                                <div class="content-confrim">
                                    <a class="btnCf-cancel" onclick="document.getElementById('modal-wrapper-Del').style.display = 'none'">Hủy</a>
                                    <button class="btnCf-yes" type="submit" onclick="dongy(idfood)" id="DeleteM">Đồng ý</button>
                                </div>
                            </div>
                        </div>
                        </form>    </div>
                </div>
                <script>
                    var DvtID = 0;
                    var modal = document.getElementById('modal-wrapper');
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                    function UpdateMC(id) {
                        document.getElementById('modal-wrapper').style.display = 'block';
                        $.ajax({
                            url: '/Admin/DVT/Edit',
                            data:
                                { id: id },
                            type: 'GET',
                            dataType: 'json',
                            success: function (response) {
                                var data = response.data;
                                $('#DVTName').val(data.DVT_Name);
                                $('#ckStatus').prop('checked', data.status);
                                $('.DVT_Des').val(data.Descreption);
                                DvtID = id;
                            },
                            error: function () {
                                alert('Lỗi rồi');
                            }
                        })
                    }
                    //update dữ liệu...
                    $('#submit').click(function (e) {
                        //call ajax
                        var dvt = $('#DVTName').val();
                        var stt = $('#ckStatus').prop('checked');
                        var mota = $('#Diengiai').val();
                        var iddvt = DvtID;
                        var dvt = {
                            DVT_id: iddvt,
                            DVT_Name: dvt,
                            Descreption: mota,
                            status: stt,
                        }
                        $.ajax({
                            url: '/Admin/DVT/Update',
                            type: 'POST',
                            data: dvt,
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

                    //==============DELETE==============
                    var modal = document.getElementById('modal-wrapper-Del');
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                    function DeleteMate(id) {
                        document.getElementById('modal-wrapper-Del').style.display = 'block';

                        $('#DeleteM').click(function (e) {
                            var iddelete =
                                {
                                    id: id
                                }
                            $.ajax({
                                url: '/Admin/DVT/Delete',
                                type: 'GET',
                                data: iddelete,
                                OnComplete: function () {
                                    OnComplete: "$('#row_" + id + "').remove()"
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
<jsp:include page="common/jsLibrary.jsp"/>
</body>

</html>

