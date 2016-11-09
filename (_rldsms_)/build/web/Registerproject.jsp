<%-- 
    Document   : Registerproject
    Created on : 20 Jun, 2015, 1:48:24 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Projects</title>
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        
    </head>
    <body id="abbody">
        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}
            {%><jsp:include page="menu.jsp"></jsp:include><%}
        %>
        <form action="" method="">
            <table border="2" cellspacing="5" width="100%" height="350">
                <tr height="30px">
                    
                </tr>
                <tr height="30px">
                    <td width="50%">
                        <i><b><p class="para" style="float:right">Group Name:</p></b></i>
                    </td>
                    <td width="50%">
                        <input type="text" id="teach_input" name="gpname">
                    </td>
                </tr>
                <tr height="30px">
                    <td width="50%">
                         <i><b><p class="para" style="float:right">Project Name:</p></b></i>
                    </td>
                    <td width="50%">
                        <input type="text" id="teach_input" name="proname">
                    </td>
                </tr>
                <tr height="30px">
                    <td width="50%">
                        <i><b><p class="para" style="float:right">Teacher Head Name:</p></b></i>
                    </td>
                    <td width="50%">
                        <input type="text" id="teach_input" name="theadname">
                    </td>
                </tr>
                <tr height="30px">
                    <td width="50%">
                        <i><b><p class="para" style="float:right">Teacher Head Contact Details:</p></b></i>
                    </td>
                    <td width="50%">
                        <input type="text" id="teach_input" name="theadname">
                    </td>
                </tr>
                <tr height="30px">
                    <td width="50%">
                        <i><b><p class="para" style="float:right">Student Head Name:</p></b></i>
                    </td>
                    <td width="50%">
                        <input type="text" id="teach_input" name="theadname">
                    </td>
                </tr>
                <tr height="30px">
                    <td width="50%">
                        <i><b><p class="para" style="float:right">Student Head Contact Details:</p></b></i>
                    </td>
                    <td width="50%">
                        <input type="text" id="teach_input" name="theadname">
                    </td>
                </tr>
                <tr height="30px">
                    <td width="50%">
                        <i><b><p class="para" style="float:right">Teacher Email</p></b></i>
                    </td>
                    <td width="50%">
                        <input
                            <input type="text" id="teach_input" name="temail">
                    </td>
                </tr>
                <tr height="30px">
                    <td colspan="2">
                <center><input type="submit"></center>
                    </td>
                </tr>
            </table>
        </form>
        <%
            
        %>
    </body>
</html>
