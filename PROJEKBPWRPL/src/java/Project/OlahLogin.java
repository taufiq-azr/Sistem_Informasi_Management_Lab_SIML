package Project;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class OlahLogin {

    String  username, password, akses;
    KoneksiDB db = null;

      public OlahLogin() {
        db = new KoneksiDB();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAkses() {
        return akses;
    }

    public void setAkses(String akses) {
        this.akses = akses;
    }

  
    


    public List login(String username, String password) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM login where username='" + username + "' and password='" + password + "'";
            rs = db.ambilData(sql);

            while (rs.next()) {
                OlahLogin am = new OlahLogin();
               
         
                am.setUsername(rs.getString("username"));
                am.setPassword(rs.getString("password"));
                am.setAkses(rs.getString("akses"));
             
                data.add(am);
            }
            db.disconnect(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan cari login user, pada :\n" + a);
        }
        return data;
    }
}
