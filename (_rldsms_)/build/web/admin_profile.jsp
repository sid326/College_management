<%-- 
    Document   : admin_profile
    Created on : 11 Jun, 2015, 12:01:23 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Area</title>
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
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
                                    <i><b><p class="para">View Students</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">View Teachers</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para" style="font-size: 25px">Manage Anouncement</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                   <i><b><p class="para">View Placement</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">View Toppers</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">View Attendance</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">View Student Marks</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">View Teachers</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">View Teachers Details</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">View Teachers Details</p></b></i>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <i><b><p class="para">View Teachers Details</p></b></i>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="80%">
                        <table border="2" cellspacing="5" width="100%" height="100%">
                            <tr height="100">
                                <td width="100%">
                                   
                                </td>
                            </tr>
                            <tr height="100">
                                <td width="100%">
                                   
                                </td>
                            </tr>
                            <tr height="100">
                                <td width="100%">
                                   
                                </td>
                            </tr>
                            <tr height="100">
                                <td width="100%">
                                    
                                </td>
                            </tr>
                            <tr height="100">
                                <td width="100%">
                                   
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </center>
         <div class="marginspacetop"></div>
        <%
        {%><jsp:include page="footer.jsp"></jsp:include><%}

        %>
    </body>
</html>
