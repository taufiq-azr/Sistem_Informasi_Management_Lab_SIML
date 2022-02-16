<%--
    Document   : simpan_peminjaman
    Created on : Feb 5, 2022, 1:07:17 PM
    Author     : LENOVO
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id_logbook = Integer.parseInt(request.getParameter("id_logbook"));
    String username = request.getParameter("username");
    int id_peminjaman = Integer.parseInt(request.getParameter("id_peminjaman"));
    String no_pc = request.getParameter("no_pc");
    String keterangan = request.getParameter("keterangan");
    String status = request.getParameter("status");
    String host = "jdbc:mysql://localhost:3306/2tib_ganjil";
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(host, "root", "");
    if (conn != null) {
        if (id_logbook != 0) {
            PreparedStatement pst = conn.prepareStatement("update logbook set id_logbook=?,"
                        + "no_pc=?, keterangan=?, status=? where id_logbook='" + id_logbook + "'");
            pst.setInt(1, id_logbook);
            pst.setString(2, no_pc);
            pst.setString(3, keterangan);
            pst.setString(4, status);
            
            pst.executeUpdate();

            response.sendRedirect("../view/logbook_ail.jsp");
        }
    } else {
        response.sendRedirect("../view/gagalupdate.jsp");
    }
    }
    catch(SQLException ex){
          out.print("Gagal Koneksi" + ex);
}
    catch(Exception ex){
          out.print(ex.getMessage());
}
%>
