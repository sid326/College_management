<%-- 
    Document   : newjsp2
    Created on : 30 Jun, 2015, 9:24:36 PM
    Author     : siddhant
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Date dNow = new Date( );
   SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
   SimpleDateFormat ftt = new SimpleDateFormat ("hh:mm:ss");
   
   String date=ft.format(dNow);
   String time=ftt.format(dNow);
         
        %>
    </body>
</html>
