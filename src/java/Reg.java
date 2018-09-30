import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Reg extends HttpServlet {
    Connection con;
    PreparedStatement ps;  
    @Override
    public void init(){
        try{
           
           con=(Connection) this.getServletContext().getAttribute("mycon");      
            String qr="insert into users values(?,?,?,?,?,?,?,?)";
                      
            ps = con.prepareStatement(qr);
        }catch(SQLException e){}
    }
    @Override
    public void destroy(){
        try{
        con.close();
        }catch(SQLException e){}
    }
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String s1=request.getParameter("uid");
        String s2=request.getParameter("pass");
        String s3=request.getParameter("nm");
        String s4=request.getParameter("eid");
        String s5=request.getParameter("cno");
        String s6=request.getParameter("add");
        String s7=request.getParameter("idproof");
        String s8=request.getParameter("id");
        
       
        
        
        
        try{
            ps.setString(1, s1); ps.setString(2,s2);
            ps.setString(3, s3); ps.setString(4,s4);
            ps.setString(5, s5); ps.setString(6,s6);
            ps.setString(7,s7);
            ps.setString(8,s8);
    
            ps.executeUpdate();
            out.println("<h3>Registration Completed</h3>");
            out.println("<h4><a href=Login.jsp>Login-Now</a></h4>");
        }catch(SQLException e){
           
            out.println("please enter unique userid and password");
            out.println("\n <a href=Register.jsp>back</a>");  
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
