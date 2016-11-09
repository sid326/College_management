<%-- 
    Document   : placement.jsp
    Created on : 10 Jun, 2015, 11:35:18 AM
    Author     : siddhant
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <title>JSP Page</title>
        <style>
            a{
                text-decoration: none;
                color: white;
                //font-size: 30px;
                font-weight: 200;
            }
        </style>
    </head>
    <body id="abbody">
        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}  
        %>
        <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}  
        %>
    <center>
        <div id="place">
            <table border="0" cellspacing="4" width="100%" height="100%">
                <tr height="10%">
                    <td width="20%">
                        <table border="0" cellspacing="0" width="100%" height="100%">
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <a href=""><i><b><p class="para">Our Team</p></b></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <a href=""> <i><b><p class="para">Student Speaks</p></b></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <a href=""><i><b><p class="para">Our Patrons</p></b></i></a>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <a href=""><i><b><p class="para">Statistics</p></b></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <a href=""> <i><b><p class="para">Highest Package</p></b></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <a href=""><i><b><p class="para">Tips</p></b></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <a href=""><i><b><p class="para">Gallery</p></b></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <a href=""><i><b><p class="para">Contact</p></b></i></a>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="80%">
            <%
            
            try  
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement(" select * from test2");
            int i=0;
           ResultSet rs= ps.executeQuery();
           out.println("<center><table border='2' style='border-color:blue; background-color:cornsilk;width:95%;height:350px;'>");
           out.println("<tr style='border-color:cyan; background-color:crimson;'>");
           out.println("<th > Name</th>");
           out.println("<th> Registration No.</th>");
           //out.println("<th> Company</th>");
           out.println("<th> Year</th>");
           out.println("<th> Package</th>");
           out.println("</tr>");
           while(rs.next()&& i<10)
           {
            out.println("<tr style='font-size:20px;'>");
            out.println("<td>"+rs.getString("Name")+"</td>");
            out.println("<td>"+rs.getString("Regno")+"</td>");
            //out.println("<td>"+rs.getString("Company")+"</td>");
            out.println("<td>"+rs.getString("Year")+"</td>");
            out.println("<td>"+rs.getString("Package")+"</td>");
            out.println("</tr>");
           }
           out.println("</table></center>");
        }
        catch(Exception e)
        {}
            
            %>
                    </td>
                </tr>
            </table>
        </div>
    </center>  
    <%
            {%><jsp:include page="footer.jsp"></jsp:include><%}  
        %>

    </body>
</html>
