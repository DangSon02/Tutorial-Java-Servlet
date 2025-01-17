<!DOCTYPE html>

<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Midterm Project">
    <meta name="author" content="Yami An Nephilim">
    <link href="plugins/images/favicon.png" rel="icon" type="image/png" sizes="16x16">
    <title>
        Sign In | CRM Project
    </title>
    <!-- Toastify CSS -->
    <link href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="css/login.css" rel="stylesheet">
    <!-- Hide button submit -->
    <style>
        #submit {
            display: none
        }
    </style>
</head>

<body>
    <div class="vertical-center">
        <div class="login-box">
            <h2>
                Hệ thống CRM
            </h2>
            <form th:action="http://localhost:8080/CRM/login" method="post" class="form">
                <div class="user-box">
                    <input type="text" name="username" placeholder="Email" required>
                </div>
                <div class="user-box">
                    <input type="password" name="password" placeholder="Mật khẩu" required>
                </div>
                <button type="submit" id="submit"></button>
                <a href="" id="submit-link">
                    <span></span><span></span><span></span> <span></span>
                    Đăng nhập
                </a>
            </form>
        </div>
    </div>
    <!-- jQuery JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <!-- Toastify JS -->
    <script src="https://cdn.jsdelivr.net/npm/toastify-js" type="text/javascript"></script>
    <script th:inline="javascript">
        var flag = /*[[${flag}]]*/ false;
        var msg = /*[[${msg}]]*/ null;
        if (flag) {
            Toastify({ text: msg, position: "center" }).showToast();
        }
    </script>
    <!-- Link neon to button submit -->
    <script>
        $(function () {
            $("#submit-link").on('click', function (e) {
                e.preventDefault();
                $("#submit:hidden").trigger('click');
            });
        });
    </script>
</body>

</html>