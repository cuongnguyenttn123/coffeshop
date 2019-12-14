<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 09:06 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav-left-sidebar sidebar-dark">
    <div class="menu-list">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav flex-column">
                    <li class="nav-divider">
                        Menu
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link active" href="/" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fas fa-paper-plane"></i>Bán hàng <span class="badge badge-success">6</span></a>

                    </li>
                    <li class="nav-item" id="showTongQuan">
                        <a class="nav-link" href="/admin/generality" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fas fa-home"></i>Tổng quan</a>
                    </li>
                    <li class="nav-item " id="showTongQuan">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-8" aria-controls="submenu-4"><i class="fas fa-table"></i>Sơ đồ phòng,bàn</a>
                        <div id="submenu-8" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="/admin/area">Khu vực</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/admin/table">Bàn</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item " id="showthucdon">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fas fa-coffee"></i>Đồ uống, món ăn</a>
                        <div id="submenu-4" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="/admin/food">Đồ uống - Món ăn</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/admin/category">Nhóm thực đơn</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/admin/dvt">Đơn vị tính</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item" id="showthucdon">
                        <a class="nav-link" href="/admin/manager" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-diagnoses"></i>Quản lí bếp/bar</a>
                    </li>
                    <li class="nav-item" id="showTongQuan">
                        <a class="nav-link" href="/admin/statistical" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="far fa-chart-bar"></i>Thống kê doanh thu</a>
                    </li>

                    <li class="nav-item" id="showTongQuan">
                        <a href="/admin/bill" class="nav-link" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-database"></i>Quản lý hóa đơn</a>
                    </li>
                    <li class="nav-item" id="showTongQuan">
                        <a  href="/admin/employee" class="nav-link" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fa fa-fw fa-user-circle"></i>Quản lý nhân viên</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>

</div>
