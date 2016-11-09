<%-- 
    Document   : updatemarksdb
    Created on : 17 Jun, 2015, 11:54:22 AM
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
                 
            try{
            String section=request.getParameter("secc");
            String startr=request.getParameter("srn");
            int as=Integer.parseInt(startr);
            
            //int a=Integer.parseInt(startr);
            String lastr=request.getParameter("lrn");
            String subj=request.getParameter("sub");
            int al=Integer.parseInt(lastr);
            int i,d=1;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            for(i=as;i<=al;i++)
            {
                String ab=request.getParameter("t"+d);
                d++;
                PreparedStatement ps=con.prepareStatement(" select * from studentmarks where suserid=?");
                ps.setInt(1,i);
                ResultSet s2=ps.executeQuery();
                if(s2.next())
                {
                    PreparedStatement ps1=con.prepareStatement("update studentmarks set "+subj+"=? where suserid=?");
                    ps1.setString(1, ab);
                    ps1.setInt(2, i);
                    int r=ps1.executeUpdate();
                    if(r==1)
                    {
                        continue;
                       
                    }
                    else
                    {
                        out.println("error");
                        break;
                    }
                }
                else
                {
                    out.println("error");
                    break;
                }
             
                
            }
              out.println("<script>");
        out.println("alert('Registered Successfully')"); 
        out.println("</script>");
            }
            catch(Exception e)
                    {
                    out.println(e);
                    }
            }
        
        %>
    </body>
</html>
