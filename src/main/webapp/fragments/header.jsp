<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ page contentType="text/html; charset=UTF-8" %>
<div jsp:include page="header" class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse slimscrollsidebar">
        <ul class="nav" id="side-menu">
            <li style="padding: 10px 0 0;">
                <a th:href="@{/index}" class="waves-effect">
                    <i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>
                    <span class="hide-menu">
                        Dashboard
                    </span>
                </a>
            </li>
            <li>
                <a th:href="@{/user}" class="waves-effect">
                    <i class="fa fa-user fa-fw" aria-hidden="true"></i>
                    <span class="hide-menu">
                        Thành viên
                    </span>
                </a>
            </li>
            <li>
                <a href="/CRM/roles" class="waves-effect">
                    <i class="fa fa-modx fa-fw" aria-hidden="true"></i>
                    <span class="hide-menu">
                        Vai Trò
                    </span>
                </a>
            </li>
            <li>
                <a href="/project" class="waves-effect">
                    <i class="fa fa-calendar fa-fw" aria-hidden="true"></i>
                    <span class="hide-menu">
                        Dự án
                    </span>
                </a>
            </li>
            <li>
                <a href="/task" class="waves-effect">
                    <i class="fa fa-table fa-fw" aria-hidden="true">
                    </i><span class="hide-menu">
                        Công việc
                    </span>
                </a>
            </li>
        </ul>
    </div>
</div>