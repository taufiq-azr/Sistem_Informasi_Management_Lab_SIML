<%-- 
    Document   : view
    Created on : Feb 4, 2021, 12:04:30 AM
    Author     : ASUS
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*, java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Employee</title>
    </head>
    <body>
        <h2>Data Employee</h2>
        <a href="input_employee.jsp">Add New Employee</a> <a href="input_division.jsp">Add New Divisions</a>
        <form action="search_employee.jsp" method="post">
            <input type="text" name="search" placeholder="Search...">
            <input type="submit" value="Search">
        </form>
        <%
            try {
                String Host = "jdbc:mysql://localhost:3306/project_bpw1";
                Connection connection = null;
                Statement statement = null;
                ResultSet rs = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(Host, "root", "");
                statement = connection.createStatement();
                String Data = "select * from users";
                rs = statement.executeQuery(Data);
        %>
        <table border="1">
            <tr style="font-weight: bold;">

                <td>Full Name</td>
                <td>Division</td>
                <td>Age</td>
                <td>Address</td>
                <td>Action</td>
            </tr>
            <%while (rs.next()) {%>
            <tr>

                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("nama")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("password")%></td>
                <td><%=rs.getString("hak_akses")%></td>
                <td><%=rs.getString("foto")%></td>
                <td><a href="edit_employee.jsp?id=<%=rs.getString("id")%>">Edit</a>
                    | <a href="delete_employee.jsp?id=<%=rs.getString("id")%>">Delete</a></td>
            </tr>
            <%}%>
        </table>
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
