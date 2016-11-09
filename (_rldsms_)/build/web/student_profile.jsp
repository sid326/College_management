<%-- 
    Document   : student_profile
    Created on : 5 Jun, 2015, 3:31:57 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <title>STUDENT|HOME</title>
    </head>
    <body>
        <%
            if((session.getAttribute("sname")==null)||(session.getAttribute("sname" )==""))
            {
               {%><jsp:include page="header.jsp"></jsp:include><%}
               {%><jsp:include page="menu.jsp"></jsp:include><%}
               out.println("<centre><b><i><p class='para'>please login first</p></i></b>");
               
            }
         else
            {
                 {%><jsp:include page="profilehead.jsp"></jsp:include><%}
             
        %>
        <div class="main">
            <table border="0" cellspacing="0" width="100%" height="630px">
                <tr width="100%" height="10px">
                    <td width="20%" height="4%"><br></td>
                    <td width="75%" height="4%"><br></td>
                    <td width="5%" height="4%"><br></td>
                </tr>
                <tr width="100%">
                    <td width="20%" height="100%">
                        <table border="0" cellspacing="0" width="100%" heigth="100%" id="side_table">
                            <tr width="100%">
                                <td width="100%" height="4%">
                                    <b><u><h1 id="tbut">general</h1></u></b>
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    details
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    dept
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    sec
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px">
                                    <b><u><h1 id="tbut">academics</h1></u></b>
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    time-table
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    attendance
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    marks
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    subject-list
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    elective-subjects
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    credits
                                </td>
                            </tr>
                            <tr width="100%">
                                <td width="100%" height="50px" id="tbutton">
                                    Feedback
                                </td>
                            </tr>
                            
                        </table>
                    </td>
                    <td width="75%" height="70%">
                        
                    </td>
                    <td width="20%" height="70%">
                        
                    </td>
                </tr>
                <tr height="50px">
                    <td colspan="5" id="footer">
                        
                <center>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
                    </td>
                </tr>
            </table>
            
        </div>
        <%
            }
        %>
    </body>
</html>
