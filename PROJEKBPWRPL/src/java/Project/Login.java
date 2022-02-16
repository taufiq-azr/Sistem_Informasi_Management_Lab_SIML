package Project;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author user
 */
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proses = request.getParameter("proses");
        if (proses.equals("logout")) {
            HttpSession sesi = request.getSession();
            sesi.invalidate();
            response.sendRedirect("view/index.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proses = request.getParameter("proses");

        if (proses.equals("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
          
            String akses = request.getParameter("akses");
            
            if (password == null || password.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("view/index.jsp");
            } else {
                OlahLogin pm = new OlahLogin();
                List<OlahLogin> datalogin = new ArrayList<OlahLogin>();

                datalogin = pm.login(username, password);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                    response.sendRedirect("view/index.jsp");
                } else {
                    HttpSession session = request.getSession(true);
                    
                    session.setAttribute("username", datalogin.get(0).getUsername());
                    session.setAttribute("password", datalogin.get(0).getPassword());
                  
                    session.setAttribute("akses", datalogin.get(0).getAkses());
                    if (datalogin.get(0).getAkses().equals("ail")) {
                        response.sendRedirect("view/ail.jsp");//Link ke tampilan Ail
                    }
                    if (datalogin.get(0).getAkses().equals("mahasiswa")) {
                        response.sendRedirect("view/mahasiswa.jsp");//link tampilan mahasiswa
                    }
                    if (datalogin.get(0).getAkses().equals("kajur")) {
                        response.sendRedirect("view/kajur.jsp");// ke kajur
                    }
                    if (datalogin.get(0).getAkses().equals("kalab")) {
                        response.sendRedirect("view/kalab.jsp");// ke kalab
                    }
                     if (datalogin.get(0).getAkses().equals("pudir")) {
                        response.sendRedirect("view/pudir.jsp");// ke pudir
                    }
                }
            }
        }
    }
}
