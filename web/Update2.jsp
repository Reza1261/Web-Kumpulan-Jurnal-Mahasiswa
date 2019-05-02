<%-- 
    Document   : Update
    Created on : Oct 26, 2015, 2:23:59 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
        <script type="text/javascript">

            function insvalid()
            {

                if(document.form_updt.ID.value == "")
                    {
                        alert("Please Enter ID");
                        return false;
                    }
               if(document.form_updt.Password.value == "")
                    {
                        alert("Please Enter Password");
                        return false;
                    }
               if(document.form_updt.Nama.value == "")
                    {
                        alert("Please Enter Nama");
                        return false;
                    }
               if(document.form_updt.Email.value == "")
                    {
                        alert("Please Enter Email");
                        return false;
                    }
               if(document.form_updt.Nomor.value == "")
                    {
                        alert("Please Enter Nomor Hp");
                        return false;
                    }
                   return true;

            }
            function clear()
            {
                ID.value = "";
                Password.value = "";
                Nama.value = "";
                Email.value = "";
                Nomor.value = ""
            }
        </script>
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
                        
                        <li><a href="JurnalUsers.jsp">Add Record</a></li>
                        <li><a href="Delete2.jsp">Delete Record</a></li>
                        <li><a href="Update2.jsp">Update Record</a></li>
                        <li><a href="View2.jsp">View Record</a></li>
                      </ul>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                      <strong class="wel">Welcome&nbsp;</strong><strong class="bm"><%= session.getAttribute("userName") %></strong><br>
                       <a href="Index.jsp">Logout</a>
                    </td>
                </tr>
               
                <tr>
                    <td>
                        <h2>Update Record</h2>
                    </td>
                </tr>
                     <tr>

                    <form name="form_updt" action="updt_valid2.jsp" method="post" onsubmit="return insvalid();">
                        <table border="0" align="center">
                              
                               <tr>
                                   <td class="lbl_txt">ID :</td>
                                   <td><input type="text" name="ID" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Password :</td>
                                   <td><input type="text" name="Password" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Nama :</td>
                                   <td><input type="text" name="Nama" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Email :</td>
                                   <td><input type="text" name="Email" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Nomor :</td>
                                   <td><input type="text" name="Nomor" class="txt" /></td>
                                   <td align abbr="right" style="font-size:20px; color:red;">
                                       Nomer HP Tidak Boleh Diganti</td>
                               </tr>
                                   <td>
                                       <input type="submit" name="submit" value="Update" class="btn" />
                                   </td>
                                   <td>
                                       <input type="reset" value="Reset" name="reset"  class="btn" onclick="return clear();" />
                                   </td>
                               </tr>
                               <tr>
                                 <td align="center" colspan="2">
                                    <a href="View2.jsp">View Records</a>
                                 </td>
                               </tr>
                        </table>
                    </form>
         

                </tr>
                <tr>
                    <table border="0" width="100%" height="100%">
                        <tr>
                          <td class="footer">
                            <ul class="footer_ul">
                              <li><a href="JunalUsers.jsp">Add Record</a></li>
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