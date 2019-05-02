<%-- 
    Document   : insert
    Created on : Oct 25, 2015, 3:33:29 PM
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

        String User= request.getParameter("User");
        String Password = request.getParameter("Password");
        String Nama = request.getParameter("Nama");
        String Email = request.getParameter("Email");
        String Nomor = request.getParameter("Nomor");

        try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
            String query = "insert into tabel_user (User,Password,Nama,Email,Nomor)" +
                    "values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, User);
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

                <h1>Record Inserted...</h1><br>
               <center><a href="JurnalUsers.jsp">Go Back</a></center>
    </body>
</html>
