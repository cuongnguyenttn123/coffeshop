<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 12/12/2019
  Time: 05:44 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="/style.css">
    <link rel="stylesheet" href="<c:out value="/resources/node_modules/flag-icon-css/css/flag-icon.min.css"/>">
    <link rel="stylesheet" href="<c:out value="/resources/Client/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:out value="/resources/Client/css/bootstrap-theme.min.css"/>">
    <link rel="stylesheet" href="<c:out value="/resources/Client/css/all.css"/>"  />
    <link rel="stylesheet" href="<c:out value="/resources/Client/css/all.min.css"/>"  />
    <script src="<c:out value="/resources/Admin/vendor/jquery/jquery-3.3.1.min.js"/>"></script>
    <link rel="stylesheet" href="<c:out value="/resources/Client/css/Style.css"/>">
    <link rel="stylesheet" href="<c:out value="/resources/Client/css/jquery-confirm.min.css"/>"  />
    <link rel="stylesheet" href="<c:out value="/resources/Admin/libs/css/styleDelete.css"/>"  />
    <link rel="stylesheet" href="<c:out value="/resources/Client/css/scollbarcss.css"/>"  />
    <title>TL</title>


    </head>
<body>
<!-- Begin Header -->
<style>
    .current_select {
        background: #438e3a !important;
        color: #fff !important;
        border-color: #438e3a !important;
    }

    .export {
        display: none;
    }
</style>

<div id="navigation" class="ng-scope">
    <div class="h3" id="logo">
        T-COFFEE
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light float-right" style="padding-right: 15px;padding-bottom: 0;padding-top: 0;height: 46px;">
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item dropdown ">
                    <a class="nav-link dropdown-toggle " href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" data-id="1" aria-haspopup="true" aria-expanded="false" style="color: #000;border-left:1px solid hsla(0, 0%, 4%, 0.37); padding:9px 21px">
                        Quang t&#224;i
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" style="margin-right:-14px">
                        <a class="dropdown-item" href="/resouces/Admin/Home/Index">
                            <i class="fa fa-home"></i>&nbsp;&nbsp;Màn hình quản lí
                        </a>
                        <a class="dropdown-item" href="/resouces/Admin/Login/Index">
                            <i class="fa fa-sign-out-alt"></i>&nbsp;&nbsp;Đăng xuất
                        </a>


                    </div>
                </li>
            </ul>
        </div>
    </nav>
