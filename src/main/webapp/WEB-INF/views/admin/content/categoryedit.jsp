<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 15/12/2019
  Time: 11:39 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
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
    <jsp:include page="../common/nav-1.jsp"/>
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

    <jsp:include page="../common/nav.jsp"/>







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
                                Cập nhật danh mục món ăn</h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->


                <div class="row">
                    <div class="col-8">
                        <div class="card">
                            <h4 class="card-header">Thông tin cập nhật</h4>
                            <div class="card-body">
                                <form action="/admin/category/edit/" method="post"><input name="__RequestVerificationToken" type="hidden" value="L6t8tGpe0486lfz6sHG-HAEfwwOaEQeKRdu8OxnR_Q-CcKBatQbBqb3QK75Cz4koRBps-kBL3UJwE8KEN8M-a1vvWI1au74xp_cef4jbY1w1" />
                                    <div class="form-horizontal">

                                    <input data-val="true" data-val-number="The field FoodCategory_id must be a number." data-val-required="The FoodCategory_id field is required." id="FoodCategory_id" name="FoodCategory_id" type="hidden" value="${category.getId()}" />

                                    <div class="form-group">
                                        <label class="control-label col-3" for="FoodCategory_name">Nh&#243;m thực đơn</label>
                                        <input class="col-5 text-box single-line" data-val="true" data-val-length="The field Nhóm thực đơn must be a string with a maximum length of 500." data-val-length-max="500" data-val-required="The Nhóm thực đơn field is required." id="FoodCategory_name" name="FoodCategory_name" style="border-radius:5px;outline:none;padding:5px" type="text" value="${category.getName()}" />
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="Decription">M&#244; tả</label>
                                        <input class="col-5 text-box single-line" data-val="true" data-val-length="The field Mô tả must be a string with a maximum length of 500." data-val-length-max="500" id="Decription" name="Decription" style="border-radius:5px;outline:none;padding:5px" type="text" value="" />
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="status">Trạng th&#225;i</label>
                                        <input checked="checked" class="check-box" data-val="true" data-val-required="The Trạng thái field is required." id="status" name="status" type="checkbox" value="true" /><input name="status" type="hidden" value="false" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="status" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Lưu dữ liệu" class="btn btn-success btn-sm" />
                                            <a href="/admin/category" class="btn btn-dark btn-sm">Hủy thao tác</a>
                                        </div>
                                    </div>
                                </div>
                                </form>
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
<jsp:include page="../common/jsLibrary.jsp"/>

</body>

</html>

