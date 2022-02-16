<%-- 
    Document   : infoProses
    Created on : Feb 4, 2021, 5:27:36 PM
    Author     : ASUS
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
            String id = (String) request.getParameter("id");
            String status = (String) request.getParameter("status");
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_bpw1", "root", "");
                if (conn != null) {
                    if (id != null) {
                        PreparedStatement pst = conn.prepareStatement("update pelaporan set status=? where id=?");
                        pst.setString(1, status);
                        pst.setString(2, id);
                        pst.executeUpdate();
                        response.sendRedirect("../viewLaporan.jsp");
                    }
                } else {
                    response.sendRedirect("errorsave.jsp");
                }
            } catch (Exception e) {
                out.println("Can't connect to database : " + e.getMessage());
            }
//            String email = (String) session.getAttribute("email");
        %>
    </body>
</html>
