<%-- 
    Document   : attach
    Created on : 11 Jul, 2015, 4:44:13 PM
    Author     : siddhant
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% 
          String add="C:/Users/siddhant/Documents/NetBeansProjects/(_rldsms_)/notes";
          MultipartRequest m = new MultipartRequest(request,add ); 
          out.println("load");
       %>
    </body>
</html>
