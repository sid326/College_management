<%-- 
    Document   : placement.jsp
    Created on : 10 Jun, 2015, 11:35:18 AM
    Author     : siddhant
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <title>JSP Page</title>
    </head>
    <body id="abbody">
        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}  
        %>
        <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}  
        %>
    <center>
        <div id="place">
            <table border="1" cellspacing="4" width="100%" height="100%">
                <tr height="10%">
                    <td width="20%">
                        <table border="1" cellspacing="0" width="100%" height="100%">
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">Our Team</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">Student Speaks</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">Our Patrons</p></b></i>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                   <i><b><p class="para">Statistics</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">Highest Package</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">Tips</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">Gallery</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">Contact</p></b></i>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="80%">
           
                    </td>
                </tr>
            </table>
        </div>
    </center>
                    <div style="float: left">    
    <%
            {%><jsp:include page="footer.jsp"></jsp:include><%}  
        %>
                    </div>
    </body>
</html>