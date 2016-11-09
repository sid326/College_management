<%-- 
    Document   : selfmailing
    Created on : 30 Jun, 2015, 7:05:48 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WELCOME TO MAILING SYSTEM</title>
         <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <link rel="stylesheet" href="login.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen">
        <script type="text/javascript" src="jquery/jquery-2.1.1.min.js"></script>
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
                 %>
                 <div class="marginspacetop">
                     <center><p class="para"><b><i>COMPOSE MAIL</i></b></p></center>
                 </div>
    <center>
        <form action="selfmailtodb.jsp" method="post" enctype="multipart/form-data">
            <div class="mid">
            <table border="4" cellspacing="5" width="70%" height="400">
                <tr height="10">
                    <td>
                <center>
                    send mail
                </center>
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        <table border="4" cellspacing="5" width="100%" height="350">
                            <tr height="30">
                                <td width="20%" height="30">To:</td>
                                <td width="80%" height="30">
                                    <input type="email" name="mailto" placeholder="abc@srm.com" required="" class="temailb" style=" width:96%">
                                </td>
                            </tr>
                            <tr height="30">
                                <td width="20%" height="30">Subject:</td>
                                <td width="80%" height="30">
                                    <input type="text" name="sub" placeholder="subject" required="" class="temailb" style=" width:96%">
                                </td>
                            </tr>
                            <tr height="201">
                                <td width="20%" height="201">Message:</td>
                                <td width="80%" height="201">
                                    <textarea  name="msg" style="width: 96%;height: 200px;"></textarea>
                                </td>
                            </tr>
                            <tr height="30">
                                <td colspan="2">
                                    <input type="file">
                                    <input type="file" >
                                    <input type="file" >
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                            <center>
                                <input type="submit" value="Send" style=" width:250px; height:20px">
                            </center>
                                </td>
                            </tr>
                    
                
            </table>
                    </td>
                </tr>
            </table>
                 </div>
        </form>
    </center>
                 <%
            }
        {%><jsp:include page="footer.jsp"></jsp:include><%}
        %>
        
    </body>
</html>
