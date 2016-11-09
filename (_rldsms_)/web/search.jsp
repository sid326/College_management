<%-- 
    Document   : search
    Created on : 10 Jun, 2015, 12:20:24 AM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SEARCH RESULT</title>
    </head>
    <body>
        <h1>
            <%
                String a=request.getParameter("t1");
                response.sendRedirect("https://www.google.co.in/search?q="+a);
            %>
                
        </h1>
    </body>
</html>
