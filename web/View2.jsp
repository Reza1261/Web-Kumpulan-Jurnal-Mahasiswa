<%-- 
    Document   : View
    Created on : Oct 25, 2015, 7:54:44 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
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
        <script type="text/javascript">
            function del()
            {
                if(confirm("Do you want to delete This Record ?"))
                {

                }
                else
                {
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <%
            int count=0;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from tabel_user");


        %>
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Halaman Profil</marquee>
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
                       
                        <li><a href="JurnalUsers.jsp">Jurnal User</a></li>
                        <li><a href="Delete2.jsp">Delete</a></li>
                        <li><a href="Update2.jsp">Update</a></li>
                        <li><a href="View2.jsp">View</a></li>
                      </ul>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                      <strong class="wel">Welcome&nbsp;</strong><strong class="bm"><%= session.getAttribute("userName") %></strong><br>
                       <a href="index.jsp">Logout</a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <h2>Data Profil</h2>
                    </td>
                </tr>
                    
                    <table border="0" align="center" cellpadding="2" cellspacing="2">
                        <tr class="field_name">
                            <td><div align="center"><strong>ID</strong></div></td>
                            <td><div align="center"><strong>User</strong></div></td>
                            <td><div align="center"><strong>Password</strong></div></td>
                            <td><div align="center"><strong>Nama</strong></div></td>
                            <td><div align="center"><strong>Email</strong></div></td>
                            <td><div align="center"><strong>Nomor</strong></div></td>
                            <td colspan="2"><div align="center"><strong>Action</strong></div></td>
                        </tr>
                         <%

                         while(rs.next())
                         {
                            rs.getInt("ID");

                        %>
                        <tr class="view_field">
                            <td><div align="center"><%=++count %></div></td>
                            <td><%= rs.getString("User") %></td>
                            <td><%= rs.getString("Password") %></td>
                            <td><%= rs.getString("Nama") %></td>
                            <td><%= rs.getString("Email") %></td>
                            <td><%= rs.getString("Nomor") %></td>
                            <td><div align="center"><a href="Update2.jsp">Update</a></div></td>
                            
                        </tr>
                        <% } %>
                    </table>
                  
                <tr>
                    <table border="0" width="100%" height="100%">
                        <tr>
                          <td class="footer">
                            <ul class="footer_ul">
                              <li><a href="JurnalUsers.jsp">Add Record</a></li>
                              <li><a href="Delete2.jsp">Delete Record</a></li>
                              <li><a href="Update2.jsp">Update Record</a></li>
                              <li><a href="View2.jsp">View Record</a></li>
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
