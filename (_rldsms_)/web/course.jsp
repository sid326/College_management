<%-- 
    Document   : course
    Created on : 8 Jun, 2015, 11:52:33 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        
        <title>COURSES</title>
    </head>
    <body id="abbody">
        <div id="header">
                <table border="0" cellspacing="0" width="100%" height="100%">
                    <tr>
                        <td widht="10%">
                            <img src="images/srm.jpg" width="70%" height="75px" top="0">
                        </td>
                        <td width="80%">
                            <table border="0" cellspacing="0" width="100%" height="100%">
                                <tr> 
                                    <td width="40%">
                                        <form action="search.jsp" method="">
                                Search:<input type="search" id="searchbox" name="t1">
                                <input type="submit" id="searchbutton" value="SEARCH"></form>
                                    
                                    </td>
                                    <td><h1>COURSES</h1>
                                    </td>
                                </tr>
                            </table>
                            </td>
                        <td width="10%">
                            <img src="images/logo_cse.jpg" width="70%" height="75px" style="float:right">
                        </td>
                    </tr>
                </table>
            </div>
        <div style="width:100%;height:5px;background-color: #DE1B1B;z-index: 3"></div>
        <table border="0" cllspacing="0" width="100%" height="15px">
            <tr width="100%">

            <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}  
        %>
                
            </tr>
        </table>
    <center>
        <table border="0" cellspacing="0" width="80%" height="500" id="tab">
            <tr height="500">
                <td width="50%" height="500">
                    <div id="course_out" height="500">
                        <table border="0" cellspacing="0" width="100%" height="100%">
                            <tr heigth="30px">
                                <td width="70%">
                            <center> 
                                <p class="pheading">  outside courses</p>
                            </center>
                                </td>
                                <td width="30%">
                                    <img src="images/arrowl.jpg" id="arrow" style="width:100px;heigth:50px;float: right;">
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="400" colspan="2">
                            <center>
                                <table border="0" celspacing="2" height="400" id="tab1">
                                    <tr height="30px">
                                        <td width="50%"><img src="images/era.png" height="50px" width="80px"></td>
                                        <td width="50%">Course-era</td>
                                    </tr>
                                    <tr height="30px">
                                        <td width="50%"><img src="images/edx.jpg" height="50px" width="80px"></td>
                                        <td width="50%">Edx</td>
                                    </tr>
                                    <tr height="30px">
                                        <td width="50%"><img src="images/w3.ico" height="50px" width="80px"></td>
                                        <td width="50%">W3-School</td>
                                    </tr>
                                    <tr height="30px">
                                        <td width="50%"><a href="//www.javatpoint.com" style="text-decoration:none;"><span style="color:orange;font-size:28px;font-weight:bold;">Java</span><span style="color:#666600;font-size:40px;font-weight:bold;">T</span><span style="color:red;font-size:28px;font-weight:bold;">point</span></a></td>
                                        <td width="50%">JavaTpoint</td>
                                    </tr>
                                    <tr height="30px">
                                        <td width="50%"><a  href=""><img src="images/tut.png" height="50px" width="80px"></a></td>
                                        <td width="50%">Tutorial-point</td>
                                    </tr>
                                    
                                </table>
                            </center>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td width="50%">
                    <div id="course_in">
                        <table border="0" cellspacing="0" width="100%" height="100%">
                            <tr heigth="30px">
                                <td width="30%">
                                    <img src="images/arrowr.jpg" id="arrow" style="width:100px;heigth:50px;float: left;">
                                </td>
                                <td width="70%">
                                    <center> 
                                        <p class="pheading" style="color: white;">  college courses</p>
                            </center>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="400" colspan="2"></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </center>
        <div id="footer">
                        
            <center><br>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
        </div>
    </body>
</html>
