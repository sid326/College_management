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
                
        %>
    <center>
        <form action="teachenterdetail.jsp" method="post" >
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
                        <b><i><p class="para" style="text-align: center">Registration Id:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" name="tuserid" required="" placeholder="1031310418" id="teachin">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Password:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="password" required="required"  name="tpass" placeholder="123456" id="teachin" minlength="8" maxlength="15">
                    </td>
                </tr>
                <tr width="100%" height="50px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Permanent address</p></i></b>
                    </td>
                    <td width="50%">
                        <table border="0" cellspacing="5" width="100%" height="50px">
                            <tr height="25px">
                                <td width="100%">
                                    <textarea id="teachin" placeholder=" only house number and street add" name="tpadd" style="height: 60px;border-radius: 0%; width: 300px;"></textarea>
                                </td>
                            </tr>
                            <tr height="12.5px">
                                <td width="100%">
                                    <table width="100%" border="0" cellspacing="5" height="12.5">
                                        <tr height="12.5">
                                            <td width="50%">
                                                <b><i><p class="para">State</p></i></b>
                                            </td>
                                            <td width="50%">
                                    <select id="teachin" name="tpstate">
                                        <option>MP</option>
                                        <option>HP</option>
                                        <option>AP</option>
                                        <option>UP</option>
                                        <option>AP</option>
                                        <option>MP</option>
                                    </select>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr height="12.5px">
                                <td width="100%">
                                    <table width="100%" border="0" cellspacing="10" height="12.5">
                                        <tr height="12.5">
                                            <td width="50%">
                                                <b><i><p class="para">Pin:</p></i></b>
                                            </td>
                                            <td width="50%">
                                                <input type="text" name="tppin" id="teachin" required="" maxlength="6" minlength="6">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr width="100%" height="50px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Current address</p></i></b>
                    </td>
                    <td width="50%">
                        <table border="0" cellspacing="10" width="100%" height="50px">
                            <tr height="25px">
                                <td width="100%">
                                    <textarea id="teachin" placeholder="only house number and street add" name="tcadd" style="height: 60px;border-radius: 0%;width: 300px"></textarea>
                                </td>
                            </tr>
                            <tr height="12.5px">
                                <td width="100%">
                                    <table width="100%" border="0" cellspacing="0" height="12.5">
                                        <tr height="12.5">
                                            <td width="50%">
                                                <b><i><p class="para">State</p></i></b>
                                            </td>
                                            <td width="50%">
                                    <select id="teachin" name="tcstate">
                                        <option>MP</option>
                                        <option>HP</option>
                                        <option>AP</option>
                                        <option>UP</option>
                                        <option>AP</option>
                                        <option>MP</option>
                                    </select>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr height="12.5px">
                                <td width="100%">
                                    <table width="100%" border="0" cellspacing="0" height="12.5">
                                        <tr height="12.5">
                                            <td width="50%">
                                                <b><i><p class="para">Pin:</p></i></b>
                                            </td>
                                            <td width="50%">
                                                <input type="text" name="tcpin" id="teachin" required="" maxlength="6" minlength="6">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Mobile Number:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" id="teachin" required="" maxlength="10" minlength="10" name="tmob">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Email:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="email" required="" name="temail" id="teachin">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Qualification:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" required="" name="tquel" id="teachin">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Date Of Joining:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="date" name="tdoj" required="required" id="teachin">
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Area Of Interest:</p></i></b>
                    </td>
                    <td width="50%">
                        <textarea id="teachin" name="tarea" style="height: 60px;border-radius: 0%; width: 300px"></textarea>
                    </td>
                </tr>
                <tr width="100%" height="25px">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Total No. Of Projects Handling:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" name="tprono" id="teachin"placeholder="4">
                    </td>
                </tr>
                <tr width="100%" height="25">
                    <td width="50%">
                        <b><i><p class="para" style="text-align: center">Name Of Project Handling:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" name="tproh" id="teachin" placeholder="Web Development">
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
        <%
            } %>
        <div colspan="5" id="footer">
            <br> 
                <center>
                    @CSE DEPARTMENT SRM UNIVERSITY
                </center>
        </div>
    </center>
    </body>
</html>
