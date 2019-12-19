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
                                <form action="/admin/dvt" method="post">
                                    <div class="row">
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
                                </form>
                                <table class="table table-bordered">
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
                                <%! int i = 0; %>
                                <c:forEach items="${dvts}" var="dvt">

                                    <tr id="row_${dvt.getId()}">
                                        <th><% i ++; %> ${i}</th>
                                        <td>${dvt.getName()}</td>
                                        <td>${dvt.getDescription()}</td>
                                        <td>
                                            <a href="#" class="btn-active" data-id="2">K&#237;ch hoạt</a>
                                        </td>
                                        <td>
                                            <a class="btn btn-success btn-sm Update col-6" onclick="UpdateMC(${dvt.getId()})" data-id="${dvt.getId()}" style="color:#fff;"><i class="fas fa-edit"></i>Cập nhật</a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm col-4" id="2" onclick="DeleteMate(${dvt.getId()})" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
                                        </td>

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
                                            <li class="page-item"><a class="page-link" href="/admin/dvt?page=${i}">${i}</a></li>
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
                    <div id="modal-wrapper" class="modal">
                        <form action="/admin/dvt/edit" class="modal-content animate" method="post">
                            <div class="imgcontainer">
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
                        <form action="/admin/dvt/delete" class="modal-contentDel animateDel" method="get">
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
                            url: '/admin/dvt/edit',
                            data:
                                { id: id },
                            type: 'GET',
                            dataType: 'json',
                            success: function (response) {
                                $('#DVTName').val(response.DVT_Name);
                                $('#ckStatus').prop('checked', response.status);
                                $('.DVT_Des').val(response.Descreption);
                                DvtID = response.id;
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
                            url: '/admin/dvt/edit',
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
                                url: '/admin/dvt/delete',
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

