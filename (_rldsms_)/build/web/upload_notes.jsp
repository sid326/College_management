<%-- 
    Document   : upload_notes
    Created on : 10 Jun, 2015, 8:23:23 PM
    Author     : siddhant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="home.css" type="text/css" media="screen">
        <link rel="stylesheet" href="about.css" type="text/css" media="screen">
        <title>Upload</title>
    </head>
    <body>
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
        <div style="height:30px;width:100%"></div>
        <div id="fit">
            <br>
            <form action="upload.jsp" method="post" enctype="multipart/form-data" maxsize="40" >
            <table border="0" cellspacing="2" width="80%" height="450px" id="fittab">
                <tr>
                    <td>
                        <i><b><p class="para"> Teacher's Name:</p></b></i>
                    </td>
                    <td><input type="text" required="" placeholder="ram" name="tname" id="fitbut"></td>
                </tr>
                <tr>
                    <td>
                        <i><b><p class="para"> Subject Name:</p></b></i>
                    </td>
                    <td><input type="text" required="" placeholder="maths" name="sub" id="fitbut"></td>
                </tr>
                <tr>
                    <td>
                        <i><b><p class="para"> Choose File:</p></b></i>
                    </td>
                    <td><input type="file" required="" name="file" id="fitbut" size="50000000"></td>
                </tr>
                <tr>
                    <td colspan="2">
                         <input type="submit" value="File Upload" id="indbut">
                    </td>
                </tr>
            </table>
        </form>
        </div>
    </center>
        <%
            {%><jsp:include page="footer.jsp"></jsp:include><%}  
            }
        %>
    </body>
</html>
