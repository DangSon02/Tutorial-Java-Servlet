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
        Task | CRM Project
    </title>
    <!-- Bootstrap Core CSS -->
    <link href="/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
    <!-- Animation CSS -->
    <link href="/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/css/style.css" rel="stylesheet">
    <!-- Color CSS -->
    <link href="/css/colors/megna-dark.css" rel="stylesheet" id="theme">
    <link href="/css/custom.css" rel="stylesheet">
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
                            Danh sách công việc
                        </h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12 text-right">
                        <a th:href="@{/task/add}" class="btn btn-sm btn-success">
                            Thêm mới
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <div class="table-responsive">
                                <table class="table" id="example">
                                    <thead>
                                        <tr>
                                            <th>
                                                STT
                                            </th>
                                            <th>
                                                Công Việc
                                            </th>
                                            <th>
                                                Mô Tả
                                            </th>
                                            <th>
                                                Dự Án
                                            </th>
                                            <th>
                                                Người Thực Hiện
                                            </th>
                                            <th>
                                                Ngày Bắt Đầu
                                            </th>
                                            <th>
                                                Ngày Kết Thúc
                                            </th>
                                            <th>
                                                Trạng Thái
                                            </th>
                                            <th>
                                                Hành Động
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr th:each="task,i : ${tasks}">
                                            <td th:text="${i.index+1}">
                                                No.
                                            </td>
                                            <td th:text="${task.name}">
                                                Task
                                            </td>
                                            <td th:text="${task.description}">
                                                Description
                                            </td>
                                            <td th:text="${task.project.name}">
                                                Project
                                            </td>
                                            <td th:text="${task.doer.name}">
                                                Doer
                                            </td>
                                            <td th:text="${#dates.format(task.startDate,'dd/MM/yyyy')}">
                                                Start date
                                            </td>
                                            <td th:text="${#dates.format(task.endDate,'dd/MM/yyyy')}">
                                                End date
                                            </td>
                                            <td th:text="${task.status.name}">
                                                Status
                                            </td>
                                            <td>
                                                <a th:href="@{/task/edit(id=${task.id})}"
                                                    class="btn btn-sm btn-primary">
                                                    Sửa
                                                </a>
                                                <a th:href="@{/task/delete(id=${task.id})}"
                                                    class="btn btn-sm btn-danger">
                                                    Xóa
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
    <script src="/js/jquery.dataTables.js"></script>
    <!-- Wave Effects JS -->
    <script src="/js/waves.js"></script>
    <!-- Custom Theme JS -->
    <script src="/js/custom.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
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