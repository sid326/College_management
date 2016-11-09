<%-- 
    Document   : teacherlogin
    Created on : 12 Jun, 2015, 11:41:54 AM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen">
    </head>
    <body id="abbody">
        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}
        %>
        <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}
        %>
    <center>
        <form action="teacher_loginveri.jsp" method="post">
        <table border="0" cellspacing="2" width="450" height="300" id="teachlogin" style="margin-top: 100px">
            <tr width="100%" height="10px">
                <td width="50%"></td>
                <td width="50%"></td>
            </tr>
            <tr width="100%" height="30px">
                <td>
                    <b><i><p class="para" style="text-align: center">User Id:</p></i></b>
                </td>
                <td>
                    <input type="text" required="required" autofocus="" name="teach_user" placeholder="abc@dash.com" id="teach_input">
                </td>
            </tr>
            
            <tr width="100%" height="30px">
                <td><b><i><p class="para" style="text-align: center">Password:</p></i></b></td>
                <td>
                    <input type="password" required="required" autofocus="" name="teach_pass" placeholder="abs1234" id="teach_input">
                    
                </td>
            </tr>
            <tr width="100%" height="30px">
                <td></td>
                <td>
                    <span><a href="forgot.jsp" style="text-decoration: none;text-align: center;color: silver; cursor:cell">Forgot Password</a></span>
                </td>
            </tr>
            
            <tr width="100%" height="30px">
                <td colspan="2">
            <center>
                <input type="submit" id="indexbut" value="Login" style="margin-left: -1%;">
            </center>
                </td>
            </tr> 
        </table>
        </form>
    </center>
        <%
            {%><jsp:include page="footer.jsp"></jsp:include><%}
        %>
    </body>
</html>
