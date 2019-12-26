<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<div class="dashboard-header">
    <nav class="navbar navbar-expand-lg bg-white fixed-top">
        <div class="logo" id="logo" style="text-align: center;height: 25;width: 240px;">
            <img src="<c:out value="/resources/Client/Image/logocafe.png"/>" style="width: 72px;">
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>



        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto navbar-right-top">

                <li class="nav-item dropdown nav-user">
                    <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border-left:1px solid #e6e6f2; padding:6px 21px" >
                        ${pageContext.request.userPrincipal.name}
                    </a>
                    <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                        <a class="dropdown-item" href="/sell"><i class="fas fa-user mr-2"></i>Bán hàng</a>
                        <a class="dropdown-item" href="/user/profile"><i class="fas fa-cog mr-2"></i>Cập nhật tài khoản</a>
                        <a class="dropdown-item" href="/j_spring_security_logout"><i class="fas fa-power-off mr-2"></i>Đăng xuất</a>
                    </div>
                </li>
            </ul>
        </div>


    </nav>
</div>
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

    #showthongke {
        display: none;
    }
    #showTongQuan{
        display:none;
    }

    .emp-profile{
        padding: 3%;
        margin-top: 3%;
        margin-bottom: 3%;
        border-radius: 0.5rem;
        background: #fff;
    }
    .profile-img{
        text-align: center;
    }
    .profile-img img{
        width: 70%;
        height: 100%;
    }
    .profile-img .file {
        position: relative;
        overflow: hidden;
        margin-top: -20%;
        width: 70%;
        border: none;
        border-radius: 0;
        font-size: 15px;
        background: #212529b8;
    }
    .profile-img .file input {
        position: absolute;
        opacity: 0;
        right: 0;
        top: 0;
    }
    .profile-head h5{
        color: #333;
    }
    .profile-head h6{
        color: #0062cc;
    }
    .profile-edit-btn{
        border: none;
        border-radius: 1.5rem;
        width: 70%;
        padding: 2%;
        font-weight: 600;
        color: #6c757d;
        cursor: pointer;
    }
    .proile-rating{
        font-size: 12px;
        color: #818182;
        margin-top: 5%;
    }
    .proile-rating span{
        color: #495057;
        font-size: 15px;
        font-weight: 600;
    }
    .profile-head .nav-tabs{
        margin-bottom:5%;
    }
    .profile-head .nav-tabs .nav-link{
        font-weight:600;
        border: none;
    }
    .profile-head .nav-tabs .nav-link.active{
        border: none;
        border-bottom:2px solid #0062cc;
    }
    .profile-work{
        padding: 14%;
        margin-top: -15%;
    }
    .profile-work p{
        font-size: 12px;
        color: #818182;
        font-weight: 600;
        margin-top: 10%;
    }
    .profile-work a{
        text-decoration: none;
        color: #495057;
        font-weight: 600;
        font-size: 14px;
    }
    .profile-work ul{
        list-style: none;
    }
    .profile-tab label{
        font-weight: 600;
    }
    .profile-tab p{
        font-weight: 600;
        color: #0062cc;
    }
</style>

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
                        <a class="nav-link active" href="/sell" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fas fa-paper-plane"></i>Bán hàng <span class="badge badge-success">6</span></a>

                    </li>
                    <li class="nav-item" id="showTongQuan">
                        <a class="nav-link" href="/user/generality" aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i class="fas fa-home"></i>Tổng quan</a>
                    </li>

                    <li class="nav-item " id="showthucdon">
                        <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i class="fas fa-coffee"></i>Đồ uống, món ăn</a>
                        <div id="submenu-4" class="collapse submenu" style="">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link" href="/user/food">Đồ uống - Món ăn</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/user/category">Nhóm thực đơn</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/user/dvt">Đơn vị tính</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item" id="showthucdon">
                        <a class="nav-link" href="/user/bar" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-diagnoses"></i>Quản lí bếp/bar</a>
                    </li>

                </ul>
            </div>
        </nav>
    </div>

</div>

