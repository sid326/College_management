
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inbox</title>
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <link rel="stylesheet" href="menu.css" type="text/css" media="screen">
    </head>
    <body class="new_b">
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
                 <div class="selfmailmain">
                     <table border="1" cellspacing="4" width="100%" height="100%">
                <tr height="10%">
                    <td width="20%">
                        <table border="1" cellspacing="0" width="100%" height="100%">
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <p class="para">  <i><b>Inbox</b></i></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <p class="para">  <i><b>Sent Items</b></i></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <p class="para">  <i><b>Spam</b></i></p>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <p class="para">  <i><b>Compose Mail</b></i></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <p class="para">  <i><b>All Mails</b></i></p>       
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <p class="para">  <i><b>Important Mail</b></i></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <p class="para">  <i><b>Search</b></i></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="100%" height="10px" id="placeblocks">
                                    <p class="para">  <i><b>Online</b></i></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="80%" style="overflow-x: auto;">
                        <jsp:include page="selfinbox.jsp"></jsp:include>
                    </td>
                </tr>
            </table>
                 </div>
        <%
            }
            {%><jsp:include page="footer.jsp"></jsp:include><%}
        %>
    </body>
</html>
