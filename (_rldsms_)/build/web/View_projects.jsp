<%-- 
    Document   : View_projects
    Created on : 20 Jun, 2015, 1:33:01 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Projects</title>
    </head>
    <body id="abbody">
        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}
            {%><jsp:include page="menu.jsp"></jsp:include><%}
            
             
        %>
    <center>
        <div class="marginspacetop"></div>
        <table border="2" cellspacing="5" width="90%" height="350">
            <tr>
                <td>Outside projects
            <center>View the live projects all over the world</center>
                </td>
                <td>Inside projects
                <center>View the projects in our college</center>
                </td>
            </tr>
        </table>
    </center>
    <%
            {%><jsp:include page="footer.jsp"></jsp:include><%}
    %>
    </body>
</html>
