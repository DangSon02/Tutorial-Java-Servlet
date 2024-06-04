<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="crm.model.Role" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Midterm Project">
    <meta name="author" content="Yami An Nephilim">
    <link href="plugins/images/favicon.png" rel="icon" type="image/png" sizes="16x16">
    <title>Role | CRM Project</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
    <!-- Animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Color CSS -->
    <link href="css/colors/megna-dark.css" rel="stylesheet" id="theme">
    <link href="css/custom.css" rel="stylesheet">
    <!-- Toastify CSS -->
    <link href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css" rel="stylesheet" type="text/css">
    <!-- Hide button search -->
    <style>
        #search {
            display: none;
        }
    </style>
</head>
<%
    List<Role> list = (List<Role>) request.getAttribute("roles");
%>
<body>

    <div id="wrapper">
        <!-- Include preloader, navigation, and header -->
        <jsp:include page="fragments/preloader.jsp" />
        <jsp:include page="fragments/navigation.jsp" />
        <jsp:include page="fragments/header.jsp" />
        <!-- Page content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Danh sách vai trò</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12 text-right">
                        <a href="/CRM/roles/add" class="btn btn-sm btn-success">Thêm mới</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <div class="table-responsive">
                                <table class="table" id="example">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Vai Trò</th>
                                            <th>Mô Tả</th>
                                            <th>Hành Động</th>
                                        </tr>
                                    </thead>
                                    <tbody
                                            <% for (Role role : list) { %>
                                                <tr>
                                                    <td><%= role.getId() %></td>
                                                    <td><%= role.getRoleName() %></td>
                                                    <td><%= role.getDescription() %></td>
                                                    <td>
                                                        <a href="" class="btn btn-sm btn-primary">Sửa</a>
                                                        <a href="" class="btn btn-sm btn-danger btn-xoa" id-role=<%= role.getId() %>>Xóa</a>
                                                    </td>
                                                </tr>
                                        <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="fragments/footer.jsp" />
        </div>
    </div>
    <!-- jQuery JS -->
    <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JS -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JS -->
    <script src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!-- Slimscroll JS -->
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/jquery.dataTables.js"></script>
    <!-- Wave Effects JS -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JS -->
    <script src="js/custom.min.js"></script>
    <script src="js/roles.js"></script>
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>
    <!-- Toastify JS -->
    <script src="https://cdn.jsdelivr.net/npm/toastify-js" type="text/javascript"></script>
    <!-- Thay thế th:inline="javascript" bằng JavaScript thuần -->
    <script>
        var flag = false; // Thay đổi giá trị này nếu cần thiết từ backend
        var msg = null;   // Thay đổi giá trị này nếu cần thiết từ backend
        if (flag) {
            Toastify({
                text: msg,
                position: "center"
            }).showToast();
        }
    </script>
    <!-- Link icon to button search -->
    <script>
        $(function() {
            $("#search-link").on('click', function(e) {
                e.preventDefault();
                $("#search:hidden").trigger('click');
            });
        });
    </script>
</body>
</html>
