<%-- 
    Document   : tprofile.jsp
    Created on : 15 Jun, 2015, 1:14:23 AM
    Author     : siddhant
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <title>JSP Page</title>
        <style>
            a
            {
                text-decoration: none;
            }
        </style>
    </head>
    <body id="abbody">
        <%
            
try{            
    String name="";
    
            if((session.getAttribute("teach_name")==null)||(session.getAttribute("teach_name" )==""))
            {
               {%><jsp:include page="header.jsp"></jsp:include><%}
               {%><jsp:include page="menu.jsp"></jsp:include><%}
               out.println("<centre><b><i><p class='para'>please login first</p></i></b>");
               
            }
            else
            {
                 {%><jsp:include page="profilehead.jsp"></jsp:include><%}
                 //out.println("welcome");
                
                try
                {
                  
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement(" select * from teacherdetails where name=?");
            //String name="";
            name=(String)session.getAttribute("teach_name");
            ps.setString(1,name);
           //out.println("sid"); 
           ResultSet rs= ps.executeQuery();
           rs.next();
           String reg=rs.getString("tuserid");
            
            %>
        
    <center>
        <div id="place" style="height: 830px">
            <table border="0" cellspacing="4" width="100%" height="750">
                <tr height="826">
                    <td width="20%">
                        <table border="0" cellspacing="0" width="100%" height="826" style="">
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="tprofile.jsp"><i><b><p class="para">Profile</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td  id="placeblocks">
                                    <a href="teach.jsp"><i><b><p class="para">Update details</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">View projects</p></b></i></a>
                                    
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">Update attendance</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td  id="placeblocks">
                                    <a href="updatemarksteach.jsp"><i><b><p class="para">Update Marks</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td  id="placeblocks">
                                    <a href="teachviewmarks.jsp"><i><b><p class="para">View Toppers</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td  id="placeblocks">
                                    <a href="#"><i><b><p class="para">Gallery</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="upload_notes.jsp"><i><b><p class="para">Upload Notes</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">Upload work</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">View Projects</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">Take Online Exam</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">Answer Question</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">View Feedback</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">Class Feedback</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="changepasswordteach.jsp"><i><b><p class="para">Change Password</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">Change Photo</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">Ask Querry</p></b></i></a>
                                </td>
                            </tr>
                            <tr height="30px">
                                <td id="placeblocks">
                                    <a href="#"><i><b><p class="para">Contact Us</p></b></i></a>
                                </td>
                            </tr>
                            
                        </table>
                    </td>
                    
                    <td width="80%">
                        <table border="0" cellspacing="5" width="100%" height="826">
                            <tr height="826">
                                <td width="20%">
                        <table border="0" cellspacing="5" width="100%" height="826">
                            
                            <tr height="250">
                                <td width="100%">
                                    <div style="height:100%;width: 100%; background-size: cover;">
                                        <img src="images/<%= reg%>.jpg" style="height:250px;width: 100%;background-size: cover;" title="profile pic" alt="please insert profile pic with name as your registration number">
                                    </div>
                                </td>
                                
                            </tr>
                            <tr height="10px">
                                <td>
                            <center>
                                <form action="changephoto.jsp" method="post" enctype="multipart/form-data">
                                    <input type="file" name="<%= reg %>.jpg" ><br/><br/>
                                        <input type="submit" value="change pic" style="float:left"></form>
                            </center>
                                </td>
                            </tr>
                            <tr height="200"></tr>
                            <tr height="200"></tr>
                            
                            </table>
                                </td>
                                <td width="80%">
                                    <table border="0" cellspacing="4" width="100%" height="800">
                                        <tr height="800">
                                            <td>
                                    <%
            
           
           PreparedStatement ps1=con.prepareStatement(" select * from teacherdetails where name=? and tuserid=?");
            //String name="";
            name=(String)session.getAttribute("teach_name");
            ps1.setString(1,name);
            ps1.setString(2,reg);
            ResultSet rs1= ps.executeQuery();
           out.println("<table border='2' id='para' style='margin-top:-2%;border-color:blue; background-color:cornsilk;width:100%;height:750px;'>");
           
 
           while(rs1.next())
           {
            out.println("<tr style='font-size:20px; height:50px;'>");
            out.println("<td width='30%'>"+"Name:</td><td>"+rs1.getString("Name")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"gender:</td><td>"+rs1.getString("gender")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"department:</td><td>"+rs1.getString("department")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"dob:</td><td>"+rs1.getString("dob")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"permanent add::</td><td>"+rs1.getString("permanent_add")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Temp add:</td><td>"+rs1.getString("temp_add")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Teacher Mobileno.:</td><td>"+rs1.getString("teacher_mobileno")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Teacher Email:</td><td>"+rs1.getString("teacher_email")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Teacher Qualification:</td><td>"+rs1.getString("qualification")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Date_of_joining:</td><td>"+rs1.getString("date_of_joining")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Area of intrest:</td><td>"+rs1.getString("area_of_intrest")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Total project handling:</td><td>"+rs1.getString("total_project_handling")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Name project handling:</td><td>"+rs1.getString("name_project_handling")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Area of intrest:</td><td>"+rs1.getString("area_of_intrest")+"</td></tr>");
            out.println("<tr style='font-size:20px; height:51px;'><td width='30%'>"+"Total project handling:</td><td>"+rs1.getString("total_project_handling")+"</td></tr>");
            
           }
           out.println("</table></center>");
        }
        catch(Exception e)
        {
            out.println(e);
        }
            }

}catch(Exception e)
{
    out.println(e);
    //out.println(a);
}
            %>
                                            </td>
                                        </tr></table>
                                </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <table border="1" cellspacing="0" width="100%" height="100px"></table>
    </center>
                    <div style="float: left">    
    <%
            {%><jsp:include page="footer.jsp"></jsp:include><%}  
        %>
                    </div>
    </body>
</html>

       
    </body>
</html>
