<%-- 
    Document   : Login
    Created on : Oct 24, 2015, 2:54:04 PM
    Author     : OM
--%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="stylesheet.css" type="text/css" rel="stylesheet" media="all" />
        <script type="text/javascript">

        <!--
            function valid_form()
            {
                if(document.form_login.uname.value === "")
                    {
                        alert("Please Enter Username");
                        return false;
                    }
                if(document.form_login.pwd.value === "")
                    {
                        alert("Please Enter Password");
                        return false;
                    }
                 return true;
            }
        </script>
        <style type="text/css">
            html,body
            {
                background-color:rgb(234,234,234);
            }
        </style>
    </head>
    <body> 
            <table border="0">
                <tr>
                    <td class="top">
                        <marquee>Project buat UAS</marquee>
                    </td>
                </tr>
                <tr>
                    <td class="header">
                        <img src="images/header1.png" width="1350px"  height="150px" alt="" />
                    </td>
                </tr>
                <tr>
                    <td class="menu">
                       <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="Login.jsp">Admin</a></li>
                        <li><a href="Contact.jsp">Contact</a></li>
                        <li><a href="About.jsp">About</a></li>
                      </ul>
                    </td>
                </tr>
                <tr>
                    
                    <form name="form_login" action="valid_login2.jsp" method="post" onsubmit="return valid_form();">
                        <table border="0" align="center" cellpadding="2" cellspacing="2">
                               <h2 align="center">Login here</h2>
                            <tr>
                                <td width="28%" rowspan="3">
                                    <div align="center">
                                        <img src="images/admin1.png" width="50" height="50"/>
                                            
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl_txt">Username :</td>
                                <td><input type="text" name="uname" class="txt"></td>
                            </tr>
                            <tr>
                                <td class="lbl_txt">Password :</td>
                                <td><input type="password" name="pwd" class="txt"></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4">
                                    <input type="submit" name="submit" value="Login" class="btn">
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
                              <li><a href="index.jsp">Home</a></li>
                              <li><a href="Login.jsp">Admin</a></li>
                              <li><a href="Contact.jsp">Contact</a></li>
                              <li><a href="About.jsp">About</a></li>
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
