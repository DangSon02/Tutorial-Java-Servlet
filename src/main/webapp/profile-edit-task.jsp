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
        Profile | CRM Project
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
                            Cập nhật trạng thái công việc
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2 col-12"></div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <form class="form-horizontal form-material" th:action="@{/profile/edit/task/save}"
                                method="put">
                                <input type="hidden" th:value="${task.id}" name="id" readonly>
                                <input type="hidden" th:value="${task.startDate}" name="startDate" readonly>
                                <input type="hidden" th:value="${task.endDate}" name="endDate" readonly>
                                <input type="hidden" th:value="${task.doerId}" name="doerId" readonly>
                                <input type="hidden" th:value="${task.projectId}" name="projectId" readonly>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Dự Án
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" readonly class="form-control form-control-line"
                                            th:value="${task.project.name}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Công Việc
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" readonly th:value="${task.name}"
                                            class="form-control form-control-line" name="name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Mô Tả
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" readonly th:value="${task.description}"
                                            class="form-control form-control-line" name="description">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Ngày Bắt Đầu
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" readonly
                                            th:value="${#dates.format(task.startDate,'dd/MM/yyyy')}"
                                            class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Ngày Kết Thúc
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" readonly
                                            th:value="${#dates.format(task.endDate,'dd/MM/yyyy')}"
                                            class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Trạng Thái
                                    </label>
                                    <div class="col-md-12">
                                        <select name="statusId" class="form-control form-control-line">
                                            <option th:each="taskStatus : ${taskStatuses}" th:value="${taskStatus.id}"
                                                th:text="${taskStatus.name}"
                                                th:selected="${taskStatus.id}==${task.statusId}">
                                            </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button type="submit" class="btn btn-success">
                                            Lưu lại
                                        </button>
                                        <a th:href="@{/profile}" class="btn btn-primary">
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