<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 08:57 CH
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
                                Phòng bàn
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->


                <div class="row">

                    <div class="col-lg-12">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp; Tạo bàn</h4>
                            <div class="card-body">
                                <form action="/admin/table" method="post">
                                    <div class="col-5" style="float:left;">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col- col-lg-3 col-form-label text-md-left">Tên Bàn <span>*</span></label>
                                            <div class="col-9 col-lg-8">
                                                <input type="text" class="form-control " name="TableFood_name" id="validationCustomUsername" placeholder="nhập tên bàn" aria-describedby="inputGroupPrepend" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-5" style="float:left;">
                                        <div class="form-group row">
                                            <label for="inputWebSite" class="col-3 col-lg-3 col-form-label text-md-left">Khu vực *</label>
                                            <div class="col-9 col-lg-6 ">

                                                <select class="nav-link dropdown-toggle" id="idarea" name="idArea"><option value="">--Chọn khu vực--</option>
                                                    <c:forEach items="${areas}" var="area">

                                                        <option value="${area.getId()}">${area.getName()}</option>
                                                    </c:forEach>

                                                </select>

                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-2" style="float:left;">
                                        <div class="form-group row">
                                            <label class="col-3 col-lg-3 col-form-label text-right">
                                                Trạng thái *
                                            </label>
                                            <div class="col-9 col-lg-6 " style="padding-top: 8px;margin-left:22px">
                                                <input data-val="true" data-val-required="The isNewlyEnrolled field is required." id="status" name="status" type="checkbox" value="true" style="margin-left:25px" />
                                            </div>
                                            <label id="stttb"></label>
                                        </div>
                                    </div>
                                    <div class="pt-2 pt-sm-5 mt-1">
                                        <div class="col-sm-6 pl-0">
                                            <p class="text-success">
                                                <button type="submit" class="btn btn-space btn-primary" id="tablefood"><i class="fas fa-plus"></i>&nbsp;Tạo mới</button>
                                            </p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp; Danh sách bàn</h4><br />
                            <form action="/Admin/TableFood" method="get">                <div class="row">
                                <div class="col-4">
                                    <input type="text" placeholder="Tìm kiếm theo tên" class="form-control" name="seaching" style="border-radius:0.2em;margin-left: 1.5em;" />
                                </div>
                                <div class="col">
                                    <button type="submit" class="btn btn-info active btn-sm" style="border-radius:0.2em"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button>
                                </div>
                            </div>
                            </form>            <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th scope="col">STT</th>
                                    <th scope="col">Khu vực</th>
                                    <th scope="col">Tên Bàn</th>
                                    <th scope="col">Trạng thái</th>
                                    <th scope="col">Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${tables}" var="table">
                                    <tr id="row_${table.getId()}">
                                        <th>1</th>
                                        <td>${table.getArea().getName()}</td>
                                        <td>${table.getName()}</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="49">

                                                <c:choose>
                                                    <c:when test="${table.getStatus() ==0}">
                                                        Kích Hoạt
                                                    </c:when>
                                                    <c:otherwise>
                                                        Khóa
                                                    </c:otherwise>
                                                </c:choose>
                                            </a>
                                        </td>
                                        <td>
                                            <a href="/admin/table/edit/${table.getId()}" class="btn btn-success btn-sm"><i class="fas fa-edit"></i>&nbsp;Cập nhập</a>
                                            &nbsp;|&nbsp;
                                            <a class="btn btn-warning btn-sm" id="${table.getId()}" onclick="clik(${table.getId()})" style="color:white;"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                <%--<tr id="row_48">
                                    <th>2</th>
                                    <td>Tầng 3</td>
                                    <td>b&#224;n 304</td>
                                    <td scope="col">
                                        <a href="#" class="btn-active" data-id="48">K&#237;ch hoạt</a>
                                    </td>
                                    <td>
                                        <a href="/Admin/TableFood/Edit/48" class="btn btn-success btn-sm"><i class="fas fa-edit"></i>&nbsp;Cập nhập</a>
                                        &nbsp;|&nbsp;
                                        <a class="btn btn-warning btn-sm" id="48" onclick="clik(48)" style="color:white;"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                    </td>
                                </tr>--%>


                                </tbody>
                            </table>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                                    </li>
                                    <c:forEach var="i" begin="1" end="${count}">
                                        <li class="page-item"><a class="page-link" href="/admin/table?page=${i}">${i}</a></li>
                                    </c:forEach>
                                    <li class="page-item">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div></div>
                        </div>
                    </div>

                </div>
                <script>
                    $('#tablefood').click(function (e) {
                        var area = $('#idarea').val();
                        var stt = $('#status').prop('checked');
                        if (area == 0)
                        {

                            alert("bạn cần chọn khu vực");
                            e.preventDefault();
                        }
                        else if(stt == false)
                        {
                            alert("bạn cần chọn trạng thái");

                            e.preventDefault();
                        }
                        else {
                            $("[data-valmsg-for='idArea']").text("");
                            e.preventDefault.remove();
                        }

                    })
                    function clik(id) {
                        var iddelete =
                            {
                                id: id
                            }
                        var x = confirm("Bạn có muốn xóa bản ghi?");
                        if (x) {
                            $.ajax({
                                url: '/admin/table/delete',
                                type: 'POST',
                                data: iddelete,
                                conform: "Bạn có muốn xóa bản ghi",
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

