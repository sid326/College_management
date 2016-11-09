<%-- 
    Document   : checkClgId
    Created on : 22 Jun, 2015, 3:08:22 PM
    Author     : siddhant
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


        <%
            String s=request.getParameter("id");
             Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement(" select college_id from studentregistration where college_id=?");
            ps.setString(1, s);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                out.println("Not Avilable");
            }
            else
            {
                out.println("Avilable");
            }
        %>
