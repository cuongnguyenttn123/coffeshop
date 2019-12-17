<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 09:05 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <!-- Bootstrap CSS -->
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
                                Quản lí Tài khoản</h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->



                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <h3 class="card-header">Danh sách nhân viên</h3>

                            <div class="card-body">
                                <form action="/Admin/User" method="get">                    <div class="row">
                                    <div class="col-md-5">
                                        <input type="text" class="form-control" name="seaching" placeholder="Tìm kiếm theo tên" />
                                    </div>
                                    <div class="col-md-5">
                                        <button type="submit" class="btn btn-info active btn-sm"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button>
                                        <a href="/admin/employee/add" type="submit" class="btn btn-primary active btn-sm"><i class="fas fa-plus"></i>&nbsp;Thêm mới</a>

                                    </div>
                                </div>
                                </form>                <br />
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th scope="col">STT</th>
                                        <th scope="col">Tên Đăng nhập</th>
                                        <th scope="col">Họ tên</th>
                                        <th scope="col">Địa chỉ</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Quyền hạn</th>
                                        <th scope="col">Trạng thái</th>
                                        <th scope="col">Thao tác</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                            <%! int i = 0; %>
                                    <c:forEach items="${emp}" var="emp">
                                        <tr id="row_${emp.getId()}">
                                            <td>${i = i +1 }</td>
                                        <td>${emp.getUserName()}</td>
                                        <td>${emp.getName()}</td>
                                        <td>${emp.getAddress()}</td>
                                        <td>${emp.getEmail()}</td>
                                        <td></td>
                                        <td>
                                            <a href="#" class="btn-active" data-id="1">K&#237;ch hoạt</a>
                                        </td>
                                        <td>
                                            <a href="/admin/employee/edit/1" name="Food_id" class="btn btn-success btn-sm col-sm-6"><i class="fas fa-edit"></i>Cập nhập</a>
                                            &nbsp;|&nbsp;
                                            <a class="btn btn-warning btn-sm col-4" id="1" onclick="clik(${emp.getId()})" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                    <%--
                                    <tr id="row_6">
                                        <td>4</td>
                                        <td>Hung</td>
                                        <td>Quang Hưng</td>
                                        <td>Bn</td>
                                        <td>hung@gmail.com</td>
                                        <td>Chế biến</td>
                                        <td>
                                            <a href="#" class="btn-active" data-id="6">K&#237;ch hoạt</a>
                                        </td>
                                        <td>
                                            <a href="/Admin/User/Edit/6" name="Food_id" class="btn btn-success btn-sm col-sm-6"><i class="fas fa-edit"></i>Cập nhập</a>
                                            &nbsp;|&nbsp;
                                            <a class="btn btn-warning btn-sm col-4" id="6" onclick="clik(6)" style="color:white;"><i class="fas fa-trash-alt"></i>Xóa</a>
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
                                            <li class="page-item"><a class="page-link" href="/admin/employee?page=${i}">${i}</a></li>
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
                    function clik(id) {
                        var iddelete =
                            {
                                id: id
                            }
                        var x = confirm("Bạn có muốn xóa bản ghi?");
                        if (x) {
                            $.ajax({
                                url: '/admin/employee/delete',
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

