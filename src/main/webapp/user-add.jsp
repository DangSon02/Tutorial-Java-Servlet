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
    <!-- Toastify CSS -->
    <link href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css" rel="stylesheet" type="text/css">
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
                            Thêm mới thành viên
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2 col-12"></div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <form class="form-horizontal form-material" th:action="@{/user/add/save}" method="post">
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Họ Tên
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" placeholder="Họ và tên đầy đủ"
                                            class="form-control form-control-line" name="name" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="example-email" class="col-md-12">
                                        Email
                                    </label>
                                    <div class="col-md-12">
                                        <input type="email" placeholder="Thư điện tử"
                                            class="form-control form-control-line" name="email" id="example-email"
                                            required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Mật Khẩu
                                    </label>
                                    <div class="col-md-12">
                                        <input type="password" placeholder="Mật mã đăng nhập"
                                            class="form-control form-control-line" name="password" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Điện Thoại
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" placeholder="Số di động"
                                            onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                                            class="form-control form-control-line" name="phone">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Địa Chỉ
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text"
                                            placeholder="Số nhà, tên đường, xã / phường, huyện / quận, tỉnh / thành"
                                            class="form-control form-control-line" name="address">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Vai Trò
                                    </label>
                                    <div class="col-md-12">
                                        <select name="roleId" class="form-control form-control-line">
                                            <option th:each="role : ${roles}" th:value="${role.id}"
                                                th:text="${role.name}" th:selected="${role.id}==${defaultRoleId}">
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
    <!-- Toastify JS -->
    <script src="https://cdn.jsdelivr.net/npm/toastify-js" type="text/javascript"></script>
    <script th:inline="javascript">
        var flag = /*[[${flag}]]*/ false;
        var msg = /*[[${msg}]]*/ null;
        if (flag) {
            Toastify({ text: msg, position: "center" }).showToast();
        }
    </script>
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