<%-- 
    Document   : selfinbox
    Created on : 6 Jul, 2015, 7:52:34 AM
    Author     : siddhant
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String namestu=(String)session.getAttribute("name");
            String email;
            //out.println(name+namestu+email);
            if((session.getAttribute("teach_name")==null)||(session.getAttribute("name")==null)||(session.getAttribute("teach_name")=="")||(session.getAttribute("name")==""))
                
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            
            if((session.getAttribute("teach_name")==null)||(session.getAttribute("teach_name")==""))
            {
                String name=(String)session.getAttribute("name");
                PreparedStatement ps1=con.prepareStatement(" select studentdetail from teacherdetals where name=?");
                ps1.setString(1, namestu);
                ResultSet rs=ps1.executeQuery();
                rs.next();
                email=rs.getString("semail");
            }
           else
            {
                String name=(String)session.getAttribute("teach_name");
                PreparedStatement ps1=con.prepareStatement(" select teacher_email from teacherdetails where name=?");
            ps1.setString(1, name);
            ResultSet rs=ps1.executeQuery();
            rs.next();
            email=rs.getString("teacher_email");
            }
            PreparedStatement ps=con.prepareStatement(" select * from selfmail where mail_to=?");
            ps.setString(1, email);
            ResultSet rs1=ps.executeQuery();
        %>
        <table border="2" cellspacing="5" style="border-color:blue; background-color:cornsilk;width:100px;height:350px;">
          <tr style="border-color:cyan; background-color:crimson; height: 60px">
            <th style=" width:70%;"> Sno</th>
            <th width='20%'> From</th>
            <th width='20%'> Subject</th>
            <th > Message</th>
            <th width='12.5%'> Date</th>
            <th width='12.5%'> Time</th>
          </tr>
          
       <%
            while(rs1.next())
            {
               
               out.println("<tr height='40'><td width='5%'>"+rs1.getString("sno")+"</a></td>");
               out.println("<td ><a href='#'>"+rs1.getString("mail_from")+"</td>");
               out.println("<td ><a href='#'>"+rs1.getString("Sub")+"</td>");
               out.println("<td ><a href='#'>"+rs1.getString("message")+"</td>");
               out.println("<td >"+rs1.getString("Date")+"</td>");
               out.println("<td >"+rs1.getString("Time")+"</a></tr></td>");
            }
            %>
            <%
        %>
         
        </table>
    </body>
</html>
