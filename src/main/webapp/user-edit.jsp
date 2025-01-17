<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Midterm Project">
    <meta name="author" content="Yami An Nephilim">
    <link href="/plugins/images/favicon.png" rel="icon" type="image/png" sizes="16x16">
    <title>
        User | CRM Project
    </title>
    <!-- Bootstrap Core CSS -->
    <link href="/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- Animation CSS -->
    <link href="/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/css/style.css" rel="stylesheet">
    <!-- Color CSS -->
    <link href="/css/colors/megna-dark.css" rel="stylesheet" id="theme">
    <!-- Hide button search -->
    <style>
        #search {
            display: none
        }
    </style>
</head>

<body>
    <div th:replace="fragments/preloader :: preloader"></div>
    <div id="wrapper">
        <div th:replace="fragments/navigation :: navigation"></div>
        <div th:replace="fragments/header :: header"></div>
        <!-- Page content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">
                            Cập nhật thành viên
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2 col-12"></div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <form class="form-horizontal form-material" th:action="@{/user/edit/save}" method="post">
                                <input type="hidden" th:value="${user.id}" name="id" readonly>
                                <input type="hidden" th:value="${user.image}" name="image" readonly>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Họ Tên
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" placeholder="Họ và tên đầy đủ"
                                            class="form-control form-control-line" th:value="${user.name}" name="name"
                                            required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="example-email" class="col-md-12">
                                        Email
                                    </label>
                                    <div class="col-md-12">
                                        <input type="email" class="form-control form-control-line"
                                            th:value="${user.email}" name="email" id="example-email" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Mật Khẩu
                                    </label>
                                    <div class="col-md-12">
                                        <input type="password" placeholder="Mật mã đăng nhập"
                                            class="form-control form-control-line" name="password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Điện Thoại
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" placeholder="Số di động"
                                            onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                                            class="form-control form-control-line" th:value="${user.phone}"
                                            name="phone">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Địa Chỉ
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text"
                                            placeholder="Số nhà, tên đường, xã / phường, huyện / quận, tỉnh / thành"
                                            class="form-control form-control-line" th:value="${user.address}"
                                            name="address">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Vai Trò
                                    </label>
                                    <div class="col-md-12">
                                        <select name="roleId" class="form-control form-control-line">
                                            <option th:each="role : ${roles}" th:value="${role.id}"
                                                th:text="${role.name}" th:selected="${role.id}==${user.roleId}">
                                            </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button type="submit" class="btn btn-success">
                                            Lưu lại
                                        </button>
                                        <a th:href="@{/user}" class="btn btn-primary">
                                            Quay lại
                                        </a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-2 col-12"></div>
                </div>
            </div>
            <div th:replace="fragments/footer :: footer"></div>
        </div>
    </div>
    <!-- jQuery JS -->
    <script src="/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JS -->
    <script src="/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JS -->
    <script src="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!-- Slimscroll JS -->
    <script src="/js/jquery.slimscroll.js"></script>
    <!-- Wave Effects JS -->
    <script src="/js/waves.js"></script>
    <!-- Custom Theme JS -->
    <script src="/js/custom.min.js"></script>
    <!-- Link icon to button search -->
    <script>
        $(function () {
            $("#search-link").on('click', function (e) {
                e.preventDefault();
                $("#search:hidden").trigger('click');
            });
        });
    </script>
</body>

</html>