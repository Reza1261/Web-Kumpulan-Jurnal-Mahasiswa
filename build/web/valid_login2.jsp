<%-- 
    Document   : valid_login
    Created on : Oct 24, 2015, 8:06:02 PM
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
    </head>
    <body>
        <%
        String user = request.getParameter("uname");
        String pass = request.getParameter("pwd");

        try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from tabel_user where User = '" + user + "' and Password = '" + pass + "'");
            if(rs.next())
              {
                session.setAttribute("userName", user);
                response.sendRedirect("JurnalUsers.jsp");
                out.println("You have Logged....");
              }else
              {
                response.sendRedirect("error.jsp");
              }
         }catch(Exception ex)
         {

         }
        %>
            
    </body>
</html>
