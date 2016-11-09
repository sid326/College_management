<%-- 
    Document   : chnagepassadb
    Created on : 16 Jun, 2015, 12:38:14 PM
    Author     : siddhant
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"  import=" sun.misc.*,java.security.*, java.sql.*"%>

<%
try
  {
    String name = (String)session.getAttribute("teach_name");
    String opass=request.getParameter("olpass");
    String nwpas=request.getParameter("newpass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    MessageDigest md5 = MessageDigest.getInstance("MD5");
    md5.update(opass.getBytes(),0,opass.getBytes().length);
    byte[] olpass = md5.digest(opass.getBytes());
    String ab = new BASE64Encoder().encode(olpass);
    md5.update(nwpas.getBytes(),0,nwpas.getBytes().length);
    byte[] newp = md5.digest(nwpas.getBytes());
    out.println("passdigest"+newp);
    String newab = new BASE64Encoder().encode(newp);
    PreparedStatement ps1=con.prepareStatement(" select * from teacherdetails where name=? and tpassword=?");
        ps1.setString(1,name);
        ps1.setString(2,ab);
        ResultSet s2=ps1.executeQuery();
        

if(s2.next())
    {
   
        PreparedStatement ps2=con.prepareStatement("update teacherdetails set tpassword=? where name=? and  tpassword=?");
        ps2.setString(1,newab);
        ps2.setString(2,name);
        ps2.setString(3,ab);
       int i=ps2.executeUpdate();
        if(i==1)
        {
          out.println("Updated Successfully");
          response.sendRedirect("tprofile.jsp");
          
        }
       else
       {
       out.println("Error While Updating!!");
       }
    }
    else
    {
      out.println("Wrong Old Password!!");
    }

   }
   catch(Exception e)
        {
          out.println(e);
        }

%>
