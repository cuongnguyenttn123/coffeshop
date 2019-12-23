<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<form action="" class="modal-content animate" method="post" style="width:660px">        <div class="imgcontainer">
    <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">×</span>
    <h2 style="text-align:center;color:#007bff">Chi tiết hóa đơn</h2>
    <h5>SHD: &nbsp;113</h5>
</div>
    <div class="container">

        <div class="row">
            <div class="col-lg-4">
                <div class="form-group row" style="padding:5px 0px">
                    <label for="inputEmail2" class="col-lg-4 col-form-label text-right">Ngày vào:</label>
                    <div class="col-lg-6" style="padding:8px 16px;">
                        ${bill.getDate()}
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="form-group row" style="padding:5px 0px">
                    <label for="inputEmail2" class="col-lg-4 col-form-label text-right">Giờ vào:</label>
                    <div class="col-lg-6" style="padding:8px 16px;">
                        ${bill.getCheckIn()}
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="form-group row" style="padding:5px 0px">
                    <label for="inputEmail2" class="col-lg-4 col-form-label text-right">Giờ ra:</label>
                    <div class="col-lg-6" style="padding:8px 16px;">
                        ${bill.getCheckOut()}
                    </div>
                </div>
            </div>
        </div>

        <div class="card-body">
            <table class="table table-bordered" style="margin-left:0px">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên món</th>
                    <th>Số lượng</th>
                    <th>DVT</th>
                    <th>Đơn giá</th>
                    <th>Thành tiền</th>
                </tr>
                </thead>
                <tbody>
                <%
                    int i =0;
                    int sum = 0;

                %>
                <c:forEach items="${bill.getBillinfos()}" var="billinfo">

                    <tr id="row_${billinfo.getId()}">
                            ${i= i + 1}
                        <td>${i}</td>
                        <td data-id="${billinfo.getId()}"> ${billinfo.getFood().getName()}</td>
                        <td>${billinfo.getCount()}</td>
                        <td style="text-align:center"> ${billinfo.getFood().getDvt().getName()}</td>
                        <td>${billinfo.getPrice()}</td>
                        <td>${billinfo.getPrice()*billinfo.getCount()}</td>
                                    ${sum= sum + billinfo.getPrice()*billinfo.getCount()}
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="5"><b>Tổng</b></td>
                    <td>${sum}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</form>