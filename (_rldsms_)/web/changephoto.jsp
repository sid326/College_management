<%-- 
    Document   : changephoto.jsp
    Created on : 17 Jun, 2015, 2:06:24 PM
    Author     : siddhant
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
        MultipartRequest m = new MultipartRequest(request, "C:/Users/siddhant/Documents/NetBeansProjects/(_rldsms_)/web/images/");
        
        {%><jsp:include page="tprofile.jsp"></jsp:include><%} 
        out.print("<center><b><i><p class='para'>successfully uploaded</p></i></b></center>");  
  
       %> 
    </body>
</html>
