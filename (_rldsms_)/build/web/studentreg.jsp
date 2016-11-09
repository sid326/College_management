<%-- 
    Document   : studentreg
    Created on : 10 Jun, 2015, 11:55:50 AM
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
        <script type="text/javascript" src="jquery/jquery-2.1.1.min.js"></script>
        <title>STUDENT REGISTRATION</title>
        <script type="text/javascript">
           $(document).ready(function(){
               
               $("input[name=cid]").keyup(function(){
                   $("#msg").html('<img src="">');
                   var val = $("input[name=cid]").val();
                   if(val.length > 0){
                       
                       $.ajax({
                           type:'POST',
                           url:'checkClgId.jsp',
                           data:{id:val},
                           success:function(data){
                               
                             $("#msg").html(data);  
                           }
                           
                       });
                       
                   }
                   
               })
           }) 
        </script>
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
                                    <td><h1>Register</h1>
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
            <form action="reg.jsp" method="post" name="myform">
                <center>
                    <div style="height:30px;width:100%"></div>
                    <div id="reg">
                        <div id="extra"></div>
                        <table border="0" cellspacing="2" width="80%" height="400" id="regtab">
                            
                            <tr height="30" width="80%">
                                <td width="50%" id="tdr">
                                    <i><b><p class="para"> Name:</p></b></i>
                                </td>
                                <td width="50%">
                                    <input type="text" id="ta1" name="name" required="" maxlength="20">
                                </td>
                            </tr>
                            <tr height="30" width="80%">
                                <td width="50%" id="tdr">
                                    <i><b><p class="para">College Name:</p></b></i></td>
                                <td width="50%">
                                    <input type="text" id="ta1" name="cname" required="" maxlength="20">
                                </td>
                            </tr>
                            <tr height="30" width="80%" >
                                <td width="50%" id="tdr">
                                    <i><b><p class="para">College Id:</p></b></i></td>
                                <td width="50%">
                                    <input type="text" id="ta1" name="cid" required="" maxlength="20">
                                    <span id="msg"></span>
                                </td>
                            </tr>
                            <tr height="30" width="80%">
                                <td width="50%" id="tdr">
                                    <i><b><p class="para">Email:</p></b></i></td>
                                <td width="50%">
                                    <input type="email" name="email" id="ta1" required="" maxlength="30">
                                </td>
                            </tr>
                            
                            <tr height="30" width="80%">
                                <td width="50%" id="tdr">
                                    <i><b><p class="para">Password:</p></b></i>
                                </td>
                                <td width="50%">
                                    <input type="password" name="password" id="ta1" required="" maxlength="15">
                                </td>
                            </tr>
                            <tr height="30" width="80%">
                                <td width="50%" id="tdr">
                                    <i><b><p class="para">Mobile No.:</p></b></i>
                                </td>
                                <td width="50%">
                                    <input type="text" name="mobile" id="ta1" required="" maxlength="10">
                                </td>
                            </tr>
                            <tr height="30" width="80%">
                                <td width="50%" id="tdr">
                                    <i><b><p class="para">Gender:</p></b></i>
                                </td>
                                <td width="50%">
                                    <b>Male<input type="radio" name="gen" value="male" id="ta1" required="" maxlength="6"></b>
                                    <b>Female<input type="radio" name="gen" value="female" id="ta1" required="" maxlength="6"></b>
                                </td>
                            </tr>
                            <tr height="30" width="80%" >
                                <td width="50%" id="tdr">
                                    <i><b><p class="para">Dept:</p></b></i>
                                </td>
                                <td width="50%">
                                    <input type="text" name="dept" id="ta1" required="" maxlength="10">
                                </td>
                            </tr>
                            <tr height="30" width="80%" >
                                <td width="50%" id="tdr">
                                    <i><b><p class="para">Year:</p></b></i>
                                </td>
                                <td width="50%">
                                    <select required="" name="year" id="ta1">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                                    </select>
                                </td>
                            </tr>
                            
                            <tr height="80px">
                                <td colspan="2" width="100%">
                            <center>
                         <table border="0"cellspacing="0">
                        <tr>
                            <td><div id="regl"></div>
                            </td>
                            <td><input type="submit" id="regbut" value="Register"  ></td>
                            <td><div id="regr"></div>
                            </td>
                            
                        </tr>                        
                        </table> 
                                </center>
                        </td>
                            </tr>
                        </table>
                        
                    </div>
                </center>
            </form>
            <div style="height:30px;width:100%"></div>
            <div id="footer">
                <br> 
                <center>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
            </div>
    </body>
</html>
