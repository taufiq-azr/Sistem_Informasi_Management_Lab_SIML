<%-- 
    Document   : olahProses
    Created on : Feb 4, 2021, 5:06:35 PM
    Author     : ASUS
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String tgl = request.getParameter("tgl");
            String barang = request.getParameter("barang");
            String foto = request.getParameter("foto");
            String status = request.getParameter("status"); 
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_bpw1", "root", "");
                if (conn != null) {
                    if (id != null) {
                        PreparedStatement pst = conn.prepareStatement("update pelaporan status=? where id='" + id + "'");
                        pst.setString(1, id);
                        pst.setString(2, tgl);
                        pst.setString(3, barang);
                        pst.setString(4, foto);
                        pst.setString(5, status);
                        pst.executeUpdate();
                        response.sendRedirect("pengguna.jsp");
                    }
                } else {
                    response.sendRedirect("errorsave.jsp");
                }
            } catch (Exception e) {
                out.println("Can't connect to database : " + e.getMessage());
            }
        %>
    </body>
</html>
