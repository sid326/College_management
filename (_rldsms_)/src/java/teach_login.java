/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sun.misc.BASE64Encoder;

/**
 *
 * @author siddhant
 */
public class teach_login extends HttpServlet {
int d=0;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet teach_login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet teach_login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
                String a= request.getParameter("teach_user");
                int s= Integer.parseInt(a);
                String b=request.getParameter("teach_pass");
                
               // int d=0;
        
       
        try
        {
      //      config c=new config();
    //Connection con=c.getcon();
    MessageDigest md5 = MessageDigest.getInstance("MD5");
    md5.update(b.getBytes(),0,b.getBytes().length);
    byte[] olpass = md5.digest(b.getBytes());
  //out.print("passdigest"+olpass);
   String ab = new BASE64Encoder().encode(olpass);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
        PreparedStatement ps1=con.prepareStatement("select * from teacherdetails where tuserid=? and tpassword=?");   
        ps1.setInt(1, s);
        ps1.setString(2, ab);
        ResultSet s2=ps1.executeQuery();
        if( s2.next())
        {
        
            if((s2.getInt("tuserid")==s)&& ((s2.getString("tpassword")).equals(b)))
            {
                PreparedStatement ps=con.prepareStatement("select * from teacherdetails where tuserid=?");
                ps.setInt(1, s);
                ResultSet s1=ps.executeQuery();
                s1.next();
                HttpSession session=request.getSession();
                session=request.getSession();
                session.setAttribute("teach_name",s1.getString("name"));
                out.println("<input type='hidden' name='Id' value='"+s+"'>");
                response.sendRedirect("tprofile.jsp");
                //String id=session.getId();
                
                //request.getRequestDispatcher("tprofile.jsp").forward(request, response);
            }
        }
        else
        {
            out.println("<script>");
            out.println("alert('Worng Id or Password')");
            out.println("</script>");
            request.getRequestDispatcher("teacherlogin.jsp").include(request, response); 
            d++;
            if(d>3)
            {
                out.println("<script>");
            out.println("alert('you are block')");
            out.println("</script>");
            request.getRequestDispatcher("teacherlogin.jsp").include(request, response); 
            }
        }
        }
        catch(Exception e){
            out.println(e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}