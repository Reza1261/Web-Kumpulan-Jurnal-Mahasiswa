<%-- 
    Document   : updt_valid
    Created on : Oct 26, 2015, 2:44:12 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

        String ID = request.getParameter("ID");
        String Password = request.getParameter("Password");
        String Nama = request.getParameter("Nama");
        String Email = request.getParameter("Email");
        String Nomor = request.getParameter("Nomor");

        try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
            PreparedStatement ps = con.prepareStatement("update tabel_user set ID=?,Password=?,Nama=?," +
                    "Email=?,Nomor=? where Nomor="+ Nomor );
            ps.setString(1, ID);
            ps.setString(2, Password);
            ps.setString(3, Nama);
            ps.setString(4, Email);
            ps.setString(5, Nomor);
            ps.executeUpdate();
            con.close();
            ps.close();

         }catch(Exception ex)
         {
            out.println(ex.getMessage());
            out.println("Can not Inserted Record..");
         }

        %>
                <h1>Record Updated...</h1><br>
               <center><a href="JurnalUsers.jsp">Go Back</a></center>
    </body>
</html>
