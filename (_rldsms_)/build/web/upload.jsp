<%-- 
    Document   : upload
    Created on : 6 Jun, 2015, 11:40:02 PM
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
             if((session.getAttribute("teach_name")==null)||(session.getAttribute("teach_name" )==""))
            {
               {%><jsp:include page="header.jsp"></jsp:include><%}
               {%><jsp:include page="menu.jsp"></jsp:include><%}
               out.println("<centre><b><i><p class='para'>please login first</p></i></b>");
               
            }
             else{
        MultipartRequest m = new MultipartRequest(request, "C:/Users/siddhant/Documents/NetBeansProjects/(_rldsms_)/notes");  
        {%><jsp:include page="upload_notes.jsp"></jsp:include><%} 
        out.print("<center><b><i><p class='para'>successfully uploaded</p></i></b></center>");  
             }
%> 
    </body>
</html>
