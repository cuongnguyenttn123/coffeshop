<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 08:58 CH
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
                                Nhóm thực đơn
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
                            <h5 class="card-header fas fa-coffee">&nbsp; Quản lí thực đơn</h5><br/>
                            <form action="/Admin/FoodCategory" method="get">                <div class="row">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" style="margin-left:1.5em;" name="seaching" placeholder="Tìm kiếm theo tên" />
                                </div>
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-info active btn-sm col-3"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button> &nbsp;&nbsp;
                                    <a href="/admin/category/add" class="btn btn-primary active btn-sm col-3"><i class="fas fa-plus"></i>&nbsp;Thêm mới</a>
                                </div>
                            </div>
                            </form>            <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th style="width:1em">STT</th>
                                    <th scope="col" style="width:13em">Tên nhóm</th>
                                    <th scope="col" style="width:25em">Mô tả</th>
                                    <th scope="col" style="width:9em">Trạng thái</th>
                                    <th scope="col">Thao tác</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${foodcategories}" var="foodcategory">
                                    <tr id="row_${foodcategory.getId()}">
                                        <th >1</th>
                                        <td >${foodcategory.getName()}</td>
                                        <td >${foodcategory.getDescription()}</td>
                                        <td>
                                            <a href="#" class="btn-active" data-id="1">K&#237;ch hoạt</a>
                                        </td>
                                        <td >
                                            <a href="/admin/category/edit/${foodcategory.getId()}" class="btn btn-success btn-sm col-5"><i class="fas fa-edit"></i>&nbsp;Cập nhật</a>
                                            <Strong>|</Strong>
                                            <a class="btn btn-warning btn-sm col-5" id="1" onclick="clik(${foodcategory.getId()})" style="color:white;"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>
                                    </tr>
                                </c:forEach>


                                <%--<tr id="row_2">
                                    <th >2</th>
                                    <td >SINH TỐ</td>
                                    <td ></td>
                                    <td>
                                        <a href="#" class="btn-active" data-id="2">K&#237;ch hoạt</a>
                                    </td>
                                    <td >
                                        <a href="/Admin/FoodCategory/Edit/2" class="btn btn-success btn-sm col-5"><i class="fas fa-edit"></i>&nbsp;Cập nhật</a>
                                        <Strong>|</Strong>
                                        <a class="btn btn-warning btn-sm col-5" id="2" onclick="clik(2)" style="color:white;"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                    </td>
                                </tr>
                                --%>


                                </tbody>
                            </table>
                            <div class="pagination-container"><ul class="pagination"><li class="active"><a>1</a></li><li><a href="/Admin/FoodCategory?page=2">2</a></li><li><a href="/Admin/FoodCategory?page=3">3</a></li><li class="PagedList-skipToNext"><a href="/Admin/FoodCategory?page=2" rel="next">»</a></li></ul></div>

                        </div>
                        </div>
                    </div>
                </div>
                <div id="modal-wrapper-Del" class="modal">
                    <form action="/admin/category/delete" class="modal-contentDel animateDel" method="post"><input name="__RequestVerificationToken" type="hidden" value="icz2SQE98VWMkU1tG7qp8X5xre9bGMggExEWy_kKsikHASlMN0yU6JLA3hG_V38NmKLq6aXgGqUOG-ImBj7W5snPwrYzSfN1OXg8bQBSnF81" />        <div class="container-confirm">
                        <div class="title-main">Xác nhận xóa</div>
                        <div class="title-content">
                            <div class="content-titlt">Bạn có đồng ý xóa ?</div>
                            <div class="content-confrim">
                                <a class="btnCf-cancel" onclick="document.getElementById('modal-wrapper-Del').style.display = 'none'">Hủy</a>
                                <button class="btnCf-yes" type="submit" onclick="dongy(idfood)" id="DeleteF">Đồng ý</button>
                            </div>
                        </div>
                    </div>
                    </form></div>

                <script>

                    function clik(id) {
                        document.getElementById('modal-wrapper-Del').style.display = 'block';
                        $('#DeleteF').click(function (e) {
                            var iddelete =
                                {
                                    id: id
                                }
                            $.ajax({
                                url: '/admin/category/delete',
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

