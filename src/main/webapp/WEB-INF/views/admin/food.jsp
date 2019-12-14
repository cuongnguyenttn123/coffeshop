<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 09:00 CH
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
                            <h4 class="card-header fas fa-coffee">&nbsp; Thêm Đồ Uống/Món ăn</h4>
                            <div class="card-body">
                                <form action="/Admin/Food/Create" method="post">                        <div class="row">
                                    <div class="col-4">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-4 col-form-label text-left">Tên món*</label>
                                            <div class="col-8">
                                                <input type="text" class="form-control namefood" name="Food_name" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required style="border-radius:0.2em">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group row">
                                            <label for="inputWebSite" class="col-4 col-form-label text-left">Danh mục *</label>
                                            <div class="col-8">
                                                <select class="nav-link dropdown-toggle col" id="cate" name="idCategory" style="border-radius:0.2em"><option value="">--Nh&#243;m đồ uống--</option>
                                                    <option value="1">CAFE</option>
                                                    <option value="2">SINH TỐ</option>
                                                    <option value="3">TR&#192; SỮA</option>
                                                    <option value="5">TR&#192; XANH NHẬT BẢN</option>
                                                    <option value="6">THỨC UỐNG KEM SỮA</option>
                                                    <option value="7">SOCOLA Đ&#193; XAY</option>
                                                    <option value="8">HOA QUẢ Đ&#193; XAY</option>
                                                    <option value="9">ĐỒ UỐNG VỊ B&#193;NH</option>
                                                    <option value="10">KEM CHANH</option>
                                                    <option value="11">ĐỒ ĂN NHANH</option>
                                                    <option value="12">SỮA CHUA HOA QUẢ </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group row">
                                            <label for="" class="col-4 col-form-label text-left">Đơn vị tính*</label>
                                            <div class="col-8">
                                                <select class="nav-link dropdown-toggle col" id="iddvt" name="idDVT" style="border-radius:0.2em"><option value="">--Đơn vị t&#237;nh--</option>
                                                    <option value="2">Cốc</option>
                                                    <option value="3">Chai</option>
                                                    <option value="5">Đĩa</option>
                                                    <option value="6">Lon</option>
                                                    <option value="7">G&#243;i</option>
                                                    <option value="8">Gram</option>
                                                    <option value="9">K&#233;t</option>
                                                    <option value="10">kg</option>
                                                    <option value="11">L&#237;t</option>
                                                    <option value="15">Quả</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col-4">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-4 col-form-label text-left">Giá<span>*</span></label>
                                            <div class="col-8">
                                                <input type="text" class="form-control pricefood" name="price" id="validationCustomUsername" onkeypress="return isNumberKey(event);" aria-describedby="inputGroupPrepend" required style="border-radius:0.2em">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group row">
                                            <label class="col-3 col-lg-3 col-form-label text-right">
                                                Trạng thái *
                                            </label>
                                            <div class="col-9 col-lg-6 " style="padding-top: 0.5em;margin-left:1.2em">
                                                <input data-val="true" data-val-required="The isNewlyEnrolled field is required." id="status" name="status" type="checkbox" value="true" style="margin-left:1.7em" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    <div class="pt-2 pt-sm-5 mt-1" style="padding-top: 0px !important;float: right;margin-right: 8em;">
                                        <div class="col-sm-6 pl-0">
                                            <p class="text-success">

                                                <button class="btn btn-space btn-primary" id="creatCate" style="border-radius:0.2em"><i class="fas fa-plus"></i>&nbsp;Tạo mới</button>
                                            </p>
                                        </div>
                                    </div>
                                </form>                </div>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <div class="card">
                            <h4 class="card-header fas fa-coffee">&nbsp; Danh sách đồ uống/ món ăn</h4>
                            <div class="card-body">
                                <form action="/Admin/Food" method="get">                    <div class="row">
                                    <div class="col-md-3">
                                        <input type="text" placeholder="Tìm kiếm theo tên" class="form-control" name="seaching" style="border-radius:0.2em" />
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="col">
                                            <select class="nav-link dropdown-toggle col" id="idCategory" name="idCategory" style="border-radius:0.2em"><option value="">--Nh&#243;m đồ uống--</option>
                                                <option value="1">CAFE</option>
                                                <option value="2">SINH TỐ</option>
                                                <option value="3">TR&#192; SỮA</option>
                                                <option value="5">TR&#192; XANH NHẬT BẢN</option>
                                                <option value="6">THỨC UỐNG KEM SỮA</option>
                                                <option value="7">SOCOLA Đ&#193; XAY</option>
                                                <option value="8">HOA QUẢ Đ&#193; XAY</option>
                                                <option value="9">ĐỒ UỐNG VỊ B&#193;NH</option>
                                                <option value="10">KEM CHANH</option>
                                                <option value="11">ĐỒ ĂN NHANH</option>
                                                <option value="12">SỮA CHUA HOA QUẢ </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3 ">
                                        <div class="col">
                                            <select class="nav-link dropdown-toggle col" id="idDVT" name="idDVT" style="border-radius:0.2em"><option value="">--đơn vị t&#237;nh--</option>
                                                <option value="2">Cốc</option>
                                                <option value="3">Chai</option>
                                                <option value="5">Đĩa</option>
                                                <option value="6">Lon</option>
                                                <option value="7">G&#243;i</option>
                                                <option value="8">Gram</option>
                                                <option value="9">K&#233;t</option>
                                                <option value="10">kg</option>
                                                <option value="11">L&#237;t</option>
                                                <option value="15">Quả</option>
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
                                        <th scope="col">Thao tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr id="row_1">
                                        <th scope="col">1</th>
                                        <td scope="col">Bạc xỉu</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="1">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(1)" style="color:white;border-radius:0.2em" data-id="1">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="1" id="1" onclick="DeleteFood(this,1)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_4">
                                        <th scope="col">2</th>
                                        <td scope="col">C&#224; ph&#234; sữa </td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">20.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="4">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(4)" style="color:white;border-radius:0.2em" data-id="4">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="4" id="4" onclick="DeleteFood(this,4)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_5">
                                        <th scope="col">3</th>
                                        <td scope="col">C&#224; ph&#234;n đen</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">20.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="5">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(5)" style="color:white;border-radius:0.2em" data-id="5">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="5" id="5" onclick="DeleteFood(this,5)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_6">
                                        <th scope="col">4</th>
                                        <td scope="col">C&#224; ph&#234; đ&#225; xay</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="6">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(6)" style="color:white;border-radius:0.2em" data-id="6">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="6" id="6" onclick="DeleteFood(this,6)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_7">
                                        <th scope="col">5</th>
                                        <td scope="col">C&#224; Ph&#234; Socola Đ&#225; Xay</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="7">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(7)" style="color:white;border-radius:0.2em" data-id="7">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="7" id="7" onclick="DeleteFood(this,7)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_8">
                                        <th scope="col">6</th>
                                        <td scope="col">C&#224; Ph&#234; Sinh Tố Dừa</td>
                                        <td scope="col">CAFE</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="8">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(8)" style="color:white;border-radius:0.2em" data-id="8">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="8" id="8" onclick="DeleteFood(this,8)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_21">
                                        <th scope="col">7</th>
                                        <td scope="col">Sinh Tố Xo&#224;i</td>
                                        <td scope="col">SINH TỐ</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="21">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(21)" style="color:white;border-radius:0.2em" data-id="21">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="21" id="21" onclick="DeleteFood(this,21)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_22">
                                        <th scope="col">8</th>
                                        <td scope="col">Sinh Tố Dưa Hấu</td>
                                        <td scope="col">SINH TỐ</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">25.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="22">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(22)" style="color:white;border-radius:0.2em" data-id="22">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="22" id="22" onclick="DeleteFood(this,22)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_23">
                                        <th scope="col">9</th>
                                        <td scope="col">Sinh Tố Bơ</td>
                                        <td scope="col">SINH TỐ</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">30.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="23">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(23)" style="color:white;border-radius:0.2em" data-id="23">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="23" id="23" onclick="DeleteFood(this,23)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>
                                    <tr id="row_24">
                                        <th scope="col">10</th>
                                        <td scope="col">Sinh Tố M&#227;ng Cầu</td>
                                        <td scope="col">SINH TỐ</td>
                                        <td scope="col">Cốc</td>
                                        <td scope="col">30.000</td>
                                        <td scope="col">
                                            <a href="#" class="btn-active" data-id="24">K&#237;ch hoạt</a>
                                        </td>
                                        <td scope="col">
                                            <a name="CapNhat" class="btn btn-success btn-sm update col-5" onclick="UpdateFood(24)" style="color:white;border-radius:0.2em" data-id="24">
                                                <i class="fas fa-edit"></i>&nbsp;Cập nhập
                                            </a>
                                            <strong>|</strong>
                                            <a class="btn btn-warning btn-sm Delete col-4" data-id="24" id="24" onclick="DeleteFood(this,24)" style="color:white;border-radius:0.2em"><i class="fas fa-trash-alt"></i>&nbsp;Xóa</a>
                                        </td>

                                    </tr>

                                    </tbody>
                                </table>
                                <div class="pagination-container"><ul class="pagination"><li class="active"><a>1</a></li><li><a href="/Admin/Food?page=2&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">2</a></li><li><a href="/Admin/Food?page=3&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">3</a></li><li><a href="/Admin/Food?page=4&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">4</a></li><li><a href="/Admin/Food?page=5&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">5</a></li><li><a href="/Admin/Food?page=6&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList">6</a></li><li class="PagedList-skipToNext"><a href="/Admin/Food?page=2&amp;idCategory=System.Web.Mvc.SelectList&amp;idDVT=System.Web.Mvc.SelectList" rel="next">»</a></li></ul></div>
                            </div>
                        </div>
                    </div>
                    <div id="modal-wrapper" class="modal">
                        <form action="/Admin/Food/Update" class="modal-content animate" method="post"><input name="__RequestVerificationToken" type="hidden" value="TuVUNApYPaxA54Z0Lur3wjg3ayNFMeM5-1GP8-UnMTf50uHnwudTWZrua7dQ5JVCz5VJmG1o2QnOT2FSkVAFIHalOfQZcGGxbJe5oGMG4Cg1" />            <div class="imgcontainer">
                            <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
                            <h1 style="text-align:center;color:#007bff">Cập nhật món ăn</h1>
                        </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">Tên món:</label>
                                            <div class="col-7">
                                                <input type="text" placeholder="Enter Username" id="FoodName" class="text col" name="Food_name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">Giá:</label>
                                            <div class="col-7">
                                                <input type="text" placeholder="Enter Password" id="Price" class="text" name="price">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">Nhóm đồ uống:</label>
                                            <div class="col-7">
                                                <select class="nav-link dropdown-toggle" id="DanhMuc" name="idCategory" style="padding: 0.3em 5.4em 0.3em 1em;"><option value="">--Chọn danh mục--</option>
                                                    <option value="1">CAFE</option>
                                                    <option value="2">SINH TỐ</option>
                                                    <option value="3">TR&#192; SỮA</option>
                                                    <option value="5">TR&#192; XANH NHẬT BẢN</option>
                                                    <option value="6">THỨC UỐNG KEM SỮA</option>
                                                    <option value="7">SOCOLA Đ&#193; XAY</option>
                                                    <option value="8">HOA QUẢ Đ&#193; XAY</option>
                                                    <option value="9">ĐỒ UỐNG VỊ B&#193;NH</option>
                                                    <option value="10">KEM CHANH</option>
                                                    <option value="11">ĐỒ ĂN NHANH</option>
                                                    <option value="12">SỮA CHUA HOA QUẢ </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">DVT:</label>
                                            <div class="col-7">
                                                <select class="nav-link dropdown-toggle" id="DVT" name="idDVT" style="padding: 0.3em 7.1em 0.3em 1em; "><option value="">--Chọn danh mục--</option>
                                                    <option value="2">Cốc</option>
                                                    <option value="3">Chai</option>
                                                    <option value="5">Đĩa</option>
                                                    <option value="6">Lon</option>
                                                    <option value="7">G&#243;i</option>
                                                    <option value="8">Gram</option>
                                                    <option value="9">K&#233;t</option>
                                                    <option value="10">kg</option>
                                                    <option value="11">L&#237;t</option>
                                                    <option value="15">Quả</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group row">
                                            <label for="inputEmail2" class="col-3 col-form-label text-right">Trạng thái:</label>
                                            <div class="col-7">
                                                <input type="checkbox" name="status" class="checkbox1" id="ckStatus" />
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <button type="submit" class="button" id="submit">Save</button>
                            </div>
                        </form>    </div>
                    <div id="modal-wrapper-Del" class="modal">
                        <form action="/Admin/Food/Delete" class="modal-contentDel animateDel" method="post"><input name="__RequestVerificationToken" type="hidden" value="nLuzw8kgUA_iBD_19MGPeb80PEdZQp-w7N3LRYL4U006fyw1A6wK2Y6r_de1uamkGXSEAFLnRQKKGs8fpBh71zfyuC1Gzbu2PKM-ljRSKMo1" />            <div class="container-confirm">
                            <div class="title-main">Xác nhận xóa</div>
                            <div class="title-content">
                                <div class="content-titlt">Bạn có đồng ý xóa ?</div>
                                <div class="content-confrim">
                                    <a class="btnCf-cancel" onclick="document.getElementById('modal-wrapper-Del').style.display = 'none'">Hủy</a>
                                    <button class="btnCf-yes" type="submit" onclick="dongy(idfood)" id="DeleteF">Đồng ý</button>
                                </div>
                            </div>
                        </div>
                        </form>    </div>
                </div>



                <script>
                    var foodId = 0;
                    var Deleteid = 0;
                    var idfood = 0;
                    //sự kiện xóa
                    $('#creatCate').click(function(e) {
                        var x = $('#iddvt').val();
                        var y = $('#cate').val();
                        var z = $('#status').prop('checked');
                        if(y==0)
                        {
                            alert('Bạn Cần chọn danh mục');
                            e.preventDefault();
                        }else if(x==0)
                        {
                            alert('Bạn Cần chọn đơn vị tính');
                            e.preventDefault();

                        }else if(z== false)
                        {
                            alert('Bạn Cần chọn trạng thái');
                            e.preventDefault();
                        }
                        else
                        {
                            e.preventDefault.remove();
                        }
                    })
                    function isNumberKey(evt) {
                        var charCode = (evt.which) ? evt.which : event.keyCode;
                        if (charCode == 59 || charCode == 46)
                            return true;
                        if (charCode > 31 && (charCode < 48 || charCode > 57))
                            return false;
                        return true;
                    }
                    function DeleteFood(element, id) {
                        document.getElementById('modal-wrapper-Del').style.display = 'block';
                        $('#DeleteF').click(function (e) {
                            var iddelete =
                                {
                                    id: id
                                }
                            $.ajax({
                                url: '/Admin/Food/Delete',
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


                    // If user clicks anywhere outside of the modal, Modal will close

                    var modal = document.getElementById('modal-wrapper');
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                    //Bind giữ liệu lên popup
                    function UpdateFood(id) {
                        document.getElementById('modal-wrapper').style.display = 'block';
                        $.ajax({
                            url: '/Admin/Food/Edit',
                            data:
                                { id: id },
                            type: 'GET',
                            dataType: 'json',
                            success: function (response) {
                                var data = response.data;
                                $('#FoodName').val(data.Food_name);
                                $('#Price').val(data.price);
                                $('#ckStatus').prop('checked', data.status);
                                $('#DanhMuc').val(data.idCategory);
                                $('#DVT').val(data.idDVT);
                                foodId = id;
                            },
                            error: function () {
                                alert('Lỗi rồi');
                            }
                        })
                    }
                    //update dữ liệu...
                    $('#submit').click(function (e) {
                        //call ajax
                        var foodName = $('#FoodName').val();
                        var price = $('#Price').val();
                        var stt = $('#ckStatus').prop('checked');
                        var danhmuc = $('#DanhMuc').val();
                        var dvt = $('#DVT').val();
                        var food_id = foodId;
                        var url = 'Admin/Food/Index';
                        var Food = {
                            Food_id: food_id,
                            Food_name: foodName,
                            price: price,
                            status: stt,
                            idCategory: danhmuc,
                            idDVT: dvt
                        }
                        $.ajax({
                            url: '/Admin/Food/Update',
                            type: 'POST',
                            data: Food,
                            success: function () {
                                document.getElementById('modal-wrapper').style.display = 'none';
                                window.location.reload();
                            },
                            error: function () {
                                alert('error');
                            }
                        })
                        e.preventDefault();
                    })

                    //=====================DELETE===================
                    var modal = document.getElementById('modal-wrapper-Del');
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
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

