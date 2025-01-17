<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Midterm Project">
    <meta name="author" content="Yami An Nephilim">
    <link href="plugins/images/favicon.png" rel="icon" type="image/png" sizes="16x16">
    <title>
        Forbidden | CRM Project
    </title>
    <!-- Bootstrap Core CSS -->
    <link href='bootstrap/dist/css/bootstrap.min.css' rel="stylesheet">
    <!-- Animation CSS -->
    <link href='css/animate.css' rel="stylesheet">
    <!-- Custom CSS -->
    <link href='css/style.css' rel="stylesheet">
    <!-- Color CSS -->
    <link href="css/colors/megna-dark.css" rel="stylesheet" id="theme">
    <!-- Add background -->
    <style>
        body {
            background-image: url('/plugins/images/error-bg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
</head>

<body>
    <div th:replace="fragments/preloader :: preloader"></div>
    <section id="wrapper" class="error-page">
        <div class="error-box">
            <div class="error-body text-center">
                <h1>
                    403
                </h1>
                <h3 class="text-uppercase">
                    Bạn không có quyền truy cập!
                </h3>
                <p class="text-muted m-t-30 m-b-30">
                    YOU SEEM TO BE TRYING TO FIND HIS WAY HOME
                </p>
                <a th:href="@{/index}" class="btn btn-info btn-rounded waves-effect waves-light m-b-40">
                    Về trang chủ
                </a>
            </div>
            <div th:replace="fragments/footer :: footer"></div>
        </div>
    </section>
    <!-- jQuery JS -->
    <script src='plugins/bower_components/jquery/dist/jquery.min.js'></script>
    <!-- Bootstrap Core JS -->
    <script src='bootstrap/dist/js/bootstrap.min.js'></script>
    <script type="text/javascript">
        $(function () {
            $(".preloader").fadeOut();
        });
    </script>
</body>

</html>