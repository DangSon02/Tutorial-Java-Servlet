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
                            Cập nhật công việc
                        </h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2 col-12"></div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <form th:action="@{/task/edit/save}" method="put" class="form-horizontal form-material">
                                <input type="hidden" th:value="${task.id}" name="id" readonly>
                                <input type="hidden" th:value="${task.statusId}" name="statusId" readonly>
                                <input type="hidden" th:value="${task.project.originatorId}" name="originatorId"
                                    readonly>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Dự Án
                                    </label>
                                    <div class="col-md-12">
                                        <select name="projectId" class="form-control form-control-line">
                                            <option th:each="project : ${projects}" th:value="${project.id}"
                                                th:text="${project.name}"
                                                th:selected="${project.id}==${task.project.id}">
                                            </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Công Việc
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" name="name" th:value="${task.name}"
                                            placeholder="Tên công việc" class="form-control form-control-line" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Mô Tả
                                    </label>
                                    <div class="col-md-12">
                                        <input type="text" th:value="${task.description}" name="description"
                                            placeholder="Chi tiết công việc" class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Người Thực Hiện
                                    </label>
                                    <div class="col-md-12">
                                        <select name="doerId" class="form-control form-control-line">
                                            <option th:each="user : ${users}" th:value="${user.id}"
                                                th:text="${user.name}" th:selected="${user.id}==${task.doer.id}">
                                            </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Ngày Bắt Đầu
                                    </label>
                                    <div class="col-md-12">
                                        <input th:value="${#dates.format(task.startDate, 'yyyy-MM-dd')}" type="date"
                                            class="form-control form-control-line" data-date=""
                                            data-date-format="DD/MM/YYYY" name="startDate" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">
                                        Ngày Kết Thúc
                                    </label>
                                    <div class="col-md-12">
                                        <input th:value="${#dates.format(task.endDate, 'yyyy-MM-dd')}" type="date"
                                            class="form-control form-control-line" data-date=""
                                            data-date-format="DD/MM/YYYY" name="endDate" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button type="submit" class="btn btn-success">
                                            Lưu lại
                                        </button>
                                        <a th:href="@{/task}" class="btn btn-primary">
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
    <!-- Date Picker JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.3/moment.min.js"></script>
    <script>
        $("input").on("change", function () {
            this.setAttribute(
                "data-date",
                moment(this.value, "YYYY-MM-DD")
                    .format(this.getAttribute("data-date-format"))
            )
        }).trigger("change")
    </script>
    <!-- Default Date -->
    <script>
        var currentDate = (new Date()).toISOString().slice(0, 10);
        document.getElementById('start-date').value = currentDate;
        document.getElementById('end-date').value = currentDate;
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