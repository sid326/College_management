<%-- 
    Document   : teach1stlogin
    Created on : 21 Jun, 2015, 10:46:18 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen">
        <title>Welcome</title>
    </head>
    <body id="abbody">
        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}
        %>
        <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}
        %>
       
        <form action="t1stenterdb.jsp" method="post">
             <center>
        <table border="0" cellspacing="2" width="450" height="300" id="teachlogin" style="margin-top: 100px">
            <tr width="100%" height="10px">
                <td width="50%"></td>
                <td width="50%"></td>
            </tr>
            <tr width="100%" height="30px">
                <td>
                    <b><i><p class="para" style="text-align: center">Email Id:</p></i></b>
                    
                </td>
                <td>
                    <input type="text" required="required" autofocus="" name="teach_user" placeholder="abc@dash.com" id="teach_input">
                </td>
            </tr>
            
            <tr width="100%" height="30px">
                <td ><b><i><p class="para" style="text-align: center">Password:</p></i></b></td>
                
                <td>
                    <input type="password" required="required" autofocus="" name="teach_pass" placeholder="abs1234" id="teach_input">
                    
                </td>
            </tr>
            <tr width="100%" height="30px">
                <td><b><i><p class="para" style="text-align: center">Verification Code:</p></i></b></td>
                <td>
                    <input type="text" required="required" name="veri" placeholder="23456" id="teach_input" maxlength="5" minlength="5">
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
           </center>
         <center>
             <div width="50%" height="100" style="text-align: center;margin-left: -100px;margin-top: 10px">
               
                <pre>
                <span style="color: red">Email id as your id on which verification is sent</span>
                <span style="color: red">Password is your DOB(yyyy/mm/dd)</span>
                </pre>
               
            </div>
        
    </center>
        </form>
        <%
            {%><jsp:include page="footer.jsp"></jsp:include><%}
        %>
    </body>
</html>
