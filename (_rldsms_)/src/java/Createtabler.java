/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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
public class Createtabler extends HttpServlet {

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
            out.println("<title>Servlet Createtabler</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Createtabler at " + request.getContextPath() + "</h1>");
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
        try 
        {
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            PreparedStatement ps=con.prepareStatement("create table StudentRegistration(sno varchar(5),name varchar(20),gender varchar(6),college_name varchar(20),college_id varchar(20),email varchar(30),password varchar(15),department varchar(10),year int(3))");
            PreparedStatement psm=con.prepareStatement(" create table Studentdetails(name varchar(20),gender varchar(6),department varchar(10),year int(2),section varchar(2),fathers_name varchar(25),mothers_name varchar(25),permanent_add varchar(100),temp_add varchar(100),parents_mobileno int(10),student_mobileno int(10))");
            PreparedStatement ps2=con.prepareStatement(" create table teacherdetails(name varchar(20),gender varchar(6),department varchar(10),dob date,tuserid int(10),tpassword varchar(20),permanent_add varchar(100),temp_add varchar(100),teacher_mobileno int(10),date_of_joining date,speciality varchar(40),area_of_intrest varchar(20),total_project_handeling int(3),name_project_handeling varchar(100))");
            PreparedStatement ps3=con.prepareStatement(" create table teacherreg(name varchar(20),gender varchar(6),department varchar(10),dob date,teacher_mobileno int(10),temail varchar(50),speciality varchar(40),qualification varchar(20),experience_in_years varchar(2))");
            //ps.execute();
             ps3.execute();
            //psm.execute();
            if(psm.execute())
            {
               out.println("table created");
               request.getRequestDispatcher("studentreg.jsp").include(request, response);
            }
            else
            {
                out.println("chutiya cut gaya");
            }
        }
        catch(Exception e)
        {
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
