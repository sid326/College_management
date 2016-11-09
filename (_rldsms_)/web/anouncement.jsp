<%-- 
    Document   : anouncement
    Created on : 10 Jun, 2015, 7:32:09 PM
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
        <title>JSP Page</title>
    </head>
    <body id="abbody">
        <%
            try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement(" select * from test1");
            int i=0;
           ResultSet rs= ps.executeQuery();
           out.println("");
           while(rs.next()&& i<5)
           {
            out.println("<pre>"+rs.getString("imp_anounce"));
            i++;
            out.println("\n");
            out.println("</pre>");
           }
        }
        catch(Exception e)
        {}
            %>
    </body>
</html>
