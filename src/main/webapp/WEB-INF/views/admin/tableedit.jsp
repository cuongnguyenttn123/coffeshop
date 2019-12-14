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
                                Cập nhật bàn </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->


                <div class="row">
                    <div class="col-8">
                        <div class="card">
                            <h4 class="card-header">Chi tiết bàn ăn</h4>
                            <div class="card-body">
                                <form action="/admin/table/edit" method="post"><input name="__RequestVerificationToken" type="hidden" value="-5XH-c3IXC60aQP87wjClyxPKiA9DkK2EjiwJldcNS0MsqQaYiLWaKYtCw_OD9aBqROtRXvW4hBlEBLvWvDgTrkAwPijfQxgmwIELxzQLms1" />
                                    <div class="form-horizontal">

                                    <input data-val="true" data-val-number="The field TableFood_id must be a number." data-val-required="The TableFood_id field is required." id="TableFood_id" name="TableFood_id" type="hidden" value="${tablefood.getId()}" />

                                    <div class="form-group">
                                        <label class="control-label col-3" for="TableFood_name">T&#234;n b&#224;n:</label>
                                        <input class="col-5 text-box single-line" data-val="true" data-val-length="The field Tên bàn: must be a string with a maximum length of 100." data-val-length-max="100" data-val-required="Bàn cần nhập bàn" id="TableFood_name" name="TableFood_name" style="border-radius:5px;outline:none;padding:5px" type="text" value="${tablefood.getName()}" />
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="idArea">Khu vực:</label>

                                        <select data-val="true" data-val-number="The field Khu vực: must be a number." data-val-required="Cần nhập khu vực" htmlAttributes="{ class = form-control, style = border-radius:5px;padding:5px 26px 5px 5px; }" id="idArea" name="idArea">

                                            <option value="">--Chọn khu vực--</option>
                                                <c:forEach items="${areas}" var="area">
                                                    <option value="${area.getId()}">${area.getName()}</option>
                                                </c:forEach>


                                        </select>


                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="status">Trạng th&#225;i:</label>


                                        <input checked="checked" class="check-box" data-val="true" data-val-required="Cần chọn trạng thái" id="status" name="status" type="checkbox" value="true" /><input name="status" type="hidden" value="false" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="status" data-valmsg-replace="true"></span>


                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Lưu dữ liệu" class="btn btn-success btn-sm" />
                                            <a href="/Admin/TableFood/index" class="btn btn-dark btn-sm">Hủy thao tác</a>
                                        </div>
                                    </div>
                                </div>
                                </form>            </div>
                        </div>
                    </div>

                </div>




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

