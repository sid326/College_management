<%--
    Document   : searchevent
    Created on : Sep 7, 2013, 12:13:09 PM
    Author     : hp 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
         <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen">
        <style>

              #latest_query_top
{
	width:100%;
	height:50%;
	margin-top:-10px;
	-moz-border-radius:15px;
	-webkit-border-radius:15px;
}

.searchusersfield .searchbutton {
	color: #fff;
	border: solid 1px #494949;
	font-size: 11px;
	height: 25px;
	width: 25px;
	text-shadow: 0 1px 1px rgba(0,0,0,.6);
	margin-left:5px;
	cursor:pointer;

	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;

	background: #5f5f5f;
	background: -webkit-gradient(linear, left top, left bottom, from(0), to(#454545));
	background: -moz-linear-gradient(top,  #9e9e9e,  #454545);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#9e9e9e', endColorstr='#454545'); /* ie7 */
	-ms-filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#9e9e9e', endColorstr='#454545'); /* ie8 */
}

        </style>


    </head>


    <body id="abbody">

        <%
            {%><jsp:include page="header.jsp"></jsp:include><%}
        %>
        <table border="1" cellspacing="5" width="100%" height="500">
            <tr>
            <td width="20%"></td>
            <td width="70%">
        <form method="post" action="forgotmail.jsp">
        <table height=300px" align="center" width="400px"  style="border:2px solid #0000FF;-moz-box-shadow:0px 0px 8px;-webkit-box-shadow: 0px 0px 8px ; -webkit-border-radius: 10px; -moz-border-radius: 10px;border-radius: 10px; margin-top:60px"  id="fit" style="">

             <tr height="40px">
                 <td colspan=2" align="right" style=" padding-left: 70px">

                    

                 </td>

                 <td colspan="2" align="center" style=" padding-right:21%"><font size="5px" color="silver"><b>Forgot Password</b></font></td>



				  </tr>


                                  <tr height="30px">
                                            <td colspan="4" style="margin_left:40px">

                                            
                                                <span style="color:#FFFFFF"><h2 style="margin-bottom:-1px"><center></center></h2></span>
                 	
                                            </td>
</tr>
<tr>
    <td colspan="4"><b><i><p class="para" style="text-align: center">Enter Your Email Here</p></i></b>


    </td>

</tr>

<tr height="130px">

    <td colspan="4" align="center" style="">

        <input type="email" align="center" placeholder="Enter Email" name="email" >
        <input type="submit" value="Enter" />
    </td>
</tr>


         </table>
        </form>
            </td>
            <td width="10%"></td>
            </tr>
        </table>
    </body>

</html>
