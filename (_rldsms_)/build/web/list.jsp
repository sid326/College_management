<%-- 
    Document   : list
    Created on : 17 Jun, 2015, 11:57:00 PM
    Author     : siddhant
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        File[] files = new File("C:/Users/siddhant/Documents/NetBeansProjects/(_rldsms_)/web/images").listFiles();
        request.setAttribute("files", files);
        request.getRequestDispatcher("admin_profile.jsp").forward(request, response);
%>
    </body>
</html>