</div>
<!-- End Header -->
<!-- Begin Content -->
<div id="content">
    <div class="row" style="margin:auto">
        <!-- Begin Conten-Left-->
        <div class="col-sm-6 h5" id="contenleft" style="padding-top: 20px;">
            <div id="Nohoadon">

            </div>
            <!-- List Category-->
            <div id="Contenleft_danhmuc" class="col-12">

                <div class="danhMuc col-4">
                    <c:forEach items="${cate}" var="cate">
                        <a href="#mon_${cate.getCategoryproductid()}" id="CaFe" class="btn btn-outline-primary btn-xs">${cate.getName()}</a><br />
                    </c:forEach>

                </div>
                <div id="danhMuc_item" class="col-8">
                    <c:forEach items="${cate}" var="cate">
                        <div class="danhmic_listitem" id="mon_${cate.getCategoryproductid()}">

                            <c:forEach items="${cate.getProducts()}" var="product">

                                <a href="#" class="chonmon" onclick="chonmon(${product.getProductid()})" data-id="1" name="Bạc xỉu" data-content="${product.getPrice()}">
                                    <div>
                                            ${product.getName()}  <br /> ${product.getPrice()} đ
                                    </div>
                                </a>
                            </c:forEach>


                        </div>


                    </c:forEach>

                </div>
            </div>
        </div>
        <!-- Begin Conten Right-->
        <div class="col-sm-6" style="padding-top: 20px;">
            <div id="ContentRight_Khuvuc" class="col">
                <div class="scrtabs-tabs-fixed-container">
                    <div class="" ng-transclude="">
                        <ul class="nav" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active ng-binding" id="default" data-toggle="tab" href="#home">Đang mở</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link ng-binding" data-toggle="tab" href="#2">Tầng 1 </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link ng-binding" data-toggle="tab" href="#3">Tầng 2 </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link ng-binding" data-toggle="tab" href="#4">Tầng 3</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link ng-binding" data-toggle="tab" href="#7">tầng 4</a>
                            </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane container" id="home">
                                <div class="row list_table">
                                    <div class="col-lg-2 item_table ban1" data-id="45" data-target="ban_45" id="ban_45" data-content="b&#224;n 110" onclick="Bill(this,45, 109,45)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 110</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane container" id="2">
                                <div class="row list_table">
                                    <div class="col-lg-2 item_table ban1" data-id="28" data-target="ban_28" id="ban_28" data-content="b&#224;n 101" onclick="Bill(this,28, 0,28)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 101</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="29" data-target="ban_29" id="ban_29" data-content="b&#224;n 102" onclick="Bill(this,29, 0,29)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 102</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="30" data-target="ban_30" id="ban_30" data-content="b&#224;n 103" onclick="Bill(this,30, 0,30)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 103</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="39" data-target="ban_39" id="ban_39" data-content="b&#224;n 104" onclick="Bill(this,39, 0,39)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 104</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="40" data-target="ban_40" id="ban_40" data-content="b&#224;n 105" onclick="Bill(this,40, 0,40)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 105</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="41" data-target="ban_41" id="ban_41" data-content="b&#224;n 106" onclick="Bill(this,41, 0,41)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 106</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="42" data-target="ban_42" id="ban_42" data-content="b&#224;n 107" onclick="Bill(this,42, 0,42)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 107</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="43" data-target="ban_43" id="ban_43" data-content="b&#224;n 108" onclick="Bill(this,43, 0,43)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 108</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="44" data-target="ban_44" id="ban_44" data-content="b&#224;n 109" onclick="Bill(this,44, 0,44)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 109</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="45" data-target="ban_45" id="ban_45" data-content="b&#224;n 110" onclick="Bill(this,45, 109,45)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 110</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane container" id="3">
                                <div class="row list_table">
                                    <div class="col-lg-2 item_table ban1" data-id="31" data-target="ban_31" id="ban_31" data-content="b&#224;n 201" onclick="Bill(this,31, 0,31)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 201</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="32" data-target="ban_32" id="ban_32" data-content="b&#224;n 202" onclick="Bill(this,32, 0,32)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 202</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="33" data-target="ban_33" id="ban_33" data-content="b&#224;n 203" onclick="Bill(this,33, 0,33)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 203</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="46" data-target="ban_46" id="ban_46" data-content="b&#224;n 204" onclick="Bill(this,46, 0,46)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 204</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="47" data-target="ban_47" id="ban_47" data-content="b&#224;n 205" onclick="Bill(this,47, 0,47)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 205</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane container" id="4">
                                <div class="row list_table">
                                    <div class="col-lg-2 item_table ban1" data-id="34" data-target="ban_34" id="ban_34" data-content="b&#224;n 301" onclick="Bill(this,34, 0,34)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 301</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="35" data-target="ban_35" id="ban_35" data-content="b&#224;n 302" onclick="Bill(this,35, 0,35)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 302</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="36" data-target="ban_36" id="ban_36" data-content="b&#224;n 303" onclick="Bill(this,36, 0,36)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 303</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="48" data-target="ban_48" id="ban_48" data-content="b&#224;n 304" onclick="Bill(this,48, 0,48)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 304</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="49" data-target="ban_49" id="ban_49" data-content="b&#224;n 305" onclick="Bill(this,49, 0,49)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 305</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane container" id="7">
                                <div class="row list_table">
                                    <div class="col-lg-2 item_table ban1" data-id="37" data-target="ban_37" id="ban_37" data-content="b&#224;n 401" onclick="Bill(this,37, 0,37)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 401</p>
                                    </div>
                                    <div class="col-lg-2 item_table ban1" data-id="38" data-target="ban_38" id="ban_38" data-content="b&#224;n 402" onclick="Bill(this,38, 0,38)">
                                        <img src="/Assets/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                        <p>b&#224;n 402</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div id="thanhToan" class="col">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab-TT" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true" value=""></a>
                    </li>
                </ul>
                <div class="tab-content col" id="TT_danhmuc">

                </div>
            </div>
        </div>
    </div>
