/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author siddhant
 */
public class insert_anounce extends HttpServlet {

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
            out.println("<title>Servlet insert_anounce</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet insert_anounce at " + request.getContextPath() + "</h1>");
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
        try (PrintWriter in = response.getWriter())
        {
            String name=request.getParameter("name");
            String cname=request.getParameter("cname");
            String cid=request.getParameter("cid");
            String email=request.getParameter("email");
            String dept=request.getParameter("dept");
            String password=request.getParameter("password");
            String mob=request.getParameter("mobile");
            String gender=request.getParameter("gen");
            String year =request.getParameter("year");
            String a="";
            int s= Integer.parseInt(a);
            
           // out.println("sid1");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement(" insert into studentregistration values(?,?,?,?,?,?,?,?,?)");
           //out.println(password);
            //ps.setInt(1,a);
            ps.setInt(1,s);
            ps.setString(1, name);
            ps.setString(2,gender);
            ps.setString(3, cname);
            ps.setString(4, cid);
            ps.setString(5, email);
            ps.setString(6, password);
            ps.setString(7, dept);
            ps.setString(8, year);
            ps.setString(9, mob);
            in.println(ps);
            int x=ps.executeUpdate();
            //out.println("si4");
        if(x>0)
        {
            
        in.println("<script>");
        in.println("alert('Registered Successfully')"); 
        in.println("</script>");
        request.getRequestDispatcher("studentreg.jsp").forward(request, response);
        
        }
        
        else
        {
         
        }
            
            
        }
        catch(Exception e)
        {
            PrintWriter in = response.getWriter();
            in.println(e);
                       
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
