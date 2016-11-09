<%-- 
    Document   : pgt
    Created on : Dec 21, 2014, 8:45:41 PM
    Author     : SID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TGT Teachers</title>
        <style>
            .a1
            {
                background-color: transparent;
                width:800px;
                height: 500px;
               
                
                font-family:sans-serif ;
                color:black;
                margin-top: -600px;
                margin-left: 270px;
            }
        </style>
    </head>
    <body>
        <form action="login" method="post">
        <%
            
            {%><jsp:include page="lo.html"></jsp:include><%}
        %>
        <div class="a1">
            <br><br><br>
            <center><i><b><u><h1>STUDENT</h1></u></b></i></center>
            
        </div>
        </form>
    </body>
</html>
