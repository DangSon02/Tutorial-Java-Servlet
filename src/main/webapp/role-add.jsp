<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Midterm Project">
    <meta name="author" content="Yami An Nephilim">
    <link href="plugins/images/favicon.png" rel="icon" type="image/png" sizes="16x16">
    <title>
        Role | CRM Project
    </title>
    <!-- Bootstrap Core CSS -->
    <link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- Animation CSS -->
    <link href="../css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../css/style.css" rel="stylesheet">
    <!-- Color CSS -->
    <link href="../css/colors/megna-dark.css" rel="stylesheet" id="theme">
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
    <div <jsp:include page="fragments/preloader.jsp"/></div>
    <div id="wrapper">
        <div <jsp:include page="fragments/navigation.jsp"/></div>
        <div <jsp:include page="fragments/header.jsp"/></div>
        <!-- Page content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">
                            Thêm mới vai trò
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2 col-12"></div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <form class="form-horizontal form-material">
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Tên Quyền
                                    </label>
                                    <div class="col-md-12">
                                        <input id="name" type="text" name="name" placeholder="Vai trò"
                                            class="form-control form-control-line" required />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Mô Tả
                                    </label>
                                    <div class="col-md-12">
                                        <input id="desc" type="text" name="desc" placeholder="Chức danh"
                                            class="form-control form-control-line" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button id="btn-add-role" type="submit" class="btn btn-success">
                                            Lưu lại
                                        </button>
                                        <a href="/CRM/roles" class="btn btn-primary">
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
            <div <jsp:include page="fragments/footer.jsp"/></div>
        </div>
    </div>
    <!-- jQuery JS -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JS -->
    <script src="../bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JS -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!-- Slimscroll JS -->
    <script src="../js/jquery.slimscroll.js"></script>
    <!-- Wave Effects JS -->
    <script src="../s/waves.js"></script>
    <!-- Custom Theme JS -->
    <script src="../js/custom.min.js"></script>
    <script src="../js/roles.js"></script>
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