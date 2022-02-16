<%--
    Document   : simpan_peminjaman
    Created on : Feb 5, 2022, 1:07:17 PM
    Author     : LENOVO
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String username = request.getParameter("username");
    int id_peminjaman = Integer.parseInt(request.getParameter("id_peminjaman"));
    String no_pc = request.getParameter("no_pc");
    String keterangan = request.getParameter("keterangan");


    String host = "jdbc:mysql://localhost:3306/2tib_ganjil";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(host, "root", "");
        if (conn != null) {
            if (id_peminjaman != 0) {
                PreparedStatement pst = conn.prepareStatement("INSERT INTO logbook (username,id_peminjaman,no_pc,keterangan) VALUES(?,?,?,?)");
                pst.setString(1, username);
                pst.setInt(2, id_peminjaman);
                pst.setString(3, no_pc);
                pst.setString(4, keterangan);
                pst.executeUpdate();
                PreparedStatement pst2 = conn.prepareStatement("UPDATE peminjaman set status='logbook telah diisi' where id_peminjaman = '"+id_peminjaman+"'");
                pst2.executeUpdate();
                response.sendRedirect("../view/logbook_mahasiswa.jsp");
            }
        } else {
            response.sendRedirect("../view/gagalsimpan.jsp");
        }
    } catch (SQLException ex) {
        out.print("Gagal Koneksi" + ex);
    } catch (Exception ex) {
        out.print(ex.getMessage());
    }
%>