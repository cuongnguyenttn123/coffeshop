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
    <jsp:include page="../common/header.jsp"/>
    <title>TTN Admin</title>
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
        <img src="<c:out value="/resources/Client/Image/logocafe.png"/>" style="width: 72px;">
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light float-right" style="padding-right: 15px;padding-bottom: 0;padding-top: 0;height: 46px;">
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item dropdown ">
                    <a class="nav-link dropdown-toggle " href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" data-id="1" aria-haspopup="true" aria-expanded="false" style="color: #000;border-left:1px solid hsla(0, 0%, 4%, 0.37); padding:9px 21px">
                        ${pageContext.request.userPrincipal.name}
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" style="margin-right:-14px">
                        <a class="dropdown-item" href="/user">
                            <i class="fa fa-home"></i>&nbsp;&nbsp;Màn hình quản lí
                        </a>
                        <a class="dropdown-item" href="/j_spring_security_logout">
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
                        <a href="#mon_${cate.getId()}" id="CaFe" class="btn btn-outline-primary btn-xs">${cate.getName()}</a><br />
                    </c:forEach>

                </div>
                <div id="danhMuc_item" class="col-8">
                    <c:forEach items="${cate}" var="cate">
                        <div class="danhmic_listitem" id="mon_${cate.getId()}">

                            <c:forEach items="${cate.getFoodList()}" var="food">

                                <a href="#" class="chonmon" onclick="chonmon(${food.getId()})" data-id="1" name="${food.getName()}" data-content="${food.getPrice()}">
                                    <div>
                                            ${food.getName()}  <br /> ${food.getPrice()} đ
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

                            <c:forEach items="${area}" var="area">
                                <li class="nav-item">
                                    <a class="nav-link ng-binding" data-toggle="tab" href="#${area.getId()}">${area.getName()}</a>
                                </li>
                            </c:forEach>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <c:forEach items="${area}" var="area">
                                <div class="tab-pane container" id="${area.getId()}">
                                    <div class="row list_table">
                                        <c:forEach items="${area.getTablefoods()}" var="tablefoods">
                                            <div class="col-lg-2 item_table ban1" data-id="${tablefoods.getId()}"
                                                 data-target="ban_${tablefoods.getId()}" id="ban_${tablefoods.getId()}" data-content="${tablefoods.getName()}" onclick="Bill(this, ${tablefoods.getIdBill()},${tablefoods.getId()})">
                                                <img src="/resources/Client/Image/cup-coffee.png" alt="Alternate Text" />
                                                <p>${tablefoods.getName()}</p>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </c:forEach>


                        </div>

                    </div>
                </div>
            </div>
            <div id="thanhToan" class="col" style="height: 70%">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab-TT" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true" value=""></a>
                    </li>
                    <li class="nav-item" style="margin-left: 20px;">
                        <div class="row">
                            <div class="input-group">

                                <select class="form-control" id="selectDINNERTABLEID">
                                    <option>---Tùy chọn---</option>
                                    <c:forEach items="${tableNull}" var="tableNull">
                                        <option id='<c:out value="${tableNull.getId() }"></c:out>'><c:out
                                                value="${tableNull.getName() }"></c:out></option>
                                    </c:forEach>

                                </select>

                                <button id="btnDoiBan" type="button"
                                        class="btn btn-inverse-dark btn-fw">Đổi bàn</button>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="tab-content col" id="TT_danhmuc">

                </div>
            </div>
        </div>
    </div>
</div>
<div id="modal-wrapper-Del" class="modal">
    <form action="/salesman/Delete" class="modal-contentDel animateDel" method="post">
        <div class="container-confirm">
        <div class="title-main">Xác nhận xóa</div>
        <div class="title-content">
            <div class="content-titlt">Bạn có đồng ý xóa ?</div>
            <div class="content-confrim">
                <a class="btnCf-cancel" onclick="document.getElementById('modal-wrapper-Del').style.display = 'none'">Hủy</a>
                <button class="btnCf-yes" type="submit" id="DeleteF">Đồng ý</button>
            </div>
        </div>
    </div>
    </form>
