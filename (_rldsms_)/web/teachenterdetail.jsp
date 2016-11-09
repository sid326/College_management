<%-- 
    Document   : teachenterdetail
    Created on : 12 Jun, 2015, 10:00:13 PM
    Author     : siddhant
--%>

<%@page import="java.security.MessageDigest"%>
<%@page import="sun.misc.BASE64Encoder"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
             if((session.getAttribute("teach_name")==null)||(session.getAttribute("teach_name" )==""))
            {
               {%><jsp:include page="header.jsp"></jsp:include><%}
               {%><jsp:include page="menu.jsp"></jsp:include><%}
               out.println("<centre><b><i><p class='para'>please login first</p></i></b>");
               
            }
         else
            {
                 {%><jsp:include page="profilehead.jsp"></jsp:include><%}
                 
             try
        {
            int x=0;
            String name=request.getParameter("tname");
            String gender=request.getParameter("tgen");
            String depart=request.getParameter("tdept");
            String dob=request.getParameter("tdob");
            String user=request.getParameter("tuserid");
            String pass=request.getParameter("tpass");
            String perh=request.getParameter("tpadd");
            String pers=request.getParameter("tpstate");
            String perp=request.getParameter("tppin");
            String temph=request.getParameter("tcadd");
            String temps=request.getParameter("tcstate");
            String tempp=request.getParameter("tcpin");
            String mob =request.getParameter("tmob");
            String email=request.getParameter("temail");
            String quel=request.getParameter("tquel");
            String doj=request.getParameter("tdoj");
            String area=request.getParameter("tarea");
            String nopro=request.getParameter("tprono");
            String namepro =request.getParameter("tproh");
            out.println(dob);
            String per=perh+","+pers+","+perp;
            String temp=temph+","+temps+","+tempp;
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.update(pass.getBytes(),0,pass.getBytes().length);
            byte[] tpass = md5.digest(pass.getBytes());
            String ab = new BASE64Encoder().encode(tpass);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement(" insert into teacherdetails values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, x);
            ps.setString(2, name);
            ps.setString(3,gender);
            ps.setString(4, depart);
            
            ps.setString(5, dob);
            ps.setString(6, user);
            ps.setString(7, ab);
            ps.setString(8, per);
            ps.setString(9, temp);
            ps.setString(10, mob);
            ps.setString(11, email);
            ps.setString(12, quel);
            ps.setString(13, doj);
            ps.setString(14,area);
            ps.setString(15,nopro);
            ps.setString(16, namepro);
            out.println(ps); 
            int y=ps.executeUpdate();
            //out.println(ps);
        if(y>0)
        {
            
        out.println("<script>");
        out.println("alert('Registered Successfully')"); 
        out.println("</script>");
        {%><jsp:forward page="tprofile.jsp"></jsp:forward><%}
        }    
        }
        catch(Exception e)
        {
           out.println(e);            
        }
            }
        %>
    </body>
</html>
