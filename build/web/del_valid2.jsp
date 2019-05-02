<%-- 
    Document   : del_valid
    Created on : Oct 26, 2015, 1:48:42 PM
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
         <style>
            h1
            {
                color:red;
                font-style:italic;
                text-align:center;
            }
            a
            {
                text-decoration:none;
                color:maroon;
                font-size:20px;
                text-align:center;
            }
            a:hover
            {
                text-decoration:underline;
                font-weight:bolder;
            }
        </style>
    </head>
    <body>
        <%

            String sid = request.getParameter("u_id");

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
                PreparedStatement ps = con.prepareStatement("delete from tabel_user where ID = '"+sid+ "'");
                ps.executeUpdate();
                con.close();
                ps.close();
            }
            catch(Exception ex)
             {
               out.println(ex.getMessage());
              }
        %>
        <h1>Record Deleted...</h1><br>
               <center><a href="JurnalUsers.jsp">Go Back</a></center>
   </body>
</html>