</div>
<div id="modal-wrapper-Del" class="modal">
    <form action="/HomeClient/Delete" class="modal-contentDel animateDel" method="post"><input name="__RequestVerificationToken" type="hidden" value="d1ib1TZtZDpPmRNrV970R8IU9-9TISgcOE3SsTGXagfbxEGm5dIidcXp2SFfEeEWaXSV_nYEQYCAFsJ_Gpl1WwrZNUzwqgUwxTIp-OJoEYM1" />            <div class="container-confirm">
        <div class="title-main">Xác nhận xóa</div>
        <div class="title-content">
            <div class="content-titlt">Bạn có đồng ý xóa ?</div>
            <div class="content-confrim">
                <a class="btnCf-cancel" onclick="document.getElementById('modal-wrapper-Del').style.display = 'none'">Hủy</a>
                <button class="btnCf-yes" type="submit" id="DeleteF">Đồng ý</button>
            </div>
        </div>
    </div>
    </form>    </div>
<script>
    var id_bill = 0;
    var id_table = 0;
    var idTableSelect = "";
    //Chọn bàn và tạo Bill
    function Bill(element, id, bill_id, idtable) {
        //Đổi màu khi trạng thái bàn thay đổi
        if (idTableSelect) {
            if (id_bill > 0) {
                //Có hóa đơn
                $(idTableSelect).css({ 'background-color': '#68e458', 'border-color': '#68e458' });
            } else {
                //Không có háo đơn
                $(idTableSelect).css({ 'background-color': '#fff', 'border-color': '#130d28' });
            }
        }
        idTableSelect = '#' + element.id;
        id_bill = bill_id;
        id_table = idtable;
        //Đang chờ
        $(idTableSelect).css({ 'background-color': '#97FFFF', 'border-color': '#97FFFF' });

        //hiện thị danh mục và ẩn hóa đơn
        $('#Contenleft_danhmuc').show();
        $('.danhMuc a:first-child').click();
        $('#Nohoadon').hide();

        var iban = "#ban_" + idtable;
        //Biến thời gian
        var currentTime = new Date();
        var day = currentTime.getDate();
        var month = currentTime.getMonth() + 1;
        var year = currentTime.getFullYear();
        if (day < 10) {
            day = "0" + day;
        }
        if (month < 10) {
            month = "0" + month;
        }
        var today_date = day + "/" + month + "/" + year;
        //Show bill khi bàn có hóa đơn

        if (id_bill > 0) {
            showBill(id_bill);

        }
        else {

            $('#thanhToan').hide();
        }
    }
    //Chọn món và tạo BillInfo
    function chonmon(id) {
        var idAc = $('#navbarDropdownMenuLink').attr('data-id');
        var price = $('.chonmon').attr('data-content');
        var billin = {
            count: 1,
            idAccount: idAc,
            idFood: id,
            Price: price,
            idBill: id_bill,
            idTable: id_table
        }

        $.ajax({
            url: '/HomeClient/CreateBillinfo',
            type: 'POST',
            data: {
                billin,
                id_table,
                idAc,
            },
            success: function (d) {
                console.log(d);
                id_table = d.id_table;
                id_bill = d.idBill;
                showBill(id_bill);
                var id = "#ban_" + id_table;
                $(id).attr("onclick", `Bill(this,${id_table},${id_bill},${id_table})`);
            },
            error: function () {
                alert('error');
            }
        })
    }
    //Show hóa đơn
    function showBill(id_bill) {
        $.ajax({
            url: '/HomeClient/GetBill',
            type: 'POST',
            data: {
                id_bill
            },
            success: function (d) {
                $('#TT_danhmuc').html(d);
                $('#thanhToan').show();
            }
        });
    }
    //Thanh toán
    function thanhtoan(Bill_id) {
        if (confirm("Xác nhân thanh toán thành công ?")) {
            $.ajax({
                url: '/HomeClient/ThanhToan',
                type: 'POST',
                data: {
                    id_bill
                },
                success: function (d) {
                    alert("Thanh toán thành công");
                    $('.export').css("display", "block");

                    $('.export').click(function (id_bill) {
                        var id = "#ban_" + id_table;
                        $(id).attr("onclick", `Bill(this,${id_table},0,${id_table})`);
                        $(id).css({ 'background-color': '#fff', 'border-color': '#130d28' });
                        $('#thanhToan').hide();
                    })


                }
            });
        }
    }
    //Tăng giảm số lượng.
    var Total = 0;
    function Giam(id) {
        var valConut = $('input[id=' + id + ']').val();
        var idbill = $('.upCount').attr('data-role');
        Total = valConut - 1;
        var valuex = 0;
        var valueTotal = 0;
        if (Total < 1) {
            return false;
        }
        else {
            var valueTotal = $('input[id=' + id + ']').val(Total);
            var valuex = $('input[id=' + id + ']').attr("value", Total);
        }
        var data = {
            BillInfo_id: id,
            count: Total
        };
        $.ajax({
            url: '/HomeClient/EditBill',
            type: 'POST',
            dataType: 'json',
            data: { model: JSON.stringify(data) },
            success: function (response) {
                if (response.status) {
                    //alert('update thành công');
                    showBill(idbill);
                }
                else {
                    alert('thất bại');
                }
            }
        });
    }
    //hủy hóa đơn
    function huybill(idbill,idtable) {

        if (confirm("Bạn chắc chắn muốn xóa ?")) {
            $.ajax({
                url: '/HomeClient/DeleteBill',
                type: 'POST',
                data: { idbill, idtable},
                success: function (response) {
                    var id = "#ban_" + id_table;
                    alert("Xóa bill thành công!");
                    //var id = "#ban_" + id_table;
                    $(id).attr("onclick", `Bill(this,${id_table},0,${id_table})`);
                    $(id).css({ 'background-color': '#fff', 'border-color': '#130d28' });
                    $('#thanhToan').hide();
                }
            });
        }
    }
    //Chỉ cho phép nhập số
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode;
        if (charCode == 59 || charCode == 46)
            return true;
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
    function Tang(id) {
        var valConut = $('input[id=' + id + ']').val();
        Total = parseInt(valConut) + 1;
        var valueTotal = $('input[id=' + id + ']').val(Total);
        var valuex = $('input[id=' + id + ']').attr("value", Total);
        var idbill = $('.upCount').attr('data-role');
        console.log(id_bill);
        var data = {
            BillInfo_id: id,
            count: Total
        };
        $.ajax({
            url: '/HomeClient/EditBill',
            type: 'POST',
            dataType: 'json',
            data: { model: JSON.stringify(data) },
            success: function (response) {
                if (response.status) {
                    //alert('update thành công');
                    showBill(idbill);
                }
                else {
                    alert('thất bại');
                }
            }
        });
    }
    //xóa món
    function Xoamon(id) {
        document.getElementById('modal-wrapper-Del').style.display = 'block';
        var idbill = $('.upCount').attr('data-role');
        var data = {
            BillInfo_id: id
        }
        $('#DeleteF').click(function (e) {
                $.ajax({
                    url: '/HomeClient/Delete',
                    type: 'POST',
                    datatype: 'Json',
                    data: { model: JSON.stringify(data) },
                    success: function (response) {
                        if (response.status) {
                            showBill(idbill);
                            document.getElementById('modal-wrapper-Del').style.display = 'none';
                        }
                        else {
                            alert('thất bại');
                        }
                    }
                })
                e.preventDefault();
                //})
            }
        )
    }
</script>
<!-- End Content -->
<script src="<c:out value="/resources/Client/js/popper.min.js"/>"></script>
<script src="<c:out value="/resources/Client/js/bootstrap.min.js"/>"></script>
<script src="<c:out value="/resources/Client/js/SelectFood.js"/>"></script>
<script src="<c:out value="/resources/Client/js/BillThanhToan.js"/>"></script>
<script src="<c:out value="/resources/Client/js/jquery-confirm.min.js"/>"></script>
</body>
</html>
