<%-- 
    Document   : topper.jsp
    Created on : 13 Jul, 2015, 4:27:04 PM
    Author     : siddhant
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Glory</title>
    </head>
    <body id="abbody">
        <%
             {%><jsp:include page="profilehead.jsp"></jsp:include><%}
             {%><jsp:include page="menu.jsp"></jsp:include><%}
             Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps3=con.prepareStatement("SELECT  MAX(coa) FROM studentmarks");
            ResultSet rs=ps3.executeQuery();
            rs.next();
            //out.println(rs.getInt("suserid"));
            int maxmarks=rs.getInt(1);
            PreparedStatement ps=con.prepareStatement("SELECT * FROM studentmarks where coa=?");
            ps.setInt(1, maxmarks);
            ResultSet rs1=ps.executeQuery();
            rs1.next();
            out.println(rs1.getString("suserid"));
  /*          PreparedStatement ps3=con.prepareStatement("SELECT MAX(coa) FROM studentmarks;");
            PreparedStatement ps4=con.prepareStatement("SELECT MAX(coa) FROM studentmarks;");
            PreparedStatement ps5=con.prepareStatement("SELECT MAX(coa) FROM studentmarks;");*/
            
            out.println(maxmarks);
            //out.println("sid");
            //int name =rs.getInt("suserid");
            //String marks=rs.getString("coa");
            //out.println("name"+"\t\t"+marks);
            
        %>
    </body>
</html>
