<%--
  Created by IntelliJ IDEA.
  User: cuong
  Date: 14/12/2019
  Time: 09:07 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="dashboard-header">
    <nav class="navbar navbar-expand-lg bg-white fixed-top">
        <div class="logo" id="logo" style="text-align: center;height: 25px;width: 240px;">
            <img src="/Assets/Client/Image/logocafe.png" style="width: 76px;">
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>



        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto navbar-right-top">

                <li class="nav-item dropdown nav-user">
                    <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border-left:1px solid #e6e6f2; padding:6px 21px" >
                        Nguyễn Văn Cường
                    </a>
                    <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                        <a class="dropdown-item" href="/HomeClient/Index"><i class="fas fa-user mr-2"></i>Bán hàng</a>
                        <a class="dropdown-item" href="/Admin/User/Edit/1"><i class="fas fa-cog mr-2"></i>Cập nhật tài khoản</a>
                        <a class="dropdown-item" href="/Admin/Login/index"><i class="fas fa-power-off mr-2"></i>Đăng xuất</a>
                    </div>
                </li>
            </ul>
        </div>


    </nav>
</div>