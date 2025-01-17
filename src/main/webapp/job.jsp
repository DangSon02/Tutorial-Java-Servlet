<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Midterm Project">
    <meta name="author" content="Yami An Nephilim">
    <link rel="icon" type="image/png" sizes="16x16" href="/plugins/images/favicon.png">
    <title>
        Job | CRM Project
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
    <link href="/css/custom.css" rel="stylesheet">
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
                            Chi tiết công việc
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <div class="col-in row">
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <i data-icon="E" class="linea-icon linea-basic">
                                    </i>
                                    <h5 class="text-muted vb">
                                        CHƯA BẮT ĐẦU
                                    </h5>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <h3 th:text="${notStartedPecent+'%'}" class="counter text-right m-t-15 text-danger">
                                        0%
                                    </h3>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                            aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                            th:style="'width:' + ${notStartedPecent} + '%;'">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <div class="col-in row">
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <i class="linea-icon linea-basic" data-icon="&#xe01b;"></i>
                                    <h5 class="text-muted vb">
                                        ĐANG THỰC HIỆN
                                    </h5>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <h3 th:text="${inProgressPecent+'%'}" class="counter text-right m-t-15 text-megna">
                                        0%
                                    </h3>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-megna" role="progressbar"
                                            aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                            th:style="'width:' + ${inProgressPecent} + '%'">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <div class="col-in row">
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <i class="linea-icon linea-basic" data-icon="&#xe00b;"></i>
                                    <h5 class="text-muted vb">
                                        ĐÃ HOÀN THÀNH
                                    </h5>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <h3 th:text="${completedPercent+'%'}"
                                        class="counter text-right m-t-15 text-primary">
                                        0%
                                    </h3>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary" role="progressbar"
                                            aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                            th:style="'width:' + ${completedPercent} + '%'">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div th:each="user : ${users}" class="row">
                    <div class="col-xs-12">
                        <a th:href="@{/user/details(id=${user.id})}" class="group-title">
                            <img width="30" th:src="@{${'/plugins/images/users/'+user.image}}" class="img-circle" />
                            <span th:text="${user.name}">
                                User
                            </span>
                        </a>
                    </div>
                    <div class="col-md-4">
                        <div class="white-box">
                            <h3 class="box-title">
                                Chưa bắt đầu
                            </h3>
                            <div class="message-center">
                                <a th:each="task : ${user.getTasksNotStarted()}"
                                    th:href="@{/task/edit(id=${task.id})}">
                                    <div class="mail-contnet">
                                        <h5 th:text="${task.name}">
                                            Task
                                        </h5>
                                        <span th:text="${task.project.name}" class="mail-desc">
                                            Project
                                        </span>
                                        <span th:text="${task.description}" class="mail-desc">
                                            Description
                                        </span>
                                        <span
                                            th:text="${#dates.format(task.startDate, 'dd/MM/yyyy')+' - '+#dates.format(task.endDate, 'dd/MM/yyyy')}"
                                            class="time">
                                            Start date - End date
                                        </span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="white-box">
                            <h3 class="box-title">
                                Đang thực hiện
                            </h3>
                            <div class="message-center">
                                <a th:each="task : ${user.getTasksInProgress()}"
                                    th:href="@{/task/edit(id=${task.id})}">
                                    <div class="mail-contnet">
                                        <h5 th:text="${task.name}">
                                            Task
                                        </h5>
                                        <span th:text="${task.project.name}" class="mail-desc">
                                            Project
                                        </span>
                                        <span th:text="${task.description}" class="mail-desc">
                                            Description
                                        </span>
                                        <span
                                            th:text="${#dates.format(task.startDate, 'dd/MM/yyyy')+' - '+#dates.format(task.endDate, 'dd/MM/yyyy')}"
                                            class="time">
                                            Start date - End date
                                        </span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="white-box">
                            <h3 class="box-title">
                                Đã hoàn thành
                            </h3>
                            <div class="message-center">
                                <a th:each="task : ${user.getTasksCompleted()}"
                                    th:href="@{/task/edit(id=${task.id})}">
                                    <div class="mail-contnet">
                                        <h5 th:text="${task.name}">
                                            Task
                                        </h5>
                                        <span th:text="${task.project.name}" class="mail-desc">
                                            Project
                                        </span>
                                        <span th:text="${task.description}" class="mail-desc">
                                            Description
                                        </span>
                                        <span
                                            th:text="${#dates.format(task.startDate, 'dd/MM/yyyy')+' - '+#dates.format(task.endDate, 'dd/MM/yyyy')}"
                                            class="time">
                                            Start date - End date
                                        </span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
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