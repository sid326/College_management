<%-- 
    Document   : admin_login
    Created on : 4 Jun, 2015, 6:53:36 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
    </head>
    <body id="abbody">
        <form action="admin_profile.jsp" method="post">
            <%
            
            {%><jsp:include page="los.jsp"></jsp:include><%}
        %>
        </form>
            <%
            
            {%><jsp:include page="footer.jsp"></jsp:include><%}
        %>
    </body>
</html>
