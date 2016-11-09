<%-- 
    Document   : teach
    Created on : 12 Jun, 2015, 6:22:08 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen">
        <title>Teacher's Details</title>
    </head>
    <body id="abbody">
        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}  
        %>
        <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}  
        %>
        
    <center>
        <form action="tregdb.jsp" method="post">
        <div class="marginspacetop">
            
        </div>
        
            <table border='1' cellspacing='10' width='80%' height='800px' id="tabdetailst">
                
                    <tr height="30px">
                        <td width="50%">
                            <b><i><p class="para">Name:</p></i></b>
                        </td>
                        <td width="50%">
                            <input type="text" name="tname" placeholder="ram" required="" id="teachin">
                        </td>
                    </tr>
                    <tr width="100%" height="50px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Gender:</p></i></b>
                    </td>
                    <td width="50%">
                        <table border="0" cellspacing="5" width="100%" height="50px">
                            <tr height="25px">
                                <td width="50%">
                                    <b><i><p class="para">Male:</p></i></b>
                                </td>
                                <td width="50%">
                                    <input type="radio" name="tgen" required="" value="male" id="teachin">
                                </td>
                            </tr>
                            <tr height="25px">
                                <td width="50%">
                                    <b><i><p class="para">Female:</p></i></b>
                                </td>
                                <td width="50%">
                                    <input type="radio" name="tgen" required="" value="female" id="teachin">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr width="100%" height="25px">
                        <td width="50%">
                            <b><i><p class="para" style="text-align: center">Department:</p></i></b>
                        </td>
                        <td width="50%">
                            <input type="text" name="tdept" required="" placeholder="cse" id="teachin">
                        </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">DOB:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="date" name="tdob" required="" id="teachin">
                    </td>
                </tr>
                
               
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Mobile Number:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" id="teachin" required="" maxlength="10" minlength="10" name="tmob" placeholder="9090909090">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Email:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="email" placeholder="abc@hgf.com" required="" name="temail" id="teachin">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Special:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" name="special" id="teachin" placeholder=" digital" required="">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Subject Known:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" name="tsub" id="teachin" placeholder=" digital" required="" maxlength="100">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Qualification:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" name="qualification" id="teachin" placeholder="Mtech" required="">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Experience(in years):</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" name="exp" id="teachin" placeholder="5" required="" maxlength="2">
                    </td>
                </tr>
                <tr height="25px" style=" visibility: hidden;">
                    <td colspan="2">
                        
                    </td>
                </tr>
                <tr height="30px">
                    <td colspan="2">
                <center>
                    <input type="submit" value="Update" id="indbut" style="margin-left: -1%;position: relative;z-index: 99999;border: 10px #034676 double;">
                </center>
                    </td>
                </tr>
                <tr height="30px" style=" visibility: hidden;">
                    <td colspan="2">
                        
                    </td>
                </tr>
            </table>
        </form>
        <div colspan="5" id="footer" style=" visibility: hidden;" >
            
        </div>
        <div colspan="5" id="footer">
            <br> 
                <center>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
        </div>
    </center>
    </body>
</html>
