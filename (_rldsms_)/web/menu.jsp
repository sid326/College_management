<%-- 
    Document   : menu.jsp
    Created on : 10 Jun, 2015, 4:35:57 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <title>JSP Page</title>
    </head>
    <body id="abbody">
        <ul>
        <li>
<a href="index.jsp">Home</a>
<ul>
    <a href="//evarsity.srmuniv.ac.in/srmswi/usermanager/home.jsp">EVARSITY</a>
    <a href="//www.srmunvi.ac.in">SRM University</a>
    <a href="#">FEEKART</a>
</ul>
</li>
   <li>
<a href="#">STUDENT</a>
<ul>
    <a href="student_login.jsp">Login</a>
    <a href="course.jsp">Courses</a>
    <a href="#">Groups</a>
    <a href="studentreg.jsp">Registration</a>
    <a href="download_notes.jsp">Download</a>
</ul>
</li>
        <li><a href="#">Teachers</a>
<ul>
                <a href="student_login.jsp">Login</a>
                <a href="upload_notes.jsp">Upload</a>
                <a href="#">Projects</a>
</ul>
</li>
        
<li>
        <a href="Aboutus.jsp">Contact Us</a>
<ul>

                <a href="Aboutus.jsp">HOD</a>
                <a href="Aboutus.jsp">Year Co-ordinator</a>
                <a href="Aboutus.jsp">Developers</a>
            </ul>
</li>
<li>
            <a href="placement.jsp">Placements</a>
            
        </li>
    </ul>
        
    </body>
</html>
