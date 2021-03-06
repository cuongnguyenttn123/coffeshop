<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

                                </tr>
                                </thead>
                                <tbody>
                                <%! int i = 0; %>
                                <c:forEach items="${dvts}" var="dvt">

                                    <tr id="row_${dvt.getId()}">
                                        <th>${ i = i+ 1}</th>
                                        <td>${dvt.getName()}</td>
                                        <td>${dvt.getDescription()}</td>
                                        <td>
                                            <a href="#" class="btn-active" data-id="2">K&#237;ch hoạt</a>
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
                    <div id="modal-wrapper" class="modal">
                        <form action="/Admin/DVT/Update" class="modal-content animate" method="post"><input name="__RequestVerificationToken" type="hidden" value="a9UJnertorToXoO8Bg9xzKl39Dz9yTvLzIIZ9EOOAjUN5YCkoH5OJ1SLnuWX5gGtayzg0RaCp4xVT2f7GKMybiCmd6Z-2jNgBykgXeEmljg1" />            <div class="imgcontainer">
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
                        <form action="/Admin/DVT/Delete" class="modal-contentDel animateDel" method="get"><input name="__RequestVerificationToken" type="hidden" value="R0GRO5sxFGv_kARqd3I7lVvP9qbYvOYixd5kzF07QX7fAtGiiLZudd2vF5PKUEe4TDRgLxlHisofWIrej04Wz3YvkDdnOhosL92ukFjJCiY1" />            <div class="container-confirm">
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
    <jsp:include page="common/footer.jsp"/>
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

