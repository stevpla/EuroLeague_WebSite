/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LU$er
 */
@WebServlet(urlPatterns = {"/Choose_PlayerS"})
public class Choose_PlayerS extends HttpServlet 
{
    
    protected Connection conn = null;
    protected Statement statement = null;
    protected String serverURL = "195.251.166.123";
    protected String serverPort = "1521";
    protected String serverSID = "orcl";
    protected String username = "c##icsd13155";
    protected String password = "icsd13155";
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        try  
        {
            ///Connect to DB
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            String connectionURL = "jdbc:oracle:thin:@" + serverURL + ":" + serverPort + ":" + serverSID;
            conn = DriverManager.getConnection(connectionURL, username, password);
            // End connection DB
            
            String qString="select teamname, photo from Team";
            statement = conn.createStatement();
            ResultSet result = statement.executeQuery(qString);
            
            PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Choose_PlayerS</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<form name=\"myForm\"  id=\"myForm\" action=\"Choose_Player_ProcessS\" method=\"get\">");
            while ( result.next ( ) )
            {
                String teamname = result.getString("teamname") ;
                String path = result.getString("photo");
                out.println("<img src=\"" + path + "\" alt=\"Team_Photo\"  style=\"width:150px;height:150px;\">");
                out.println("<select name='" + teamname + "'" + "style=\"background-color: lightgrey\">");
                
                //find all players for this TeamName
                String qString1 = "select id_splayer from JoinTeamPlayer where teamname = '" + teamname + "'" ;
                statement = conn.createStatement();
                ResultSet result1 = statement.executeQuery(qString1);
                while ( result1.next ( ) )
                {
                    String qString2 = "select playername, pnumber from SPlayer where id_splayer = '" + result1.getString("id_splayer") + "'" ;
                    statement = conn.createStatement();
                    ResultSet result2 = statement.executeQuery(qString2);
                    while ( result2.next ( ) )
                    {
                        String nm = result2.getString("playername") ;
                        out.println("<option value=\"" + nm + "\">" + ( nm + " " + result2.getInt("pnumber") ) + "</option>");
                    }
                }
                out.println("</select>");
            }
            out.println("<input type=\"submit\" value=\"Go!\">");                    
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
        catch ( IOException IOE )
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException 
    {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Choose_PlayerS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Choose_PlayerS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Choose_PlayerS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Choose_PlayerS.class.getName()).log(Level.SEVERE, null, ex);
        }
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Choose_PlayerS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Choose_PlayerS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Choose_PlayerS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Choose_PlayerS.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    
    
    
    
    
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }// </editor-fold>

}
