<%-- 
    Document   : Email
    Created on : 21 Jun, 2015, 10:35:54 PM
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
         try{   
        String email=request.getParameter("email");
        out.println(email);
        
        String verification=request.getParameter("veri");
        out.println(verification);
        String[] to= {email};
         //out.println(to);
        String msg="Your verification code for SRM CSE is "+ verification;
       if(Emailsender.sendMail("sid7326@gmail.com","sid326sms",msg, to))
       {
       out.println("yes");
       }
       else
           out.println("SOME ERROR CHECK YOUR CONNECTION");
         }catch(Exception e)
         {
             out.println(e);
         }
        %>
    </body>
</html>
