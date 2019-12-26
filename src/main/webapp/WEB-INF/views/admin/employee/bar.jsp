<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 16/12/2019
  Time: 08:00 SA
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

                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->



                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp; DANH SÁCH MÓN THEO ORDER</h4>
                            <div class="card-body">
                                <form action="#" method="get">                    <div class="row">
                                    <div class="col-md-3">
                                        <input type="text" placeholder="Tìm kiếm theo tên" class="form-control" name="seaching" style="border-radius:0.2em" />
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" class="btn btn-info active btn-sm" style="border-radius:0.2em"><i class="fas fa-search"></i>&nbsp;Tìm kiếm</button>
                                    </div>
                                </div>
                                </form>                <br />
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th scope="col">Tên món</th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Trả món</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${billinfos}" var="billinfo">
                                        <tr id="row_${billinfo.getId()}">
                                            <td scope="col">${billinfo.getFood().getName()}</td>
                                            <td scope="col">${billinfo.getCount()}</td>
                                            <td scope="col">
                                                <a class="btn btn-warning btn-sm Delete" onclick="tramon(${billinfo.getId()})" id="${billinfo.getId()}" style="color:white;border-radius:0.2em">Trả món</a>
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
                                            <li class="page-item"><a class="page-link" href="/user/bar?page=${i}">${i}</a></li>
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
                <script>
                    function tramon(id)
                    {

                        $.ajax({
                            url: '/user/tramon',
                            data: { idbill: id },
                            type: 'POST',
                            dataType: 'json',
                            success: function (response) {
                                var data = response.idBill;
                                var idbill = '#' + data;
                                $(idbill).text("Đã trả");
                                $(idbill).css({ "background": "red", "color": "white" });
                            },
                            error: function () {
                                alert('Lỗi rồi');
                            }

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


