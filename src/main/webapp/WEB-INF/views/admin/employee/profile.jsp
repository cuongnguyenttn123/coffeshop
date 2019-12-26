<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 17/12/2019
  Time: 09:28 CH
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
                                <form action="/user/profile" method="post">
                                    <input data-val="true" data-val-number="The field id must be a number." data-val-required="The id field is required." id="id" name="id" type="hidden" value="6" />
                                    <input data-val="true" data-val-number="The field Quyền must be a number." data-val-required="The Quyền field is required." id="idRole" name="idRole" type="hidden" value="4" />

                                    <div class="form-group">
                                        <label class="control-label col-3" for="UserName">T&#224;i khoản</label>
                                        <input data-val="true" data-val-length="The field Tài khoản must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Tài khoản field is required." htmlAttributes="{ class = col-5 }" id="UserName" name="UserName" style="border-radius:5px;outline:none;padding:5px" type="text" value="${emp.getUserName()}" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="UserName" data-valmsg-replace="true"></span>

                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-3" for="PassWord">Mật khẩu</label>
                                        <input data-val="true" data-val-length="The field Mật khẩu must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Mật khẩu field is required." htmlAttributes="{ class = col-5 }" id="PassWord" name="PassWord" style="border-radius:5px;outline:none;padding:5px" type="password" value="" />
                                        <span class="field-validation-valid text-danger" data-valmsg-for="PassWord" data-valmsg-replace="true"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="image" class="col-sm-12 col-form-label">Ảnh đại diện</label>
                                        <input id = "avt" name="avt" type="hidden">
                                        <input id="image" type="file" value='" />'
                                               class="form-control" placeholder="Ảnh đại diện" />
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
                                        <div class="col-md-offset-2 col-md-10">
                                            <input type="submit" value="Lưu dữ liệu" class="btn btn-success" style="padding:5px 16px;" />
                                            <a href="/user/home" class="btn btn-dark btn-sm">Hủy thao tác</a>

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


