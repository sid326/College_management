<%-- 
    Document   : profilehead
    Created on : 15 Jun, 2015, 11:55:50 AM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        
        <title>JSP Page</title>
    </head>
    <body id="abbody">
        <div id="header">
                <table border="0" cellspacing="0" width="100%" height="100%">
                    <tr>
                        <td widht="10%">
                            <img src="images/srm.jpg" width="70%" height="80px" top="0">
                        </td>
                        <td width="80%">
                            <table border="0" cellspacing="0" width="100%" height="100%">
                                <tr> 
                                    <td width="40%">
                                        <form action="search.jsp" method="">
                                            <i><b>Search:</b></i><input type="search" id="searchbox" name="t1">
                                <input type="submit" id="searchbutton" value="SEARCH"></form>
                                    
                                    </td>
                                    <td width="60%">
                                        <table border="0" cellspacing="5" width="100%" height="100%">
                                            <tr height="100%">
                                                <td>
                                            <center>
                                                <form action="logout" method=""><input type="submit" value="Logout" id="logoutbut"></form>
                                            </center>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            </td>
                        <td width="10%">
                            <img src="images/logo_cse.jpg" width="70%" height="78px" style="float:right">
                        </td>
                    </tr>
                </table>
            </div>
    </body>
</html>
