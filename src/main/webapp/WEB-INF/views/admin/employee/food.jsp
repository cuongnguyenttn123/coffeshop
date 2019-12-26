<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <form action="/user/search" method="get">                    <div class="row">
                                    <div class="col-md-3">
                                        <input type="text" placeholder="Tìm kiếm theo tên" class="form-control" name="seaching" style="border-radius:0.2em" />
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="col">
                                            <select class="nav-link dropdown-toggle col" id="idCategory" name="idCategory" style="border-radius:0.2em"><option value="">--Nh&#243;m đồ uống--</option>
                                                <c:forEach items="${foodcategories}" var="foodcategori">
                                                    <option value="${foodcategori.getId()}">${foodcategori.getName()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="col">
                                            <select class="nav-link dropdown-toggle col" id="idDVT" name="idDVT" style="border-radius:0.2em"><option value="">--đơn vị t&#237;nh--</option>
                                                <c:forEach items="${dvts}" var="dvt">
                                                    <option value="${dvt.getId()}">${dvt.getName()}</option>
                                                </c:forEach>

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
                                    <%  int i = 0; %>
                                    <c:forEach items="${foods}" var="food">
                                        <tr id="row_${food.getId()}">
                                            <th scope="col">${ i = i+ 1}</th>
                                            <td scope="col">${food.getName()}</td>
                                            <td scope="col">${food.getFoodcategory().getName()}</td>
                                            <td scope="col">${food.getDvt().getName()}</td>
                                            <td scope="col">${food.getPrice()}</td>
                                            <td scope="col"></td>
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
                                            <li class="page-item"><a class="page-link" href="/admin/food?page=${i}">${i}</a></li>
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
<jsp:include page="../../common/jsLibrary.jsp"/>


</body>

</html>

