<%-- 
    Document   : forgotmail
    Created on : 18 Jun, 2015, 1:06:05 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.mail.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body id="abbody">
        <%
            try{ 
                 String email=request.getParameter("email");
                 String msg="Reset Your Password Now By Clicking On This Link-- http://localhost:8084/Java_Advance_Project_Complete_Functionality/Forgot_Password_Process/newpassword.jsp?Email="+email+"";
                 System.out.print("msg is" +msg);
                 //mailing preocess
                 //SendMail mv =new SendMail(email,msg);
                 //mv.sms2();
                 out.print("Check Email To Reset Password");
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
