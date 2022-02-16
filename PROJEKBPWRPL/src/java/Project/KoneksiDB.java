package Project;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author user
 */
public class KoneksiDB {

    private Connection conn;
    private Statement st;
    private String dsn;
    private String login;
    private String pwd;

    public KoneksiDB () {
        
    }
    public KoneksiDB(String dsn, String login, String pwd) {
        this.dsn = dsn;
        this.login = login;
        this.pwd = pwd;
    }

    public static Connection getConnection() {
        Connection conn = null;
        try {
            String db = "jdbc:mysql://localhost:3306/2tib_ganjil";
            String user = "root";
            String pass = ""; //dikosongkan hjika tidak ada password pada mysql anda
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(db, user, pass);
        } catch (Exception x) {
            System.out.println("Terjadi kesalahan koneksi : " + x);
        }
        return conn;
    }

    public void koneksi() {
        try {
            String db = "jdbc:mysql://localhost:3306/2tib_ganjil";
            String user = "root";
            String pass = ""; //dikosongkan hjika tidak ada password pada mysql anda
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(db, user, pass);
            st = conn.createStatement();
        } catch (Exception x) {

            System.out.println("Terjadi kesalahan koneksi : " + x);
        }
    }

    public void disconnect(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            st.close();
            conn.close();
        } catch (Exception x) {
            System.out.println("Terjadi kesalahan diskoneksi : " + x);
        }
    }

    public ResultSet ambilData(String sql) {
        ResultSet rs = null;
        try {
            koneksi();
            rs = st.executeQuery(sql);
        } catch (Exception x) {
            System.out.println("Terjadi kesalahan ambil data : " + x);
        }
        return rs;
    }

}
