package com.workshop.tradr.controller;

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
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Model extends HttpServlet {

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
        try  {
        	PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet anounce_insert</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet anounce_insert at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
        	
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
        try {
        	PrintWriter out = response.getWriter();
        	String pass=request.getParameter("name");
            //int q=0;
            String name =request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tradr","root","");
            PreparedStatement ps=con.prepareStatement(" Select CUSTOMER_LOGIN_NAME,CUSTOMER_LOGIN_PASSWORD from customer where  CUSTOMER_LOGIN_NAME=? and CUSTOMER_LOGIN_PASSWORD=?");
     
            ps.setString(1, name);
            ps.setString(2, pass);
            out.println(ps);
            out.println();
            ResultSet s2=ps.executeQuery();
            if( s2.next())
            {
            
                if((s2.getString("CUSTOMER_LOGIN_NAME")==name)&& ((s2.getString("CUSTOMER_LOGIN_PASSWORD")).equals(pass)))
                {
                    PreparedStatement ps1=con.prepareStatement("select * from teacherdetails where tuserid=?");
                    ResultSet s1=ps1.executeQuery();
                    s1.next();
                    HttpSession session=request.getSession();
                    session=request.getSession();
                    session.setAttribute("teach_name",s1.getString("name"));
                    out.println("<input type='hidden' name='Id' value='"+name+"'>");
                    response.sendRedirect("nse.jsp");
                    //String id=session.getId();
                    
                    //request.getRequestDispatcher("tprofile.jsp").forward(request, response);
                }
            }
            else
            {
                out.println("<script>");
                out.println("alert('Worng Id or Password')");
                out.println("</script>");
                request.getRequestDispatcher("login.jsp").include(request, response); 
            }   
        }
        catch(Exception e)
        {
            System.out.println(e);
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


