<%-- 
    Document   : peminjaman
    Created on : 29-Jan-2021, 05:06:21
    Author     : admin
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String host = "jdbc:mysql://localhost:3306/2tib_ganjil";
    String id = (String) session.getAttribute("id_peminjaman");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(host, "root", "");
        String query = "select*from peminjaman where level_peminjaman =\"level 1\"";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);
%>
<html lang="en">
    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Title Page-->
        <title>Ruangan</title>
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
                        <h4 class="name">Selamat datang</h4>
                        <a href="UIlogin.jsp">Sign Out</a>
                    </div>
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">
                            <li>
                                <a class="js-arrow" href="#">
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
                                </a>                                                    </li>
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
                                                    <!--                                                        <span class="arrow">
                                                                                                                <i class="fas fa-angle-down"></i>
                                                                                                            </span>-->
                                                    </a>
                                                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                                                        <li>
                                                            <a href="infoakunuser.jsp?id=<%=id%>">
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
                                                            <a href="logout.jsp">
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
                </header>
                <aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
                    <div class="logo">
                        <a href="#">
                            <img src="../images/icon/logo-white.png" alt="Cool Admin" />
                        </a>
                    </div>
                    <div class="menu-sidebar2__content js-scrollbar2">
                        <div class="account2">
                            <div class="image img-cir img-120">
                                <img src="../images/icon/avatar-big-01.jpg" alt="John Doe" />
                            </div>
                            <h4 class="name">john doe</h4>
                            <a href="../control/logout.jsp">Sign out</a>
                        </div>
                        <nav class="navbar-sidebar2">
                            <ul class="list-unstyled navbar__list">
                                <li class="active has-sub">
                                    <a class="js-arrow" href="#">
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
                                                    <a href="#">Home</a>
                                                </li>
                                                <li class="list-inline-item seprate">
                                                    <span>/</span>
                                                </li>
                                                <li class="list-inline-item">Peminjaman</li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- END BREADCRUMB-->

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">                      
                            <div class="row">     
                                <div class="col-lg-12" style="margin-top: 35px;">
                                    <h3 class="d-flex justify-content-center">
                                        Peminjaman Ruangan Lab PCR
                                    </h3>     
                                    <hr>
                                </div>
                            </div>

                            <div class="row justify-content-center mb-5">
                                <h4>Peminjaman Ruangan Laboratorium</h4>
                                <div class="col-lg-10 mt-3">
                                    <div class="table-responsive table--no-card m-b-30">
                                        <table class="table table-borderless table-striped table-earning">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>Username</th>
                                                    <th>Penanggung Jawab</th>
                                                    <th>Anggota</th>
                                                    <th>Ruangan Lab</th>
                                                    <th>Tanggal Mulai</th>
                                                    <th>Tanggal Selesai</th>
                                                    <th>Waktu Mulai</th>
                                                    <th>Waktu Selesai</th>
                                                    <th>Keperluan</th>
                                                    <th>Status</th>
                                                    <th>Level Peminjaman</th>
                                                    <th>Upload File</th>
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int i = 1;
                                                    while (rs.next()) {%>
                                                <tr>
                                                    <td><%= i%></td>
                                                    <td><%=rs.getString("username")%></td>
                                                    <td><%=rs.getString("penanggung_jawab")%></td>                           
                                                    <td><%=rs.getString("anggota")%></td>
                                                    <td><%=rs.getString("ruangan_lab")%></td>
                                                    <td><%=rs.getString("tanggal_mulai")%></td>
                                                    <td><%=rs.getString("tanggal_selesai")%></td>
                                                    <td><%=rs.getString("waktu_mulai")%></td>
                                                    <td><%=rs.getString("waktu_selesai")%></td>
                                                    <td><%=rs.getString("keperluan")%></td>
                                                    <td><%=rs.getString("status")%></td>
                                                    <td><%=rs.getString("level_peminjaman")%></td>
                                                    <td><%=rs.getString("upload_file")%></td>
                                                    <td>
                                                        <a href="../control/batal_peminjaman.jsp?id_peminjaman=<%=rs.getInt("id_peminjaman")%>">Batal</a> |
                                                        <a href="edit_peminjaman_kalab.jsp?id_peminjaman=<%=rs.getInt("id_peminjaman")%>">Edit</a>
                                                    </td>
                                                </tr>
                                                <% i++;
                                                                    } %>
                                            </tbody>
                                            <%
                                                    rs.close();
                                                    stmt.close();
                                                    conn.close();
                                                } catch (SQLException ex) {
                                                    out.print("Gagal Koneksi");
                                                } catch (Exception ex) {
                                                    out.print(ex.getMessage());
                                                }
                                            %>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END MAIN CONTENT-->
                <!-- END PAGE CONTAINER-->
            </div>
        </div>
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


