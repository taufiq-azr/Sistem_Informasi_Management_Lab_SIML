<%-- 
    Document   : hasilLaporan
    Created on : Feb 4, 2021, 10:22:48 PM
    Author     : ASUS
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Title Page-->
        <title>Dashboard 2</title>

        <!-- Fontfaces CSS-->
        <link href="css/font-face.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

        <!-- Bootstrap CSS-->
        <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

        <!-- Vendor CSS-->
        <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
        <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
        <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
        <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
        <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
        <link href="vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="css/theme.css" rel="stylesheet" media="all">

    </head>
    <body>
      <h2>Data Pelaporan</h2>
                    <%
                        try {
                            String Host = "jdbc:mysql://localhost:3306/project_bpw1";
                            Connection connection = null;
                            Statement statement = null;
                            ResultSet rs = null;
                            Class.forName("com.mysql.jdbc.Driver");
                            connection = DriverManager.getConnection(Host, "root", "");
                            statement = connection.createStatement();
                            String Data = "select * from pelaporan";
                            rs = statement.executeQuery(Data);

                    %>



                    <!--<tr style="font-weight: bold;">-->
                    <div class="row">
                        <div class="col-lg-auto">
                            <div class="table-responsive table--no-card m-b-10">
                                <center>
                                <table class="table table-borderless table-striped table-earning ">
                                    <thead>
                                        <tr>
                                            <th>Tanggal Pelaporan</th>
                                            <th>Nama Barang</th>
                                            <th>Gambar Barang</th>
                                            <th class="text-right">Status </th>
                                            <!--<th class="text-right">Action</th>-->

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%while (rs.next()) {%>
                                        <tr>

                <!--<td><%=rs.getString("id")%></td>-->
                                            <td><%=rs.getString("tgl")%></td>
                                            <td><%=rs.getString("barang")%></td>
                                            <td><%=rs.getString("foto")%></td>
                                            <td><%=rs.getString("status")%></td>

<!--    <td><a href="vendor/infoProses.jsp?id=<%=rs.getString("id")%>"><i class="fas fa-clock-o"></i></a>
        | <a href="vendor/infoProses.jsp?id=<%=rs.getString("id")%>"><i class="fas fa-check"></i></a></td>-->
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                                    </center>
                            </div>
                        </div>
                    </div>

                    </center>

                    <%
                            rs.close();
                            statement.close();
                            connection.close();
                        } catch (SQLException e) {
                            out.println("Can't connect to database. with error = " + e.getMessage());
                        }
                    %>
    </body>
</html>
