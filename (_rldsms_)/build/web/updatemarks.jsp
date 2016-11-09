<%-- 
    Document   : updatemarks
    Created on : 13 Jun, 2015, 12:44:28 PM
    Author     : siddhant
--%>

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
        <form action="updatemarksdb.jsp" method="post">
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
                    int i,n;
                    int d=1;
                    out.println("<table id='insidejsp' cellspacing='10' border='2'>");
                    out.println("<tr><th>Registration number</th><th>Marks</th></tr>");
                    for(i=a;i<=b;i++)
                    {
                        out.println("<tr height='20px'>");
                        out.println("<td width='50%'>");
                        out.println(i+"</td>");
                        out.println("<td width='50%'>");
                        out.println("<input type='text' name='t"+d+"' id='teachin' maxlength='3' pattern='[0-9]{2}'>");
                        out.println("</td></tr>");
                        d++;
                    }
                    
                    out.println("</table>");
                        
            
                %>
            </center>
    <input type="submit" value="submit" id="indexbut">
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
