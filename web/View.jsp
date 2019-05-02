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
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from information");


        %>
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
                      <strong class="wel">Welcome&nbsp;</strong><strong class="bm">
                          <%= session.getAttribute("userName") %></strong><br>
                       <a href="Login.jsp">Logout</a>
                    </td>
                </tr>

                <tr>
                    <td>
                        <h2>Data member Daftar Dari Admin</h2>
                    </td>
                </tr>
                    
                    <table border="0" align="center" cellpadding="2" cellspacing="2">
                        <tr class="field_name">
                            <td><div align="cente"><strong>ID</strong></div></td>
                            <td><div align="cente"><strong>First Name</strong></div></td>
                            <td><div align="cente"><strong>Last Name</strong></div></td>
                            <td><div align="cente"><strong>Address</strong></div></td>
                            <td><div align="cente"><strong>City</strong></div></td>
                            <td><div align="cente"><strong>Mobile No</strong></div></td>
                            <td><div align="cente"><strong>Email ID</strong></div></td>
                            <td><div align="cente"><strong>Pin code</strong></div></td>
                            <td colspan="2"><div align="cente"><strong>Tool</strong></div></td>
                        </tr>
                         <%

                         while(rs.next())
                         {
                            rs.getInt("id");

                        %>
                        <tr class="view_field">
                            <td><div align="center"><%=++count %></div></td>
                            <td><%= rs.getString("FirstName") %></td>
                            <td><%= rs.getString("LastName") %></td>
                            <td><%= rs.getString("Address") %></td>
                            <td><%= rs.getString("City") %></td>
                            <td><%= rs.getString("MobileNo") %></td>
                            <td><%= rs.getString("Email") %></td>
                            <td><%= rs.getString("Pincode") %></td>
                            <td><div align="center"><a href="Update.jsp">Perbarui</a></div></td>
                            
                        </tr>
                        <% } %>
                    </table>
                  
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
