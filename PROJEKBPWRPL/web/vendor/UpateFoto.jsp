<%-- 
    Document   : UpateFoto
    Created on : Feb 3, 2021, 10:20:08 PM
    Author     : ASUS
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%

        String id = (String) session.getAttribute("id");
        String foto = (String) session.getAttribute("foto");

    %>
    <BODY> 
        <form name="form" ACTION="../Olahfoto" METHOD="post" enctype="multipart/form-data">
            <br><br><br>
            <center>
                <table border="0" bgcolor=#ccFDDEE>
                    <tr>
                    <center>
                        <td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">&nbsp;</td>
                            </tr>
                            <td><input type="hidden" name="id" value="<%=id%>"></td>
                            <div class="form-group">
                                
                            </div>
                            <tr>
                                <td><b>Choose the file To Upload:</b></td>
                                <td><INPUT name="foto" TYPE="file"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><input type="submit" value="Send File"> </td>
                            </tr>
                            <table>
                        </center>
                        </form>

                        </BODY>
                        </html>
