<%-- 
    Document   : selfmailtodb
    Created on : 30 Jun, 2015, 7:57:17 PM
    Author     : siddhant
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.*"%>
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
                String add="C:/Users/siddhant/Documents/NetBeansProjects/(_rldsms_)/notes";
            
             MultipartRequest m = new MultipartRequest(request,add ); 
            String mailto=m.getParameter("mailto");
            String name=(String)session.getAttribute("teach_name");
            
            String from;
            //out.println(name);
            String msg=m.getParameter("msg");
            String sub=m.getParameter("sub");
            //out.println(msg);
            int a=0;
            Date dNow = new Date( );
            SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
            SimpleDateFormat ftt = new SimpleDateFormat ("hh:mm:ss");
            String date=ft.format(dNow);
            String time=ftt.format(dNow);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps1=con.prepareStatement(" select teacher_email from teacherdetails where name=?");
            ps1.setString(1, name);
            ResultSet rs=ps1.executeQuery();
            rs.next();
            from=rs.getString("teacher_email");
            
            PreparedStatement ps=con.prepareStatement(" insert into selfmail values(?,?,?,?,?,?,?,?)");
            ps.setInt(1, a);
            ps.setString(2, date);
            ps.setString(3,time);
            ps.setString(4, mailto);
            ps.setString(5, from);
            ps.setString(6, sub);
            ps.setString(7, msg);
            ps.setString(8, add);
            out.println(ps);
            
            int x= ps.executeUpdate();
            if(x==1)
                out.println("succesfull");
        }catch(Exception e)
        {
            out.println(e);
        }
        %>
    </body>
</html>