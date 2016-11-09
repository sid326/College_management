<%-- 
    Document   : updatemarks
    Created on : 13 Jun, 2015, 12:44:28 PM
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
        <title>Update Marks</title>
    </head>
    <body id="abbody">
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
                 
        %>
        <form action="ChartServlet">
        <div class="marginspacetop"></div>
        
            <center>
                <%
                    String start=request.getParameter("srn");
                    String last=request.getParameter("lrn");
                    String sec=request.getParameter("section");
                    String subject=request.getParameter("sub");
                    %>
                    <input type="hidden" name="srn" value="<%=start%>">
                    <input type="hidden" name="lrn" value="<%=last%>">
                    <input type="hidden" name="sub" value="<%=subject%>">
                    <input type="hidden" name="secc" value="<%=sec%>">
                    <%
                    int a= Integer.parseInt(start);
                    int b= Integer.parseInt(last);
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                    PreparedStatement ps=con.prepareStatement(" select "+ subject +" from studentmarks");
                    ResultSet rs=ps.executeQuery();
                    rs.next();
                    int i,n;
                    int d=0,c=0,f=0,s=0,l=0;
                    int[] k = new int[100];
                    out.println("<table id='insidejsp' cellspacing='10' border='2'>");
                    out.println("<tr><th>Registration number</th><th>Marks</th></tr>");
                    while(rs.next())
                    {
                        out.println("<tr height='20px'>");
                        out.println("<td width='50%'>");
                        out.println(a+"</td>");
                        out.println("<td width='50%'>");
                        out.println(rs.getString(subject));
                        k[d]=Integer.parseInt(rs.getString(subject));
                        if(k[d]>90)
                            c++;
                        else if(k[d]<=90 && k[d]>=75)
                            f++;
                        else if(k[d]>=50 && k[d]<75)
                            s++;
                        else
                            l++;
                      out.println("</td></tr>");
                        a++;d++;
                    }
                    
                    out.println("</table>");
                        
            
                %>
            </center>
            <input type="hidden" name="clear" value="<%=c%>">
            <input type="hidden" name="first" value="<%=f%>">
            <input type="hidden" name="second" value="<%=s%>">
            <input type="hidden" name="fail" value="<%=l%>">
    <input type="submit" value="Pie chart" id="indexbut">
</form>
    
    <div class="marginspacetop"></div>
       
    <%
            }
    %>
     <div id="footer">
                    <br/>    
                <center>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
        </div>
    </body>
</html>
