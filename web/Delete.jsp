<%-- 
    Document   : Delete
    Created on : Oct 26, 2015, 12:18:12 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
        <style type="text/css">
            body
            {
                background-color:rgb(237,218,193);
            }
            .wel
            {
              color:rgb(121,56,250);
              font-size:24px;
            }
            .bm
            {
                color:red;
                font-size:18px;
            }
            a
            {
                text-decoration:none;
                color:maroon;
                font-size:20px;
            }
            a:hover
            {
                text-decoration:underline;
                color:rgb(90,216,210);
            }
            h2
            {
                text-align:center;
                color:olive;
                font-size:30px;
            }

        </style>
        
    </head>
    <body>

            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Project Buat UAS</marquee>
                    </td>
                </tr>
                <tr>
                    <td class="header">
                        <img src="images/AdminBanner copy.jpg" width="1350px" height="200px"/>
                    </td>
                </tr>
                <tr>
                    <td class="menu">
                       <ul>                   
                        <li><a href="Admin.jsp">Tambah Data Member</a></li>
                        <li><a href="Delete.jsp">Hapus Data</a></li>
                        <li><a href="Update.jsp">Perbarui Data</a></li>
                        <li><a href="View.jsp">Lihat Data</a></li>
                      </ul>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                      <strong class="wel">Welcome&nbsp;</strong><strong class="bm"><%= session.getAttribute("userName") %></strong><br>
                       <a href="Login.jsp">Logout</a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <h2>Hapus Data, Pastikan ID yang dimasukan Benar</h2>
                    </td>
                </tr>
                    <form name="del_form" action="del_valid.jsp" method="post">
                    <table border="0" cellpadding="2" cellspacing="2" align="center">
                        <tr>
                            <td>Enter ID :</td>
                            <td><input type="text" name="u_id" class="txt" /></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <input type="submit" name="delete" value="Delete" class="btn">
                            </td>
                        </tr>
                        <tr>
                           <td align="center" colspan="2">
                              <a href="View.jsp">Lihat Data</a>
                           </td>
                        </tr>
                    </table>
                    </form>
                <tr>
                    <table border="0" width="100%" height="100%">
                        <tr>
                          <td class="footer">
                            <ul class="footer_ul">
                              <li><a href="Admin.jsp">Tambah Data Member</a></li>
                              <li><a href="Delete.jsp">Hapus Data</a></li>
                              <li><a href="Update.jsp">Perbarui Data</a></li>
                              <li><a href="View.jsp">Lihat Data</a></li>
                            </ul>

                          </td>
                       </tr>
                       <tr>
                          <td class="footer">
                            <h3>Developed by : REZA1261@Gmail.com</h3>
                          </td>
                       </tr>

                    </table>
                </tr>
          </table>

    </body>
</html>
