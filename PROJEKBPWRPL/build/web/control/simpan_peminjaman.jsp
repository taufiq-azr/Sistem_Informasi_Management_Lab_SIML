<%--
    Document   : simpan_peminjaman
    Created on : Feb 5, 2022, 1:07:17 PM
    Author     : LENOVO
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id_penjadwalan = request.getParameter("id_penjadwalan");
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
        if (penanggung_jawab != null) {
            PreparedStatement pst = conn.prepareStatement("INSERT INTO peminjaman (username, penanggung_jawab, anggota, ruangan_lab, tanggal_mulai, tanggal_selesai, waktu_mulai, waktu_selesai, keperluan, status, level_peminjaman, upload_file) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, username);
            pst.setString(2, penanggung_jawab);
            pst.setString(3, anggota);
            pst.setString(4, ruangan_lab);
            pst.setString(5, tanggal_mulai);
            pst.setString(6, tanggal_selesai);
            pst.setString(7, waktu_mulai);
            pst.setString(8, waktu_selesai);
            pst.setString(9, keperluan);
            pst.setString(10, status);
            pst.setString(11, level_peminjaman);
            pst.setString(12, upload_file);
           
           
            pst.executeUpdate();
            PreparedStatement pst2 = conn.prepareStatement("UPDATE penjadwalan set status = 'Tidak Ada' where id_penjadwalan='"+id_penjadwalan+"'");
            pst2.executeUpdate();
            response.sendRedirect("../view/peminjaman_mahasiswa.jsp");
            
            
        }
    } else {
        response.sendRedirect("../view/gagalsimpan.jsp");
    }
    }
    catch(SQLException ex){
          out.print("Gagal Koneksi" + ex);
}
    catch(Exception ex){
          out.print(ex.getMessage());
}
%>
