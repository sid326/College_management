<%-- 
    Document   : index
    Created on : 4 Jun, 2015, 2:56:44 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>SRM COMPUTER SCIENCE DEPARTMENT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
    </head>
    <body>
        <div class="main">
            <div id="header">
                <table border="1" cellspacing="2" width="100%" height="100%">
                    <tr>
                        <td widht="10%">
                            <img src="srm.jpg" width="70%" height="75px" top="0">
                        </td>
                        <td width="80%"></td>
                        <td width="10%">
                            <img src="logo_cse.jpg" width="70%" height="75px">
                        </td>
                    </tr>
                </table>
            </div>
            <table border="1" cellspacing="2" width="100%" height="800px">
                <tr height="5%">
                    <td width="20%">students</td>
                    <td width="20%">teachers</td>
                    <td width="20%">achivements</td>
                    <td width="20%">facilities</td>
                    <td width="20%">projects</td>
                </tr>
                <tr height="28%">
                    <td colspan="5"></td>
                </tr>
                <tr width="100%" height="40%">
                    <td  colspan="2">
                        <div id="notice">
                            <center><h1>NOTICE BOARD</h1></center>
                            <marquee direction="down" height="80%">
                                <center>

                                </center>               </marquee>
                        </div>
                    </td>
                    <td  colspan="3">
                        <table>
                            
                        </table>
                    </td>
                </tr>
                <tr height="20%">
                    <td colspan="3">
                        <table border="1" width="100%" height="100%">
                            <tr>
                                <td width="25%" id="u1">nptel</td>
                                <td width="25%" id="u2">edx</td>
                                <td width="25%" id="u3">course-era</td>
                                <td width="25%" id="u4">javatpoint</td>
                            </tr>
                        </table>
                    </td>
                    <td colspan="2"></td>
                </tr>
                <tr height="50px">
                    <td colspan="5">HEADER</td>
                </tr>
            </table>
        </div> 
        <marquee direction="down" height="80%" class="mar">
                                <center>
        <%
    {%>
           
           
           <jsp:include page="anouncement"></jsp:include>
           
        <%}
                                    
%>
                                </center>
        </marquee>
    </body>
</html>
