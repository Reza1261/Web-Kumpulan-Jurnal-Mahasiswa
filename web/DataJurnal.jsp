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

                if(document.form_insert.Judul.value == "")
                    {
                        alert("Please Enter Judul");
                        return false;
                    }
               if(document.form_insert.Link.value == "")
                    {
                        alert("Please Enter Link");
                        return false;
                    }
                    if(document.form_insert.Pembuat.value == "")
                    {
                        alert("Please Enter Pembuat");
                        return false;
                    }
                   return true;
                   
            }
            function clear()
            {
                Judul.value = "";
                Link.value = "";
                Pembuat.value = "";
                
            }
        </script>
    </head>
    <body>
       
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Tambah Jurnal Ilmiah Kalian Disini</marquee>
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
                        <li><a href="View3.jsp">Lihat Data</a></li>
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
                        <h2>Tambah Data Jurnal</h2>
                    </td>
                </tr>
                <tr>
                    
                    <form name="form_insert" action="insertjurnal.jsp" method="post" onsubmit="return insvalid();">
                        <table border="0" align="center">
                               <tr>
                                   <td class="lbl_txt">Judul dan kutipan :</td>
                                   <td><textarea class="txt" type="text" name="Judul" rows="6" width="200"></textarea></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Link :</td>
                                   <td><input type="text" name="Link" class="txt" /></td>
                               </tr>
                               <tr>
                                   <td class="lbl_txt">Pembuat :</td>
                                   <td><input type="text" name="Pembuat" class="txt" /></td>
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
                                    <a href="view3.jsp">Lihat Data Link</a>
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
                              <li><a href="JurnalUsers.jsp">Tambah Data Jurnal</a></li>
                              <li><a href="JurnalUsers.jsp">Input Data Jurnal</a></li>
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