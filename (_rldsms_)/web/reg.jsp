<%-- 
    Document   : reg
    Created on : 11 Jun, 2015, 9:50:39 PM
    Author     : siddhant
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Student Registration</title>
    </head>
    <body id="abbody">
        <%
             if((session.getAttribute("teach_name")==null)||(session.getAttribute("teach_name" )==""))
            {
            try
            {
            String name=request.getParameter("name");
            String cname=request.getParameter("cname");
            String cid=request.getParameter("cid");
            String email=request.getParameter("email");
            String dept=request.getParameter("dept");
            String password=request.getParameter("password");
            String mob=request.getParameter("mobile");
            String gender=request.getParameter("gen");
            String year =request.getParameter("year");
            int a=0;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement(" insert into studentregistration values(?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1,a);
            ps.setString(2, name);
            ps.setString(3,gender);
            ps.setString(4, cname);
            ps.setString(5, cid);
            ps.setString(6, email);
            ps.setString(7, password);
            ps.setString(8, dept);
            ps.setString(9, year);
            ps.setString(10, mob);
            out.println(ps);
            int x=ps.executeUpdate();         
        if(x>0)
        {
        out.println("<script>");
        out.println("alert('Registered Successfully')"); 
        out.println("</script>");      
            {%><jsp:forward page="studentreg.jsp"></jsp:forward><%}
        }    
        }
        catch(Exception e){
            out.println(e);   
        }            
       }
        %>
    </body>
</html>
