<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Midterm Project">
    <meta name="author" content="Yami An Nephilim">
    <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/favicon.png">
    <title>
        Blank | CRM Project
    </title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- Animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Color CSS -->
    <link href="css/colors/megna-dark.css" rel="stylesheet" id="theme">
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
                            Blank Page
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">
                            <h3 class="box-title">
                                Không tìm thấy dữ liệu
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
            <div th:replace="fragments/footer :: footer"></div>
        </div>
    </div>
    <!-- jQuery JS -->
    <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JS -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JS -->
    <script src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JS -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects JS -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JS -->
    <script src="js/custom.min.js"></script>
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