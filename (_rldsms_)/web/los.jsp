<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        
    </head>
    <body>
        
        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}  
        %>
        <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}  
        %>
        <div class="t2"> <br><br><br><br><br><br><br>
            <center> <div class="t21">
                    <img src="images/cse.jpg">
                    <h1><i><b>LOGIN</b></i></h1>
                    <hr>
                    
                    <table border="0" cellspacing="0" width="100%" height="20%">
                        <tr height="50%">
                            <td width="50%">
                                <b><i>Name:</i></b>
                            </td>
                            <td width="50%">
                                <input type="text" required="" placeholder="abc" name="name" id="ta1" autocomplete="" oninput="">
                            </td>
                        </tr>
                        <tr height="50%">
                            <td width="50%">
                                <b><i>Password:</i></b>
                            </td>
                            <td width="50%">
                                <input type="password" required="" placeholder="PASSWORD" name="password" id="ta1" minlength="8" >
                            </td>
                        </tr>
                    </table>
                    <hr>
                    
                    
                        <input type="submit"  value="SIGN IN" id="t2b" style="width: 150px; ">
                   
                </div></center>
        </div>
       
        
    </body>
</html>
