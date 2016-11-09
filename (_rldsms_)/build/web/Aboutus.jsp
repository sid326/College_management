<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>ABOUT US </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
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
                                    <td><h1>ABOUT US</h1>
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
        <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}  
        %>
        <table border="0" cellspacing="0" width="100%" height="480">
            <tr width="100%" height="20">
                <td width="15%"></td>
                <td>
                    
                </td>
                <td width="15%"></td>
            </tr>
            <tr>
                <td></td>
                <td>
            <center>
                    <div id="aboutus">
                        <center>
                        <br><br>
                        <table border="0" cellspacing="0" width="90%" height="360">
                            <tr>
                                <td>
                                    <table border="0" cellspacing="0" width="100%" height="100%">
                                        <tr> 
                                            <td width="33%">
                                                <div class="abhodmain1">
                                        <div class="abhodmain">
                                            <br>
                                            <center>
                                                <div class="abhod"></div>
                                            </center>
                                            
                                    </div>
                                    </div>
                                            
                                    <div class="hod_dis">
                                        <center>
                                            <div id="dis">
                                                <b>Dr. E. Poovammal<br>
                                                Professor & Head<br>
                                                hod.cse@ktr.srmuniv.ac.in<br>
                                                9999999999</b>
                                            </div>
                                        </center> 
                                    </div>
                                            </td>
                                            <td width="33%">
                                    <div class="abhodmain1">
                                        <div class="abhodmain">
                                            <br>
                                            <center>
                                                <div class="abhod"></div>
                                            </center>
                                            
                                    </div>
                                    </div>
                                            
                                    <div class="hod_dis">
                                        <center>
                                            <div id="dis">
                                               <b> Dr. E. Poovammal<br>
                                                Professor & Head<br>
                                                hod.cse@ktr.srmuniv.ac.in<br>
                                                9999999999</b>
                                            </div>
                                        </center> 
                                    </div>
                                            </td>
                                            <td width="33%">
                    <div class="abhodmain1">
                                        <div class="abhodmain">
                                            <br>
                                            <center>
                                                <div class="abme"></div>
                                            </center>
                                            
                                    </div>
                    </div>
                                            
                                    <div class="hod_dis">
                                        <center>
                                            <div id="dis">
                                                <b>  Siddhant Sharma<br>
                                                Student<br>
                                                Siddhants29@gmail.com<br>
                                                7415199664</b>
                                            </div>
                                        </center> 
                                    </div>
                                            </td>
                    
                                    </tr>
                        </table>
                    
                                </td>
                            </tr>
                            
                        </table>
            </center>
                    </div>
            </center>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3">
            <center>
                <a href="index.jsp"><input type="button" value="Goback" id="ta" style="height:30px;margin-top: 1%"></a>
                <a href="student_login.jsp"><input type="button" value="Students" id="ta" style="height:30px"></a>
                <a href="index.jsp"><input type="button" value="Teachers" id="ta" style="height:30px"></a>
            </center>
                </td>
            </tr>
        </table>
        <table border="0" cellspacing="0" width="100%" height="60px">
            <tr height="50px">
                    <td colspan="5" id="footer">
                        
                <center>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
                    </td>
                </tr>
        </table>
    </body>
</html>
