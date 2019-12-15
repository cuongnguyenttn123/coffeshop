<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="tab-content col" id="TT_danhmuc">
    <style>
    .downCount {
        margin: 5px auto;
        background: #ffffff;
        color: #000;
        text-align: center;
        display: inline-block;
        width: 15%;
        height: 25px;
        padding: 0;
        margin-right: -4px;
        border: none;
    }

    .upCount {
        background: #ffffff;
        color: #000;
        text-align: center;
        display: inline-block;
        width: 15%;
        height: 25px;
        padding: 0;
        margin-left: -4px;
        border: none;
    }

    .DeleteFood {
        text-decoration: none;
        color: #fff;
    }

    .DeleteFood:hover {
        text-decoration: none;
        color: #fff;
    }
    .export {
        margin-top: 5px;
        padding: 7px 14px;
        background-color: #5089b1;
        border-radius: 4px;
        color: #fff;
        outline-style: none;
        border-color:hsla(205, 38%, 50%, 0.67) hsla(80, 137%, 177%, 0.67);
        margin: 5px;
        float: right;
        text-decoration:none;
    }
    .export:hover{
        text-decoration:none;
        color:#fff;
    }
    .export1 {
        margin-top: 5px;
        padding: 7px 14px;
        background-color: #5089b1;
        border-radius: 4px;
        color: #fff;
        outline-style: none;
        border-color:hsla(205, 38%, 50%, 0.67) hsla(80, 137%, 177%, 0.67);
        margin: 5px;
        float: right;
        text-decoration:none;
    }
    .export1:hover{
        text-decoration:none;
        color:#fff;
    }
</style>
    <script src="<c:out value="/resources/Client/js/BillThanhToan.js"/>"></script>

    <script src="<c:out value="/resources//scripts/jquery.unobtrusive-ajax.min.js"/>"></script>

    <script src="<c:out value="/resources/Admin/vendor/jquery/jquery-3.3.1.min.js"/>"></script>

    <div class="scrollbar" id="style-1">
        <div class="force-overflow">
            <table class="TableTT">
                <thead>
                <tr>
                    <th style="width:1%">STT</th>
                    <th style="width:20%">Tên món</th>
                    <th style="width:25%">Số lượng</th>
                    <th style="width:8%">DVT</th>
                    <th style="width:14%">Đơn giá</th>
                    <th style="width:10%">Thành tiền</th>
                    <th style="width:1%">Hủy món</th>

                </tr>
                </thead>
                <tbody class="bodyMon ">

                <%  int i = 0; %>
                <% int tong = 0; %>
                <c:forEach items="${bill.getBillinfos()}" var="billdetail">
                <tr id="row_${billdetail.getId()}">

                    <td>${ i = i+ 1}</td>
                    <td data-id="${billdetail.getId()}"> ${billdetail.getFood().getName()} </td>
                    <td style="text-align:center">
                        <button class="downCount" data-id="${billdetail.getId()}" data-role="${bill.getId()}" onclick="Giam(${billdetail.getId()})">
                            <i class="fas fa-minus"></i>
                        </button>
                        <input type="text" class="ChangValue" data-role="${bill.getId()}" onkeypress="return isNumberKey(event);" name="count" id="${billdetail.getId()}" data-id="${billdetail.getId()}" value="${billdetail.getCount()}" style="text-align:center;width:24%;height: 25px;border: none;border-left: solid 1px #ccc;border-right: solid 1px #ccc;padding:0">
                        <button class="upCount" data-id="${billdetail.getId()}" data-role="${bill.getId()}" onclick="Tang(${billdetail.getId()})">
                            <i class="fas fa-plus"></i>
                        </button>
                    </td>
                    <td style="text-align:center"> ${billdetail.getFood().getDvt().getName()}</td>
                    <td>${billdetail.getPrice()}</td>
                    <td>${sum = sum + billdetail.getPrice()*billdetail.getCount() }</td>

                    <td style="text-align:center">
                        <a href="#" style="text-decoration:none;color:#fff" onclick="Xoamon(${billdetail.getId()})" data-role=${bill.getId()}><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
                </c:forEach>
               <%-- <tr id="row_320">
                    <td>2 </td>
                    <td data-id="114"> Cà phê sữa  </td>
                    <td style="text-align:center">
                        <button class="downCount" data-id="320" data-role="114" onclick="Giam(320)">
                            <i class="fas fa-minus"></i>
                        </button>
                        <input type="text" class="ChangValue" data-role="114" onkeypress="return isNumberKey(event);" name="count" id="320" data-id="320" value="3" style="text-align:center;width:24%;height: 25px;border: none;border-left: solid 1px #ccc;border-right: solid 1px #ccc;padding:0">
                        <button class="upCount" data-id="320" data-role="114" onclick="Tang(320)">
                            <i class="fas fa-plus"></i>
                        </button>
                    </td>
                    <td style="text-align:center"> Cốc</td>
                    <td>20.000</td>
                    <td>60.000</td>
                    <td style="text-align:center">
                        <a href="#" style="text-decoration:none;color:#fff" onclick="Xoamon(320)" data-role="114"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>
                <tr id="row_321">
                    <td>3 </td>
                    <td data-id="114"> Cà phên đen </td>
                    <td style="text-align:center">
                        <button class="downCount" data-id="321" data-role="114" onclick="Giam(321)">
                            <i class="fas fa-minus"></i>
                        </button>
                        <input type="text" class="ChangValue" data-role="114" onkeypress="return isNumberKey(event);" name="count" id="321" data-id="321" value="2" style="text-align:center;width:24%;height: 25px;border: none;border-left: solid 1px #ccc;border-right: solid 1px #ccc;padding:0">
                        <button class="upCount" data-id="321" data-role="114" onclick="Tang(321)">
                            <i class="fas fa-plus"></i>
                        </button>
                    </td>
                    <td style="text-align:center"> Cốc</td>
                    <td>20.000</td>
                    <td>40.000</td>
                    <td style="text-align:center">
                        <a href="#" style="text-decoration:none;color:#fff" onclick="Xoamon(321)" data-role="114"><i class="fas fa-trash-alt"></i></a>
                    </td>
                </tr>--%>
                <tr>
                    <td colspan="5"><b>Tổng</b></td>
                    <td>${sum}</td>
                </tr>

                </tbody>
            </table>
        </div>
        <div class="col">
            <div class="col">
                <button id="thanhtoan1" name="thanhToan1" type="submit" onclick="thanhtoan(${bill.getId()})">Thanh Toán</button>
            </div>
            <div class="col">
                <a class="export" href="/HomeClient/Reports?ReportType=Word&amp;idbill=${bill.getId()}">Export</a>
            </div>

            <div class="col">

                <a href="#" class="export1" role="button" aria-pressed="true" onclick="huybill(${bill.getId()},${bill.getTablefood().getId()})">Hủy Bill</a>
            </div>
        </div>
    </div>
</div>