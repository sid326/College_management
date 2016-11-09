<%-- 
    Document   : teacher_loginveri
    Created on : 12 Jun, 2015, 12:11:57 PM
    Author     : siddhant
--%>


<%@page import="java.util.Base64"%>
<%@page import="sun.misc.BASE64Decoder"%>
<%@page import="sun.misc.BASE64Encoder"%>
<%@page import="java.security.MessageDigest"%>
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
               
         
                response.setContentType("text/html;charset=UTF-8");
                String a= request.getParameter("teach_user");
                int s= Integer.parseInt(a);
                String b=request.getParameter("teach_pass");
                String abc="";
                int d=0;
               // int d=0;
    //out.println("sid");    
       
        try
        {
      //      config c=new config();
    //Connection con=c.getcon();
   MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.update(b.getBytes(),0,b.getBytes().length);
            byte[] tpass = md5.digest(b.getBytes());
            String ab = new BASE64Encoder().encode(tpass);
    //out.println("sid");
   //String ab = new BASE64Encoder().encode(olpass);
   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
        PreparedStatement ps1=con.prepareStatement("select * from teacherdetails where tuserid=? and tpassword=?");   
        ps1.setInt(1, s);
        ps1.setString(2, ab);
        ResultSet s2=ps1.executeQuery();
        //out.println(ps1);
        if( s2.next())
        {
            
            if((s2.getInt("tuserid")==s)&& ((s2.getString("tpassword")).equals(ab)))
            {
                PreparedStatement ps=con.prepareStatement("select * from teacherdetails where tuserid=?");
                ps.setInt(1, s);
                ResultSet s1=ps.executeQuery();
                s1.next();
                
                session=request.getSession();
                session.setAttribute("teach_name",s1.getString("name"));
                out.println("<input type='hidden' name='Id' value='"+s+"'>");
                response.sendRedirect("tprofile.jsp");
                //String id=session.getId();
                
                //request.getRequestDispatcher("tprofile.jsp").forward(request, response);
            }
        }
        else
        {
            out.println("<script>");
            out.println("alert('Worng Id or Password')");
            out.println("</script>");
            request.getRequestDispatcher("teacherlogin.jsp").include(request, response); 
            d++;
           
        }
        }
        catch(Exception e){
            out.println(e);
        }
            }
        %>
    </body>
</html>
