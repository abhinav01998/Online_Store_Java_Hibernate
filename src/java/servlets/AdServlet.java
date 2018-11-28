/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Abhinav Thakur
 */
@MultipartConfig(maxFileSize = 16177216)
public class AdServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url="jdbc:mysql://localhost:3306/java_project?useSSL=false&allowPublicKeyRetrieval=true&verifyServerCertificate=false&allowMultiQueries=true";
        PrintWriter out = response.getWriter();
        int result =0;
        Connection conn = null;
        Part part = request.getPart("upload");
        System.out.println("hello");
        if(part != null){
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url,"root","Abhi123@");
                PreparedStatement ps = conn.prepareStatement("insert into addata values(?,?,?,?,?,?,?)" );
                InputStream is = part.getInputStream();
                ps.setString(1,request.getParameter("category"));
                ps.setString(2,request.getParameter("product"));
                ps.setBlob(3,is);
                ps.setString(4,request.getParameter("seller"));
                ps.setString(5,request.getParameter("contact"));
                ps.setString(6,request.getParameter("email"));
                ps.setString(7,request.getParameter("price"));
                result = ps.executeUpdate();
                if(result > 0)
                {
                    //String s = (String)request.getAttribute("fileselect");
                    //request.setAttribute("fileselect",s);
                   response.sendRedirect("home1.jsp");
                    //rd.forward(request,response);
                }
                
            }
            catch(Exception e){
                out.println(e);
            }
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
        processRequest(request, response);
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
