<%-- 
    Document   : attlayout
    Created on : 17 Jun, 2015, 12:59:29 PM
    Author     : siddhant
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Marks</title>
    </head>
    <body id="abbody">
         <%
            
            String name="";
    
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
        <div id="marginspacetop" style="margin-top: 60px">
            
        </div>
    <center>
        <div id="fit">
            <form action="teachupdateattendance.jsp" method="post">
            <table border="0" cellspacing="5" width="80%" height="480" style="text-align: center">
                <tr height="50px">
                    <td width="50%">
                                    <b><i><p class="para">Select Section:</p></i></b>
                    </td>
                    <td width="50%">
                        <select name="section" id="teachin" >
                            <option>none</option>
                            <option>Cse-a</option>
                            <option>Cse-b</option>
                            <option>Cse-c</option>
                            <option>Cse-d</option>
                            <option>Cse-e</option>
                            <option>Cse-f</option>
                            <option>Cse-g</option>
                            <option>Cse-h</option>
                            <option>Cse-i</option>
                            <option>Cse-j</option>
                            <option>Cse-k</option>
                            <option>Cse-l</option>
                            <option>Cse-m</option>
                        </select>
                    </td>
                </tr>
                <tr height="50">
                    <td width="50%">
                        <b><i><p class="para">Enter Subject:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" id="teachin" name="sub" placeholder="COA" maxlength="15" required="" style="text-align: center">
                    </td>
                </tr>
                <tr height="50">
                    <td width="50%">
                        <b><i><p class="para">Enter Staring Registration no.:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" id="teachin" name="srn" placeholder="1031310418" maxlength="15" required="" style="text-align: center">
                    </td>
                </tr>
                <tr height="50">
                    <td width="50%">
                        <b><i><p class="para">Enter Last Registration no.:</p></i></b>
                    </td>
                    <td width="50%">
                        <input type="text" id="teachin" name="lrn" placeholder="1031310418" maxlength="15" required="" style="text-align: center">
                    </td>
                </tr>
                <tr height="100" >
                    <td colspan="2">
                <center>
                    <input type="submit" id="indbut">
                </center>
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </center>
         <%
            }
            
            {%><jsp:include page="footer.jsp"></jsp:include><%}
        %>
    </body>
</html>

