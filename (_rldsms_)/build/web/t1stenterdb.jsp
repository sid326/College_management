<%-- 
    Document   : t1stenterdb
    Created on : 22 Jun, 2015, 12:03:48 AM
    Author     : siddhant
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
               
               
         
                response.setContentType("text/html;charset=UTF-8");
                String a= request.getParameter("teach_user");
                //int s= Integer.parseInt(a);
                String b=request.getParameter("teach_pass");
                String e=request.getParameter("veri");
                String abc="";
                int d=0;
               // int d=0;
        
       
        try
        {
     
   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
        PreparedStatement ps1=con.prepareStatement("select * from teacherreg where temail=? and dob=? and verification=?");   
        ps1.setString(1, a);
        ps1.setString(2, b);
        ps1.setString(3, e);
        ResultSet s2=ps1.executeQuery();
        //out.println(ps1);
        if( s2.next())
        {
            out.println(s2.getString("temail"));
            out.println(a);
            out.println(s2.getString("dob"));
            out.println(b);
            if(((s2.getString("temail")).equals(a))&& ((s2.getString("dob")).equals(b)))
            {
                out.println(ps1);
                PreparedStatement ps=con.prepareStatement("select * from teacherreg where temail=?");
                ps.setString(1, a);
                ResultSet s1=ps.executeQuery();
                out.println(ps);
                s1.next();
                
                session=request.getSession();
                session.setAttribute("teach_name",s1.getString("name"));
                response.sendRedirect("teach.jsp");
                //String id=session.getId();
                
                //request.getRequestDispatcher("tprofile.jsp").forward(request, response);
            }
        }
        else
        {
            out.println("<script>");
            out.println("alert('Worng Id or Password or verification code')");
            out.println("</script>");
            
            request.getRequestDispatcher("teach1stlogin.jsp").forward(request, response); 
            d++;
            
        }
        //response.sendRedirect("teach1stlogin.jsp");
        }
        catch(Exception e1){
            out.println(e1);
        }
            }
        %>
    </body>
</html>
