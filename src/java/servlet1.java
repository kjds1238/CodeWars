/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lionel
 */
@WebServlet(name="servlet_tier1", urlPatterns = {"/servlet_tier1"})
public class servlet1 extends HttpServlet {

    String message, phno, name, ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,ans11,ans12,ans13,ans14,ans15,ans16,ans17,ans18,ans19,ans20,ans21,ans22,ans23,ans24,ans25;
    int total = 0;
    java.sql.Connection connect;
    java.sql.Statement stmt = null;
    java.sql.ResultSet rs = null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try{
           String url="jdbc:mysql://localhost:3306/try";
           Class.forName("com.mysql.jdbc.Driver");
           connect = DriverManager.getConnection(url,"root","lfaber");
           message = "Thank you for your participation!";
        }
        catch (ClassNotFoundException cnfe)
        {
            System.out.println(cnfe);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
       

        phno = request.getParameter("phone_no");
        name = request.getParameter("name");
        ans1 = request.getParameter("group1");
        ans2 = request.getParameter("group2");
        ans3 = request.getParameter("group3");
        ans4 = request.getParameter("group4");
        ans5 = request.getParameter("group5");
        ans6 = request.getParameter("group6");
        ans7 = request.getParameter("group7");
        ans8 = request.getParameter("group8");
        ans9 = request.getParameter("group9");
        ans10 = request.getParameter("group10");
        ans11 = request.getParameter("group11");
        ans12 = request.getParameter("group12");
        ans13 = request.getParameter("group13");
        ans14 = request.getParameter("group14");
        ans15 = request.getParameter("group15");
        ans16 = request.getParameter("group16");
        ans17 = request.getParameter("group17");
        ans18 = request.getParameter("group18");
        ans19 = request.getParameter("group19");
        ans20 = request.getParameter("group20");
        ans21 = request.getParameter("group21");
        ans22 = request.getParameter("group22");
        ans23 = request.getParameter("group23");
        ans24 = request.getParameter("group24");
        ans25 = request.getParameter("group25");
        if(ans1.equals("b"))
            total+=2;
        if(ans2.equals("c"))
            total+=2;
        if(ans3.equals("c"))
            total+=2;
        if(ans4.equals("b"))
            total+=2;
        if(ans5.equals("b"))
            total+=2;
        if(ans6.equals("c"))
            total+=2;
        if(ans7.equals("a"))
            total+=2;
        if(ans8.equals("a"))
            total+=2;
        if(ans9.equals("b"))
            total+=2;
        if(ans10.equals("c"))
            total+=2;
        if(ans11.equals("b"))
            total+=2;
        if(ans12.equals("c"))
            total+=2;
        if(ans13.equals("a"))
            total+=2;
        if(ans14.equals("b"))
            total+=2;
        if(ans15.equals("c"))
            total+=2;
        if(ans16.equals("d"))
            total+=2;
        if(ans17.equals("a"))
            total+=2;
        if(ans18.equals("d"))
            total+=2;
        if(ans19.equals("a"))
            total+=2;
        if(ans20.equals("a"))
            total+=2;
        if(ans21.equals("d"))
            total+=2;
        if(ans22.equals("d"))
            total+=2;
        if(ans23.equals("c"))
            total+=2;
        if(ans24.equals("b"))
            total+=2;
        if(ans25.equals("b"))
            total+=2;
        try 
        {
            stmt = connect.createStatement();
            String query = "INSERT INTO test1 values('"+phno+"','"+name+"','"+total+"')";
            stmt.executeUpdate(query);
            stmt.close();
        }
        catch(SQLException ex){
            
        }
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("</head>");
        out.println("<body>");
        out.println("<center>");
        out.println("<h1>"+message+"</h1>");
        out.println("</center>");
        out.println("</body>");
        out.println("</html>");
        total = 0;
   }


 // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param   request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(servlet1.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request   }
}
"
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(servlet1.class.getName()).log(Level.SEVERE, null, ex);
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
    
         