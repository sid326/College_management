<%-- 
    Document   : changepasswordteach.jsp
    Created on : 10 Jun, 2015, 11:35:18 AM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
String name = (String)session.getAttribute("teach_name");
if(name==null)
    {
response.sendRedirect("teacherlogin.jsp");
}
else
    {
%>


<html>
<head>

    <style>

    #latest_query_top
{
	width:100%;
	height:100%;
	margin-top:-10px;
	-moz-border-radius:15px;
	-webkit-border-radius:15px;
}
    </style>
    <script>
    function chngvalidate()
{
var o=document.getElementById("olpass").value;
var n=document.getElementById("newpass").value;
var c=document.getElementById("conpass").value;

if(o=="")
{
document.getElementById("error1").innerHTML="Enter Old Password";
document.chngpass.olpass.focus();
return false;
}
if(n=="")
{
document.getElementById("error2").innerHTML="Enter New Password";
document.chngpass.newpass.focus();
return false;
}

if(n.length < 5)
{
alert(" Your Password must be greater then 5 digit");
document.chngpass.newpass.select();
return false;
}
if(c=="")
{
document.getElementById("error3").innerHTML="Enter Confirm Password";
document.chngpass.conpass.focus();
return false;
}
if(n!=c)
{
alert("please Enter the Confirm Password same as password");
document.chngpass.conpass.focus();
return false;
}
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

    <body>

<table height="400px" align="center" width="500px" style="border:2px solid #0000FF; -moz-box-shadow:0px 0px 8px;-webkit-box-shadow: 0px 0px 8px ; -webkit-border-radius: 10px; -moz-border-radius: 10px;border-radius: 10px; margin-top:60px"  bgcolor="#CCCCCC">
<form method="post" action="changepassdb.jsp" name="chngpass" >
    <tr height="40px">
                    
                     <td align="left"><font size="5px"><b>Change Password</b></font></td>



				  </tr>

    				<tr>
                                    <td colspan="2" style="margin-left:40px" height="18px">

                                            <div id="latest_query_top" style="background:url(Images/vedioback4.jpg);">
                                                <span style="color:#FFFFFF"><h4 style="margin-bottom:-1px"><center></center></h4></span>
                 	</div>
                                            </td>
</tr>
<tr >
    <td align="center" width="200"><label><b>Old Password :</b></label>
</td>
<td align="left"><input type="password" placeholder="Enter Old Password" id="olpass" name="olpass"/><br />
<label id="error1"  style="color:#F00"></label>
</td>
</tr>
<tr >
    <td align="center"><label><b>New Password :</b></label></td>
<td align="left"><input type="password" placeholder="Enter New Password" id="newpass" name="newpass"/><br />
<label id="error2"  style="color:#F00"></label>
</td>
</tr>
<tr >
<td align="center"><label><b>Confirm Password :</b></label></td>
<td align="left"><input type="password" placeholder=" Confirm Password" id="conpass" name="conpass" /><br />
<label id="erro3"  style="color:#F00"></label>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="submit" id="submit"  style="width:70px;height:25px;background:#069;color:#FFF;-moz-border-radius:10px;-webkit-border-radius:10px;-moz-box-shadow:2px 2px 10px;border:none;font:bold 12px Verdana;cursor:pointer" onclick="return chngvalidate()"/></td>
</tr>
</form>
</table>

</body>
</html>
<% } %>

