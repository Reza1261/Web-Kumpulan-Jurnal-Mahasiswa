<%-- 
    Document   : Admin
    Created on : Oct 24, 2015, 9:45:32 PM
    Author     : OM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
        <style type="text/css">
            body
            {
                background-color:rgb(234,234,234);
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
                color:rgb(102,160,50);
            }
            h2
            {
                text-align:center;
                color:olive;
                font-size:30px;
            }
        </style>
        <script type="text/javascript">

            function insvalid()
            {

                if(document.form_insert.User.value == "")
                    {
                        alert("Please Enter User");
                        return false;
                    }
               if(document.form_insert.Password.value == "")
                    {
                        alert("Please Enter Password");
                        return false;
                    }
               if(document.form_insert.Nama.value == "")
                    {
                        alert("Please Enter Nama");
                        return false;
                    }
               if(document.form_insert.Email.value == "")
                    {
                        alert("Please Enter Email");
                        return false;
                    }
               if(document.form_insert.Nomor.value == "")
                    {
                        alert("Please Enter Nomer HP");
                        return false;
                    }
                   return true;
                   
            }
            function clear()
            {
                User.value = "";
                Password.value = "";
                Nama.value = "";
                Email.value = "";
                Nomor.value = "";
                
            }
        </script>
    </head>
    <body>
       
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Ini adalah Page User, kalian bisa input Jurnal atau edit Profil</marquee>
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
                        <li><a href="Admin2.jsp">Tambah Data</a></li>
                        <li><a href="Delete2.jsp">Hapus Data</a></li>
                        <li><a href="Update2.jsp">Perbarui Data</a></li>
                        <li><a href="View2.jsp">Lihat Data</a></li>
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
                        <h2>Add Record</h2>
                    </td>
                </tr>
                <tr>
                    
                    <form name="form_insert" action="insert2.jsp" method="post" onsubmit="return insvalid();">
                        <table border="0" align="center">
                               <tr>
                                   <td class="lbl_txt">User :</td>
                                   <td><input type="text" name="User" class="txt" /></td>
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
                                   <td class="lbl_txt">Nomer HP :</td>
                                   <td><input type="text" name="Nomor" class="txt" /></td>
                               </tr>
                               
                               <tr>
                                   <td>
                                       <input type="submit" name="submit" value="Insert" class="btn" />
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
                              <li><a href="DataJurnal.jsp">Tambah Data Jurnal</a></li>
                            </ul>

                          </td>
                       </tr>
                       <tr>
                          <td class="footer">
                            <h3>Developed by : Reza1261@Gmail.com</h3>
                          </td>
                       </tr>
                       
                    </table>
                </tr>
          </table>
       
    </body>
</html>