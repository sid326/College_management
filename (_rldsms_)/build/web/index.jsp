<%-- 
    Document   : index
    Created on : 4 Jun, 2015, 2:56:44 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>SRM COMPUTER SCIENCE DEPARTMENT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <script type="text/javascript" src="jquery/jquery-2.1.1.min.js"></script>
        <link href="themes/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/js-image-slider.js" type="text/javascript"></script>
    <link href="themes/tooltip.css" rel="stylesheet" type="text/css" />
    <script src="themes/tooltip.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        imageSlider.thumbnailPreview(function (thumbIndex) { return "<img src='images/thumb" + (thumbIndex + 1) + ".jpg' style='width:100px;height:60px;' />"; });
    </script>
        <style>
            #loginon
            {
                position:absolute;
                height:850px;
                width:100%;
                top:0px;
                left:0px;
                background:#000;
                opacity:0.9;
                z-index:10000;
                display:none
            }
            #loginonon
            {
                position:absolute;
                height:40%;
                width:40%;
                top:30%;
                left:30%;
                background:#fff;
                box-shadow:2px 3px 7px #aaa;
                z-index:50000;
                display:none
            }
        </style>
		
        <script type="text/javascript">
   $(document).ready(function(){
     $("#login").click(function(){
       $("#loginon").show();
	 $("#loginonon").slideDown();
   });
   
    $("#loginon").click(function(){
	 $("#loginonon").slideUp();
     $("#loginon").hide();
   });});
        </script>
    </head>
    <body id="abbody">
        <div class="se-pre-con" style="display: none;"></div>
        <div class="main">
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
                                    <td><h1>Welcome To World Of Computers</h1>
                                        <a href="javascript:void(0)" id="login">Login</a>
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
            
            <table border="0" cellspacing="0" width="100%" height="800px">
                <tr height=".3%">
                    <td width="20%"></td>
                    <td width="20%"></td>
                <a href="student_login.jsp"></a>
                    <td width="20%"></td>
                    <td width="20%"></td>
                    <td width="20%"></td>
                </tr>
               
                <tr height="5%">
                   <%
            {%><jsp:include page="menu.jsp"></jsp:include><%}  
        %>
                </tr>
                <tr height="280px">
                    <td colspan="5" height="280px">
                        <div class="div1" style="background-size: cover;">
       
    </div>
                        <div id="sliderFrame" style=" background-size: cover;">
        <div id="slider" style=" background-size: cover; width: 600px;left: 30%">
            <a href="#">
                <img src="images/s1.jpg" alt="#cap1" style=" background-size: cover;width: 100%;" />
            </a>
            <img src="images/s2.jpg" alt="Lorem ipsum dolor sit amet" style=" background-size: cover;width: 100%;"/>
            <img src="images/s3.jpg" alt="Pure Javascript. No jQuery. No flash." style=" background-size: cover;width: 100%;"/>
            <img src="images/s6.jpg" alt="#cap2" style=" background-size: cover;"/>
            <img src="images/s7.jpg" alt="Excepteur sint occaecat cupidatat" style=" background-size: cover;"/>
            <img src="images/s8.jpg" alt="Excepteur sint occaecat cupidatat" style=" background-size: cover;"/>
        </div>
        <div style="display: none;background-size: cover;">
            
            <div id="cap1">
                Welcome to <a href="http://www.menucool.com/">Menucool.com</a>.
            </div>
            <div id="cap2">
                <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
            </div>
            
        </div>
    </div>
    <div class="div2">
        
    </div>
                </td>
                </tr>
                <tr width="100%" height="40%">
                    <td  colspan="2">
                        <div id="notice">
                            <center><h1>NOTICE BOARD</h1></center>
                            <marquee direction="down" height="80%">
                                <center>
        <%
            
            {%><jsp:include page="anouncement.jsp"></jsp:include><%}
        %>
                                </center>               </marquee>
                        </div>
                    </td>
                    <td  colspan="3">
                        <table border="1" width="100%" cellspacing="0" height="100%">
                            <tr>
                                <td width="30%">
                            <center>
                                    <img src="images/SLO.png" height="250px" id="logosrm">
                            </center>
                                </td>
                                
                                <td width="40%">
                            <marquee direction="down" width="100%" height="100%">
                                achievements
                            </marquee>
                                </td>
                                <td width="5%">
                                    <div class="sidebar">
                                        <br><br>
                                        <img src="images/f.jpg" id="share" style="float: right;">
                                        <img src="images/y.jpg" id="share" style="float: right;">
                                        <img src="images/t.jpg" id="share" style="float: right;">
                                        <img src="images/g.jpg" id="share" style="float: right;">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr height="20%">
                    <td colspan="3">
                        <table border="0" width="100%" height="100%" cellspacing="0">
                            <tr>
                                <td width="25%" id="u1">nptel</td>
                                <td width="25%" id="u2">edx</td>
                                <td width="25%" id="u3">course-era</td>
                                <td width="25%" id="u4">javatpoint</td>
                            </tr>
                        </table>
                    </td>
                    <td colspan="2">
                        <a href="studentreg.jsp"><input type="button" value="Register" id="indexbut"></a>
                        <a href="student_login.jsp"><input type="button" value="Login" id="indexbut"></a>
                    </td>
                </tr>
                <tr height="50px">
                    <td colspan="5" id="footer">
                        
                <center>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
                    </td>
                </tr>
            </table>
        </div> 
           
                                <div id="loginon"></div>
                                <div id="loginonon">siddhant</div>
    </body>
</html>
