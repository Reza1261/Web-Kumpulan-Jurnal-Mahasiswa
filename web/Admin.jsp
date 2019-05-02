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
        <title>Admin</title>
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

                if(document.form_insert.first.value == "")
                    {
                        alert("Please Enter First Name");
                        return false;
                    }
               if(document.form_insert.last.value == "")
                    {
                        alert("Please Enter Last Name");
                        return false;
                    }
               if(document.form_insert.address.value == "")
                    {
                        alert("Please Enter Address");
                        return false;
                    }
               if(document.form_insert.city.value == "")
                    {
                        alert("Please Enter City");
                        return false;
                    }
               if(document.form_insert.mobile.value == "")
                    {
                        alert("Please Enter Mobile No");
                        return false;
                    }
               if(document.form_insert.email.value == "")
                    {
                        alert("Please Enter Email Id");
                        return false;
                    }
               if(document.form_insert.pin.value == "")
                    {
                        alert("Please Enter Pin code");
                        return false;
                    }
                   return true;
                   
            }
            function clear()
            {
                first.value = "";
                last.value = "";
                address.value = "";
                city.value = "";
                mobile.value = "";
                email.value = "";
                pin.value = "";
            }
        </script>
    </head>
    <body>
       
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Ini adalah Page Admin</marquee>
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
                        <li><a href="View.jsp">Lihat Data Member</a></li>
                      </ul>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                      <strong class="wel">Welcome&nbsp;</strong><strong class="bm"><%= session.getAttribute("userName") %></strong><br>
                       <a href="Login.jsp">Logout</a>
                    </td>
                </tr>
                    
                <tr>
                    <td>
                        <h2>Tambah Data Member Baru</h2>
                    </td>
                </tr>
                <tr>
                    
                    <form name="form_insert" action="insert.jsp" method="post" onsubmit="return insvalid();">
                        <table border="0" align="center">
                               <tr>
                                   <td class="lbl_txt">First Name :</td>
                                   <td><input type="text" name="first" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Last Name :</td>
                                   <td><input type="text" name="last" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Address :</td>
                                   <td><input type="text" name="address" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">City :</td>
                                   <td><input type="text" name="city" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Mobile No :</td>
                                   <td><input type="text" name="mobile" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Email Id :</td>
                                   <td><input type="text" name="email" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Pin code :</td>
                                   <td><input type="text" name="pin" class="txt" /></td>
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
                                    <a href="View.jsp">Lihat Data</a>
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
                              <li><a href="Admin.jsp">Tambah Data Member</a></li>
                              <li><a href="Delete.jsp">Hapus Data</a></li>
                              <li><a href="Update.jsp">Perbarui Data</a></li>
                              <li><a href="View.jsp">Lihat Data Member</a></li>
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