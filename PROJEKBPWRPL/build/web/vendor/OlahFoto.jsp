<%-- 
    Document   : OlahFoto
    Created on : Feb 3, 2021, 10:25:28 PM
    Author     : ASUS
--%> 
<%@page import="java.sql.*, java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nama = request.getParameter("nama");
//            String foto = request.getParameter("foto");
            String id = request.getParameter("id");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_bpw1", "root", "");
                if (conn != null) {
                    if (id != null) {
//                        PreparedStatement pst = conn.prepareStatement("update users set id=?,foto=?, where id='" + id + "'");
                        PreparedStatement pst = conn.prepareStatement("update users set foto=? where id=?");
                        pst.setString(1, nama);
                        pst.setString(2, id);
                       
                        pst.executeUpdate();
                        pst.executeUpdate();
                        response.sendRedirect("../admin.jsp");
                    }else {
                        response.sendRedirect("../admin.jsp");
                    }
                } else {
                        response.sendRedirect("../admin.jsp");
                }
            } catch (Exception e) {
                out.println("Can't connect to database : " + e.getMessage());
            }
        %>
    </body>
</html>