</div>
<script>
    var id_bill = 0;
    var id_table = 0;
    var idTableSelect = "";

    //Chọn bàn và tạo Bill
    function Bill(element, bill_id, idtable) {

        if (idTableSelect) {
            if (id_bill > 0) {

                $(idTableSelect).css({ 'background-color': '#68e458', 'border-color': '#68e458' });
            } else {

                $(idTableSelect).css({ 'background-color': '#fff', 'border-color': '#130d28' });
            }
        }
        idTableSelect = '#' + element.id;
        id_bill = bill_id;
        id_table = idtable;
        $(idTableSelect).css({ 'background-color': '#97FFFF', 'border-color': '#97FFFF' });


        $('#Contenleft_danhmuc').show();
        $('.danhMuc a:first-child').click();

        if (id_bill > 0) {
            showBill(id_bill);

        }
        else {

            $('#thanhToan').hide();
        }
    }
    //Chọn món và tạo BillInfo
    function chonmon(id) {
        var price = $('.chonmon').attr('data-content');
        var billin = {
            count: 1,
            idFood: id,
            Price: price,
            idBill: id_bill,
            idTable: id_table
        }
        billin = JSON.stringify(billin);
        $.ajax({
            url: '/salesman/create',
            type: 'POST',
            data: {
                billin:billin,
                id_table:id_table,

            },
            success: function (d) {
                id_table = d.id_table;
                id_bill = d.idBill;
                showBill(id_bill);
                var id = "#ban_" + id_table;
                var x = 'Bill(this,'+id_bill+','+id_table+')';
                $(id).attr("onclick", x);
            },
            error: function () {
                alert('error');
            }
        })
    }
    //Show hóa đơn
    function showBill(id_bill) {
        var id_bill = parseInt(id_bill);

        $.ajax({
            url: '/salesman/getbill',
            type: 'POST',
            data: {
                id_bill
            },
            success: function (d) {
                $('#TT_danhmuc').html(d);
                $('#thanhToan').show();
                $('#thanhtoan').show();
            }
        });
    }
    //Thanh toán
    function thanhtoan(Bill_id) {
        if (confirm("Xác nhân thanh toán thành công ?")) {
            $.ajax({
                url: '/salesman/thanhtoan',
                type: 'POST',
                data: {
                    id_bill
                },
                success: function (d) {
                    alert("Thanh toán thành công");
                    $('.export').css("display", "block");

                    $('.export').click(function (id_bill) {
                        var id = "#ban_" + id_table;
                        var x = 'Bill(this,0,'+id_table+')';
                        $(id).attr("onclick", x);
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
            url: '/salesman/editbill',
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
                url: '/salesman/deletebill',
                type: 'POST',
                data: {
                    idbill:idbill,
                    idtable:idtable
                },
                success: function (response) {
                    var id = "#ban_" + id_table;
                    alert("Xóa bill thành công!");
                    //var id = "#ban_" + id_table;
                    var x = 'Bill(this,0,'+id_table+')';
                    $(id).attr("onclick", x);
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
            url: '/salesman/editbill',
            type: 'POST',
            dataType: 'json',
            data: { model: JSON.stringify(data) },
            success: function () {
                var a = 3;
                showBill(idbill);
                console.log(a);
            }
        });
    }
    //xóa món
    function Xoamon(id) {
        document.getElementById('modal-wrapper-Del').style.display = 'block';
        var idbill = $('.upCount').attr('data-role');
        var id_bill = idbill;
        var data = {
            BillInfo_id: id
        }
        var a = 0;
        $('#DeleteF').click(function (e) {

                console.log(a+1);
                $.ajax({

                    url: '/salesman/delete',
                    type: 'POST',
                    datatype: 'Json',
                    data: { model: JSON.stringify(data) },
                    success: function (response) {
                        if (response.status) {
                            showBill(id_bill);
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


    $("#btnDoiBan").click(function() {

        var dinnertableidOLD = id_table;
        var dinnertableid = $("#selectDINNERTABLEID").val();

        $.ajax({
            url: '/salesman/index-changeTable',
            type: 'POST',
            data: {
                dinnertableid : dinnertableid,
                dinnertableidOLD :dinnertableidOLD
            },
            success: function (response) {
                var id = "#ban_" + id_table;
                var idnew = "#ban_" + response.tableidNew;

                var x = "Bill(this,"+ response.tableidNew+","+response.billId+"," + response.tableidNew+")";
                var y = 'Bill(this,'+ response.tableidOld+',0,'+response.tableidOld+')';
                $(id).attr("onclick", y);
                $(idnew).attr("onclick", x);

                $(id).css({ 'background-color': '#fff', 'border-color': '#130d28' });
                $('#thanhToan').hide();
            }
        });

    });

</script>
<!-- End Content -->
<jsp:include page="../common/jsLibrary.jsp"/>
</body>
</html>