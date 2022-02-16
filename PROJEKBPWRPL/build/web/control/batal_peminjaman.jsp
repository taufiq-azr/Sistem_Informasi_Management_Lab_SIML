<%-- 
    Document   : batal_peminjaman
    Created on : Feb 8, 2022, 2:21:56 PM
    Author     : MSIGF63
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String id_peminjaman= request.getParameter("id_peminjaman");
    String host = "jdbc:mysql://localhost:3306/2tib_ganjil";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(host, "root","");
        if(conn != null){
            if(id_peminjaman !=null){
                Statement st = conn.createStatement();
                st.executeUpdate("DELETE FROM peminjaman WHERE id_peminjaman = '" + id_peminjaman+"'");
             
                response.sendRedirect("../view/peminjaman_mahasiswa.jsp");
            }
        }
        else{
            response.sendRedirect("gagalsimpan.jsp");
        }
    }catch(SQLException ex){
        out.print("Gagal Koneksi"+ex);
    }catch(Exception ex){
        out.print(ex.getMessage());
    }
%>

