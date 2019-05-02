<%-- 
    Document   : index
    Created on : Oct 23, 2015, 2:09:56 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
    </head>
    <body>
        <%
            int count=0;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from tabel_jurnal");


        %>
        <form>
            <table border="0">
                <tr>
                    <td class="top">
                       <marquee>Jurnal Ilmiah Mahasiswa & Database</marquee>
                    </td>
                </tr>
                <tr>
                    <td class="header">
                        <img src="images/header1.png" width="1350px"  height="150px" alt="" />
                    </td>
                </tr>
                <tr>
                    <td class="menu">
                       <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="Login.jsp">Admin</a></li>
                        <li><a href="Contact.jsp">Contact</a></li>
                        <li><a href="About.jsp">About</a></li>
                        <li><a href="Login2.jsp">Users</a></li>
                      </ul>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="img_slide">
                        <marquee>
                        <img src="images/cont1.gif" width="200px" height="200px" />
                        <img src="images/cont2.jpg" width="200px" height="200px" />
                        <img src="images/cont5.jpg" width="124" height="84"/>
                        <img src="images/cont4.jpg" width="127" height="103"/>                           
                        <img src="images/logo1.gif" width="400px" height="170px" />
                        <img src="images/virtualcampus.gif" alt="" width="300px" />
                        <img src="images/mmt.GIF" width="200" height="200"/>
                        </marquee>
                    </td>
                </tr>
                <table border="0" align="center" cellpadding="2" cellspacing="2">
                        <tr class="field_name">
                            <td><div align="center"><strong>Nomer</strong></div></td>
                            <td><div align="center"><strong>ID</strong></div></td>
                            <td><div align="center"><strong>Judul & Kutipan</strong></div></td>
                            <td><div align="center"><strong>Pembuat</strong></div></td>
                        </tr>
                         <%

                         while(rs.next())
                         {
                            rs.getInt("ID");

                        %>
                        <tr class="view_field">
                            <td><div align="center"><%=++count %></div></td>
                            <td><%= rs.getString("ID") %></td>
                            <td><textarea name="Judul" rows="6" width="200"><%= rs.getString("Judul") %></textarea></td>
                            <td><%= rs.getString("Pembuat") %></td>
                            
                        </tr>
                        <% } %>
                    </table>
                <tr>
                    <table border="0" width="100%" height="100%">
                        <tr>
                          <td class="footer">
                            <ul class="footer_ul">
                              <li><a href="index.jsp">Home</a></li>
                              <li><a href="Login.jsp">Admin</a></li>
                              <li><a href="Contact.jsp">Contact</a></li>
                              <li><a href="About.jsp">About</a></li>
                              <li><a href="Login2.jsp">Users</a></li>
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
        </form>
    </body>
</html>
