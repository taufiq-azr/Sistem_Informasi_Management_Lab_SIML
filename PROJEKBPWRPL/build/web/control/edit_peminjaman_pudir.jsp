<%-- 
    Document   : edit_peminjaman_pudir
    Created on : Feb 10, 2022, 11:36:35 PM
    Author     : LENOVO
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id_peminjaman = Integer.parseInt(request.getParameter("id_peminjaman"));
    String username = request.getParameter("username");
    String penanggung_jawab = request.getParameter("penanggung_jawab");
    String anggota = request.getParameter("anggota");
    String ruangan_lab = request.getParameter("ruangan_lab");
    String tanggal_mulai = request.getParameter("tanggal_mulai");
    String tanggal_selesai = request.getParameter("tanggal_selesai");
   String waktu_mulai = request.getParameter("waktu_mulai");
   String waktu_selesai = request.getParameter("waktu_selesai");
   String keperluan = request.getParameter("keperluan");
   String status = request.getParameter("status");
   String level_peminjaman = request.getParameter("level_peminjaman");
   String upload_file = request.getParameter("upload_file");
    String host = "jdbc:mysql://localhost:3306/2tib_ganjil";
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(host, "root", "");
    if (conn != null) {
        if (id_peminjaman != 0) {
            PreparedStatement pst = conn.prepareStatement("update peminjaman set id_peminjaman=?,"
                        + "username=?,penanggung_jawab=?,anggota=?,ruangan_lab=?,tanggal_mulai=?,tanggal_selesai=?,waktu_mulai=?,waktu_selesai=?,keperluan=?,status=?,level_peminjaman=?,upload_file=? where id_peminjaman='" + id_peminjaman + "'");
            pst.setInt(1, id_peminjaman);
            pst.setString(2, username);
            pst.setString(3, penanggung_jawab);
            pst.setString(4, anggota);
            pst.setString(5, ruangan_lab);
            pst.setString(6, tanggal_mulai);
            pst.setString(7, tanggal_selesai);
            pst.setString(8, waktu_mulai);
            pst.setString(9, waktu_selesai);
            pst.setString(10, keperluan);
            pst.setString(11, status);
            pst.setString(12, level_peminjaman);
            pst.setString(13, upload_file);
           
           
            pst.executeUpdate();
            
        
            response.sendRedirect("../view/peminjaman_pudir.jsp");}
  
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