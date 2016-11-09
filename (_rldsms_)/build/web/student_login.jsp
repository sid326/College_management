<%-- 
    Document   : student_login
    Created on : 4 Jun, 2015, 6:55:05 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
    </head>
    <body id="abbody">
              
        <form action="student_profile.jsp" method="post">
            
        <%
            {%><jsp:include page="los.jsp"></jsp:include><%}

        %>  
        
        </form>
            <table width="100%" height="80" cellspacing="0" >
                <tr height="50px">
                    <td colspan="5" id="footer">
                        
                <center>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
                    </td>
                </tr>
            </table>
        </div> 
   
                                
    </body>
</html>
