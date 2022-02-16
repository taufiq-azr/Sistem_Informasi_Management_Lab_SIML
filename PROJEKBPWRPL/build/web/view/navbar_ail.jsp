<%-- 
    Document   : navbar_ail
    Created on : Feb 10, 2022, 6:16:11 PM
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
            <!-- MENU SIDEBAR-->

            <aside class="menu-sidebar2">
                <div class="logo">
                    <a href="#">
                         <img src="../asset/SIMLProjext.png" width="200" height="140"/>
                    </a>
                </div>
                <div class="menu-sidebar2__content js-scrollbar1">
                    <div class="account2">
                        <h4 class="name">Selamat datang <%--=nama--%></h4>
                        <a href="UIlogin.jsp">Sign Out</a>
                    </div>
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="js-arrow" href="#.jsp">
                                    <i class="fas fa-tachometer-alt"></i>Beranda
                                </a>
                            </li>
                            <li>
                                <a  href="peminjaman_ail.jsp">
                                    <i class="fas  fa-chart-bar"></i>Peminjaman
                                </a>                               
                            </li>
                            <li>
                                <a  href="penjadwalan_ail.jsp">
                                    <i class="fas  fa-chart-bar"></i>Penjadwalan Ruangan
                                </a>                               
                            </li>
                            <li>
                                <a  href="logbook_ail.jsp">
                                    <i class="fas  fa-chart-bar"></i>Logbook
                                </a>                               
                            </li>
                            <li>
                                <a  href="kontak.jsp">
                                    <i class="fas  fa-chart-bar"></i>Kontak
                                </a>                               
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END MENU SIDEBAR-->