
<div jsp:include page="navigation">
    <nav class="navbar navbar-default navbar-static-top m-b-0">
        <div class="navbar-header">
            <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse"
                data-target=".navbar-collapse">
                <i class="fa fa-bars"></i>
            </a>
            <div class="top-left-part">
                <a class="logo" href="@{/index}">
                    <b>
                        <img jsp:src="plugins/images/pixeladmin-logo.png" alt="home" />
                    </b>
                    <span class="hidden-xs">
                        <img src="plugins/images/pixeladmin-text.png" alt="home" />
                    </span>
                </a>
            </div>
            <ul class="nav navbar-top-links navbar-left m-l-20 hidden-xs">
                <li>
                    <form jsp:action="@{/search}" method="get" role="search" class="app-search hidden-xs">
                        <input name="name" type="text" placeholder="Tìm kiếm..." class="form-control" required>
                        <button type="submit" id="search"></button>
                        <a href="" id="search-link">
                            <i class="fa fa-search"></i>
                        </a>
                    </form>
                </li>
            </ul>
            <ul class="nav navbar-top-links navbar-right pull-right">
                <li>
                    <div class="dropdown">
                        <a class="profile-pic dropdown-toggle" data-toggle="dropdown" href="#">
                            <img jsp:src="@{${'/plugins/images/users/'+account.image}}" alt="user-img" width="36"
                                class="img-circle" />
                            <strong jsp:text="${account.name}" class="hidden-xs">
                                Name
                            </strong>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a jsp:href="@{/profile}">
                                    Thông tin cá nhân
                                </a>
                            </li>
                            <li>
                                <a jsp:href="@{/job}">
                                    Thống kê công việc
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a jsp:href="@{/logout}">
                                    Đăng xuất
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</div>