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
                                Cập nhập tài khoản
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader  -->
                <!-- ============================================================== -->

                <div class="row">
                    <div class="col-10">
                        <div class="card">
                            <h4 class="card-header">Thông tin cập nhật</h4>
                            <div class="card-body">
                                <form action="/admin/employee/edit/${emp.getId()}" method="post"><input name="__RequestVerificationToken" type="hidden" value="A25r7i7uuN1luutf70MUfnWzs4zVPrI7496xCtiF6pJkTbwyZ6qTouyT6PMXo98PUEjqZhrrc6Qfr4T7cITdfj5h_4L6g0KscBMkStSejQM1" />                    <div class="form-horizontal">

                                    <input data-val="true" data-val-number="The field id must be a number." data-val-required="The id field is required." id="id" name="id" type="hidden" value="1" />
                                    <input data-val="true" data-val-number="The field Quyền must be a number." data-val-required="The Quyền field is required." id="idRole" name="idRole" type="hidden" value="" />

                                    <div class="form-group">
                                        <label class="control-label col-3" for="UserName">T&#224;i khoản</label>
                                        <input data-val="true" data-val-length="The field Tài khoản must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Tài khoản field is required." htmlAttributes="{ class = col-5 }" id="UserName" name="UserName" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getUserName()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="UserName" data-valmsg-replace="true"></span>

                                    </div>



                                    <div class="form-group">
                                        <label class="control-label col-3" for="Name">Họ t&#234;n</label>
                                        <input data-val="true" data-val-length="The field Họ tên must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Họ tên field is required." htmlAttributes="{ class = col-5 }" id="Name" name="Name" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getName()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-3" for="Email">Email</label>
                                        <input data-val="true" data-val-length="The field Email must be a string with a maximum length of 100." data-val-length-max="100" data-val-required="The Email field is required." htmlAttributes="{ class = col-5 }" id="Email" name="Email" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getEmail()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="Email" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="Address">Địa chỉ</label>
                                        <input data-val="true" data-val-length="The field Địa chỉ must be a string with a maximum length of 150." data-val-length-max="150" data-val-required="The Địa chỉ field is required." htmlAttributes="{ class = col-5 }" id="Address" name="Address" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getAddress()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="Address" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="Phone">SDT</label>
                                        <input data-val="true" data-val-length="The field SDT must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The SDT field is required." htmlAttributes="{ class = col-5 }" id="Phone" name="Phone" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getPhone()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="Phone" data-valmsg-replace="true"></span>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-3" for="status">Trạng th&#225;i</label>
                                        <input checked="checked" data-val="true" data-val-required="The Trạng thái field is required." id="status" name="status" type="checkbox" value="true" /><input name="status" type="hidden" value="false" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="status" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-2" for="idRole">Quyền</label>
                                        <select data-val="true" data-val-number="The field Quyền must be a number." data-val-required="The Quyền field is required." htmlAttributes="{ class = col-5 }" id="idRole" name="idRole" style="border-radius:5px;outline:none;padding:5px 26px 5px 5px;"><option value="1">Quản l&#237;</option>
                                            <c:forEach items="${roles}" var="role">
                                                <option value="${role.getId()}">${role.getName()}</option>
                                            </c:forEach>
                                        </select>
                                        <span class="field-validation-valid text-danger" data-valmsg-for="idRole" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Lưu dữ liệu" class="btn btn-success" style="padding:5px 16px;" />
                                            <a href="/admin/employee" class="btn btn-dark btn-sm">Hủy thao tác</a>

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
<jsp:include page="../common/jsLibrary.jsp"/>
</body>

</html>

