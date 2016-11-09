<%-- 
    Document   : tregdb
    Created on : 13 Jun, 2015, 2:09:10 PM
    Author     : siddhant
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body>
        <form action="Email.jsp" method="post">
        <%
             
                 {%><jsp:include page="profilehead.jsp"></jsp:include><%}
                 
            
            try{
               
            String name=request.getParameter("tname");
            String gender=request.getParameter("tgen");
            String depart=request.getParameter("tdept");
            String dob=request.getParameter("tdob");
            String mob =request.getParameter("tmob");
            String email=request.getParameter("temail");
            String sep=request.getParameter("special");
            String sub=request.getParameter("tsub");
            String quel=request.getParameter("qualification");
            String exp=request.getParameter("exp");
           


    
    
    //note a single Random object is reused here
    Random randomGenerator = new Random();
    int veri = randomGenerator.nextInt(100000);
    
    //out.println(veri);
%>
    <input type="hidden" name="veri" value="<%=veri%>">
    <input type="hidden" name="email" value="<%= email%>">
    
    <%
            int a=0;
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement(" insert into teacherreg values(?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, a);
            ps.setString(2, name);
            ps.setString(3,gender);
            ps.setString(4, depart);
            ps.setString(5, dob);
            ps.setString(6, mob);
            ps.setString(7, email);
            ps.setString(8, sep);
            ps.setString(9,quel);
            ps.setString(10,exp);
            ps.setInt(11, veri);
            //out.println(ps); 
            int x=ps.executeUpdate();
           // out.println(ps);
        if(x>0)
        {
            
        out.println("<script>");
        out.println("alert('Registered Successfully Verificaton Code will Be Sent To Your Email')"); 
        out.println("</script>");
        %>
        <input type="submit" value="move forward">
        <%
        }    
        }
        catch(Exception e)
        {
           out.println(e);            
        }
            
        %>
        </form>
    </body>
</html>
