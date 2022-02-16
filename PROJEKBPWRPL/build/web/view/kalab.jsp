<%-- 
    Document   : kalab
    Created on : Feb 7, 2022, 8:43:47 PM
    Author     : LENOVO
--%>

<%--@page import="Project.userModel"%>
<%@page import="Project.users"--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*, java.io.*"%>
<!DOCTYPE html>
<%--
    String id = (String) session.getAttribute("id");
    String nama = (String) session.getAttribute("nama");
    String foto = (String) session.getAttribute("foto");
--%>

<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Title Page-->
        <title>Dashboard</title>
        <!-- Fontfaces CSS-->
        <link href="../css/font-face.css" rel="stylesheet" media="all">
        <link href="../vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="../vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="../vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

        <!-- Bootstrap CSS-->
        <link href="../vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

        <!-- Vendor CSS-->
        <link href="../vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
        <link href="../vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
        <link href="../vendor/wow/animate.css" rel="stylesheet" media="all">
        <link href="../vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
        <link href="../vendor/slick/slick.css" rel="stylesheet" media="all">
        <link href="../vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="../vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="../css/theme.css" rel="stylesheet" media="all">

    </head>

    <body class="animsition">
        <div class="page-wrapper">
            <!-- MENU SIDEBAR-->

            <aside class="menu-sidebar2">
                <div class="logo">
                    <a href="#">
                        <img src="../asset/SIMLProjext.png" width="200" height="140"/>
                    </a>
                </div>
                <div class="menu-sidebar2__content js-scrollbar1">
                    <div class="account2">
                        <h4 class="name">Selamat datang <%--=nama--%></h4>
                        <a href="UIlogin.jsp">Sign Out</a>
                    </div>
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="js-arrow" href="#.jsp">
                                    <i class="fas fa-tachometer-alt"></i>Beranda
                                </a>
                            </li>
                            <li>
                                <a  href="peminjaman_kalab.jsp">
                                    <i class="fas  fa-chart-bar"></i>Peminjaman
                                </a>                               
                            </li>
                            <li>
                                <a  href="#">
                                    <i class="fas  fa-chart-bar"></i>Penjadwalan Ruangan
                                </a>                               
                            </li>
                            <li>
                                <a  href="#">
                                    <i class="fas  fa-chart-bar"></i>Logbook
                                </a>                               
                            </li>
                            <li>
                                <a  href="kontak.jsp">
                                    <i class="fas  fa-chart-bar"></i>Kontak
                                </a>                               
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END MENU SIDEBAR-->

            <!-- PAGE CONTAINER-->
            <div class="page-container2">
                <!-- HEADER DESKTOP-->
                <header class="header-desktop2">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="header-wrap2">
                                <div class="logo d-block d-lg-none">
                                    <a href="#">
                                        <img src="../images/icon/logo-white.png"/>
                                    </a>
                                </div>
                                <%--
                                <div class="header-button2">
                                    <div class="header-button-item js-item-menu">

                                    </div>
                                    <div class="header-button-item has-noti js-item-menu">
                                    </div>
                                    <div class="header-button-item mr-0 js-sidebar-btn">
                                        <i class="zmdi zmdi-menu"></i>
                                    </div>
                                    <div class="setting-menu js-right-sidebar d-none d-lg-block">
                                        <div class="account-dropdown__body">
                                            <div class="account-dropdown__item">
                                                <!--<a href="#">-->
                                                <!--<i class="zmdi zmdi-account"></i>Account</a>-->
                                                <li class="has-sub">
                                                    <a class="js-arrow" href="#">
                                                        <i class="zmdi zmdi-account"></i>Account</a>
                                                    </a>
                                                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                                                        <li>
                                                            <a href="infoakunuser.jsp?id=<%--=id--%>">
                                <%--
                                                                <i class="zmdi zmdi-edit"></i></i>Edit Profile</a>
                                                        </li>
                                                        <li>
                                                            <a href="UpdateFotouser.jsp">
                                                                <i class="zmdi zmdi-camera"></i></i>Ganti Foto Profile</a>
                                                        </li>
                                                        <li>
                                                            <a href="liatFotouser.jsp">
                                                                <i class="fas fa-desktop"></i>Lihat Foto Profile</a>
                                                        </li>
                                                        <li>
                                                            <a href="../control/logout.jsp">
                                                                <i class="zmdi zmdi-power"></i>Logout</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                --%>
                </header>
                <aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
                    <div class="logo">
                        <a href="#">
                            <img src="" alt="Cool Admin" />
                        </a>
                    </div>
                    <div class="menu-sidebar2__content js-scrollbar2">
                        <div class="account2">
                            <div class="image img-cir img-120">
                                <img src="../images/" />
                            </div>
                            <h4 class="name">john doe</h4>
                            <a href="../control/logout.jsp">Sign out</a>
                        </div>
                        <nav class="navbar-sidebar2">
                            <ul class="list-unstyled navbar__list">
                                <li class="active has-sub">
                                    <a class="js-arrow" href="admin.jsp">
                                        <i class="fas fa-tachometer-alt"></i>Dashboard
                                        <span class="arrow">
                                            <i class="fas fa-angle-down"></i>
                                        </span>
                                    </a>

                                </li>
                            </ul>
                        </nav>
                    </div>
                </aside>
                <!-- END HEADER DESKTOP-->

                <!-- BREADCRUMB-->
                <section class="au-breadcrumb m-t-75">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="au-breadcrumb-content">
                                        <div class="au-breadcrumb-left">
                                            <span class="au-breadcrumb-span">You are here:</span>
                                            <ul class="list-unstyled list-inline au-breadcrumb__list">
                                                <li class="list-inline-item active">
                                                    <a href="admin.jsp">Home</a>
                                                </li>
                                                <li class="list-inline-item seprate">
                                                    <span>/</span>
                                                </li>
                                                <li class="list-inline-item">Dashboard</li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- END BREADCRUMB-->
                <section>
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                
                               
                                    <!-- TASK PROGRESS-->
                                     <%--

                                        String driverName = "com.mysql.jdbc.Driver";
                                        String connectionUrl = "jdbc:mysql://localhost:3306/";
                                        String dbName = "2tib_ganjil";
                                        String userId = "root";
                                        String password = "";

                                        try {
                                            Class.forName(driverName);
                                        } catch (ClassNotFoundException e) {
                                            e.printStackTrace();
                                        }

                                        Connection connection = null;


                                   --%>
                                    <div class="col-xl-12">
                                    
                                    <div class="user-data m-b-40">
                                        <h3 class="title-3 m-b-30">
                                           <center></i>Selamat Datang di Sistem Informasi Manajemen Lab</h3></center>
                                        <div class="table-responsive table-data">
                                            <!--<table class="table">
                                            <thead>
                                                <tr>
                                                    <th>ID Keluhan</th>
                                                    <th>Nama</th>
                                                    <th>Tanggal</th>
                                                    <th>Judul</th>
                                                    <th>Deskripsi</th>
                                                    <th>PIC</th>
                                                    <th>Waktu</th>
                                                    <th>Status</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <%--      try {

                                                    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                                    Statement statement = connection.createStatement();
                                                    ResultSet resultSet = statement.executeQuery("select *, DATE_ADD(tanggal, INTERVAL 7 DAY) "
                                                            + ", datediff(DATE_ADD(tanggal, INTERVAL 7 DAY), CURRENT_DATE()) from pengaduan");
                                                    String limit;
                                                    String status1;

                                                    while (resultSet.next()) {
                                                        status1 = resultSet.getString("status");
                                           -- %>
                                            <tbody>
                                                <tr>
                                                    <td><%=resultSet.getString("id_keluhan")%></td>
                                                    <td><%=resultSet.getString("nama")%></td>
                                                    <td><%=resultSet.getString("tanggal")%></td>
                                                    <td><%=resultSet.getString("judul")%></td>
                                                    <td><%=resultSet.getString("deskripsi")%></td>
                                                    <td><%=resultSet.getString("PIC")%></td>


                                                    <td><%-- limit = resultSet.getString("datediff(DATE_ADD(tanggal, INTERVAL 7 DAY), CURRENT_DATE())");
                                                        if (Integer.parseInt(limit) <= 0 && status1.equals("Gagal")) {

                                                            out.print("Waktu Habis");
                                                            status1 = "Gagal";
                                                        } else if (Integer.parseInt(limit) > 0 && status1.equals("Gagal")) {

                                                            out.print("Gagal!");
                                                            status1 = "Gagal";
                                                        } else if (status1.equals("Sedang diproses") && Integer.parseInt(limit) > 0) {

                                                            out.print(limit + " Hari");
                                                            status1 = "Sedang diproses";
                                                        } else if (status1.equals("Sedang diproses") && Integer.parseInt(limit) == 0) {

                                                            out.print("Hari Ini!");
                                                            status1 = "Sedang diproses";
                                                        } else if (status1.equals("Sedang diproses") && Integer.parseInt(limit) < 0) {

                                                            out.print("Waktu Habis");
                                                            status1 = "Gagal";
                                                        } else if (status1.equals("Menunggu") && Integer.parseInt(limit) > 0 ) {

                                                            out.print(limit + " Hari");
                                                            status1 = "Menunggu";
                                                        }  else if (status1.equals("Menunggu") && Integer.parseInt(limit) == 0) {

                                                            out.print("Hari Ini!");
                                                            status1 = "Menunggu";
                                                        } else if (status1.equals("Menunggu") && Integer.parseInt(limit) < 0) {

                                                            out.print("Waktu Habis");
                                                            status1 = "Gagal";
                                                        }else if (status1.equals("Selesai") || Integer.parseInt(limit) > 0) {

                                                            out.print("Selesai!");
                                                            status1 = "Selesai";
                                                        }
                                                        --%> </td>
                                                    <td><%--
                                                        if (status1.equals("Gagal")) {
                                                            out.print("<div class='alert alert-danger' role='alert'>"
                                                                    + "Gagal</div>");
                                                        } else if (status1.equals("Sedang diproses")) {
                                                            out.print("<div class='alert alert-primary' role='alert'>"
                                                                    + "Sedang diproses</div>");
                                                            
                                                        } else if (status1.equals("Menunggu")) {
                                                            out.print("<div class='alert alert-secondary'  role='alert'>"
                                                                    + "Menunggu</div>");
                                                            
                                                        } else if (status1.equals("Selesai")) {
                                                            out.print("<div class='alert alert-success'  role='alert'>"
                                                                    + "Selesai</div>");
                                                        }

                                                        --%></td>
                                                     <td><a  href="aksi_pengaduan.jsp?id_keluhan=<%--=resultSet.getString("id_keluhan")--%>">
                                                            <i class="fas fa-exclamation-circle"></i>
                                                        </a></td>
                                                        <%--                                                        }
                                                       -- %>

                                                    <%--} catch (Exception e) {
                                                            e.printStackTrace();
                                                        }
                                                    --%>
                                                </tr>
                                            </tbody>

                                        </table> -->
                                                <div class="user-data__footer">
                                                <button class="au-btn au-btn-load"><a href="statusPengaduan.jsp" style="color: white;s">load more</a></button>
                                            </div>
                                    </div>
                                    <!-- END TASK PROGRESS-->
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section>
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-6">

                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- END PAGE CONTAINER-->
            </div>

        </div>

        <!-- Jquery JS-->
        <script src="../vendor/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap JS-->
        <script src="../vendor/bootstrap-4.1/popper.min.js"></script>
        <script src="../vendor/bootstrap-4.1/bootstrap.min.js"></script>
        <!-- Vendor JS       -->
        <script src="../vendor/slick/slick.min.js">
        </script>
        <script src="../vendor/wow/wow.min.js"></script>
        <script src="../vendor/animsition/animsition.min.js"></script>
        <script src="../vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
        </script>
        <script src="../vendor/counter-up/jquery.waypoints.min.js"></script>
        <script src="../vendor/counter-up/jquery.counterup.min.js">
        </script>
        <script src="../vendor/circle-progress/circle-progress.min.js"></script>
        <script src="../vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="../vendor/chartjs/Chart.bundle.min.js"></script>
        <script src="../vendor/select2/select2.min.js">
        </script>
        <!-- Main JS-->
        <script src="../js/main.js"></script>
    </body>
</html>
<!-- end document-->

