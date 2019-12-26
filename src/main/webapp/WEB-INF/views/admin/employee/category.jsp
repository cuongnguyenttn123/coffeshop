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
                            <form action="/user/category" method="get">                <div class="row">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" style="margin-left:1.5em;" name="seaching" placeholder="Tìm kiếm theo tên" />
                                </div>
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-info active btn-sm col-3"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button> &nbsp;&nbsp;
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

                                </tr>
                                </thead>
                                <tbody>
                                <%  int i = 0; %>
                                <c:forEach items="${foodcategories}" var="foodcategory">
                                    <tr id="row_${foodcategory.getId()}">
                                        <th >1</th>
                                        <td >${foodcategory.getName()}</td>
                                        <td >${foodcategory.getDescription()}</td>
                                        <td>
                                            <a href="#" class="btn-active" data-id="1">K&#237;ch hoạt</a>
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
                                        <li class="page-item"><a class="page-link" href="/admin/category?page=${i}">${i}</a></li>
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
                <div id="modal-wrapper-Del" class="modal">
                    <form action="/Admin/FoodCategory/Delete" class="modal-contentDel animateDel" method="post"><input name="__RequestVerificationToken" type="hidden" value="NiRATKSC1VMwACtuZnBzM8nr5KMJtpIRzs1k6mjAQzCvIn6mdpCtbxXKEaaP9hWrLqUalztCt7f5INVBERpxpUppNPLuuKqa1BdgMwQncaQ1" />        <div class="container-confirm">
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

