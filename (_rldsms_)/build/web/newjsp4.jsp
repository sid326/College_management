<%-- 
    Document   : newjsp4
    Created on : 15 Aug, 2015, 1:15:48 PM
    Author     : siddhant
--%>

<%@page import="mail.Emailsender"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
        //String email=request.getParameter("email");
        //out.println(email);
        String verification="12345";
        String to[]={"siddhants29@gmail.com","siddhant.siddhant2@gmail.com"};
        String msg="Your verification code for SRM CSE is "+ verification;
       if(Emailsender.sendMail("sid7326@gmail.com", "sid326sms",msg, to))
       {
       {%><jsp:forward page="teach1stlogin.jsp"></jsp:forward><%}
       }
       else
           out.println("SOME ERROR CHECK YOUR CONNECTION");
        %>
    </body>
</html>