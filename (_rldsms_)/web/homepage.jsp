<%-- 
    Document   : homepage.jsp
    Created on : 1 Sep, 2015, 10:41:23 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SRM COMPUTER SCIENCE DEPARTMENT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <script type="text/javascript" src="jquery/jquery-2.1.1.min.js"></script>
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
       
    </body>
</html>
