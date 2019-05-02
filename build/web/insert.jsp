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

        String fname = request.getParameter("first");
        String lname = request.getParameter("last");
        String addr = request.getParameter("address");
        String cityy = request.getParameter("city");
        String mobil = request.getParameter("mobile");
        String emailid = request.getParameter("email");
        String pinc = request.getParameter("pin");

        try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
            String query = "insert into information (FirstName,LastName,Address,City,MobileNo,Email,Pincode)" +
                    "values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, addr);
            ps.setString(4, cityy);
            ps.setString(5, mobil);
            ps.setString(6, emailid);
            ps.setString(7, pinc);
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
               <center><a href="Admin.jsp">Go Back</a></center>
    </body>
</html>