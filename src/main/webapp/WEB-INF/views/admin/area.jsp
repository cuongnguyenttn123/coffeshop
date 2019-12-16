<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 08:56 CH
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
                                Khu vực
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->


                <div class="row">
                    <!-- ============================================================== -->
                    <!-- bordered table -->
                    <!-- ============================================================== -->
                    <div class="col-lg-8">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp;Thêm Khu vực</h4>
                            <div class="card-body">
                                <form action="/admin/area" method="post">
                                    <div class="row">
                                    <label for="T_n_khu_v_c__" style="padding-top:7px;">T&#234;n khu vực *</label>
                                    <div class="col">
                                        <div class="input-group">
                                            <input type="text" class="form-control " name="AreaName" id="validationCustomUsername" placeholder="Khu vực" aria-describedby="inputGroupPrepend" required>
                                            <div class="invalid-feedback">
                                                Please choose a username.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <button type="submit" id="btncreate" class="btn btn-primary active btn-sm"><i class="fas fa-plus"></i>&nbsp;Thêm mới</button>

                                    </div>
                                </div>
                                </form>            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp; Khu vực</h4>
                            <div class="card-body">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th scope="col">STT</th>
                                        <th scope="col">Khu vực</th>
                                        <th scope="col">Thao tác</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${areas}" var="area">
                                        <tr id="row_${area.getId()}">
                                            <th scope="row">1</th>
                                            <form action="/admin/area/edit" method="post">
                                                <td>
                                                <input type="hidden" name="Area_id" value="${area.getId()}" />
                                                <input type="text" value="${area.getName()}" name="AreaName" class="col-lg-8" />
                                            </td>
                                                <td>
                                                    <button type="submit" class="btn btn-success btn-sm" data-id="capNhatArea"><i class="fas fa-edit"></i>&nbsp;Cập nhật</button>

                                                    &nbsp;|&nbsp;
                                                    <a class="btn btn-warning btn-sm" id="${area.getId()}" onclick="clik(${area.getId()})" style="color:white;"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>

                                                </td>
                                            </form>
                                        </tr>
                                    </c:forEach>


                                    <%--<tr id="row_7">

                                        <th scope="row">4</th>


                                        <form action="/Admin/Area/Edit" method="post">                                        <td>
                                            <input type="hidden" name="Area_id" value="7" />
                                            <input type="text" value="tầng 4" name="AreaName" class="col-lg-8" />
                                        </td>
                                            <td>
                                                <button type="submit" class="btn btn-success btn-sm" data-id="capNhatArea"><i class="fas fa-edit"></i>&nbsp;Cập nhật</button>

                                                &nbsp;|&nbsp;
                                                <a class="btn btn-warning btn-sm" id="7" onclick="clik(7)" style="color:white;"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>

                                            </td>
                                        </form>                                </tr>--%>

                                    </tbody>
                                </table>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-center">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" tabindex="-1">Previous</a>
                                        </li>
                                        <c:forEach var="i" begin="1" end="${count}">
                                            <li class="page-item"><a class="page-link" href="/admin/bill?page=${i}">${i}</a></li>
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
                </div>
                <script>
                    function clik(id) {
                        var iddelete =
                            {
                                id: id
                            }
                        var x = confirm("Bạn có muốn xóa bản ghi?");
                        if (x) {
                            $.ajax({
                                url: '/admin/area/delete',
                                type: 'POST',
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
                            });
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
<jsp:include page="common/jsLibrary.jsp"/>


</body>

</html>

