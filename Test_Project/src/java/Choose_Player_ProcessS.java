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
import java.util.ArrayList;
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
@WebServlet(urlPatterns = {"/Choose_Player_ProcessS"})
public class Choose_Player_ProcessS extends HttpServlet 
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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException, SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            
            ///Connect to DB
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            String connectionURL = "jdbc:oracle:thin:@" + serverURL + ":" + serverPort + ":" + serverSID;
            conn = DriverManager.getConnection(connectionURL, username, password);
            // End connection DB
            
            PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            String Names [ ] = { "ANADOLU EFES ISTANBUL", "BASKONIA VITORIA GASTEIZ", "BROSE BAMBERG", "CRVENA ZVEZDA MTS BELGRADE", "CSKA MOSCOW", "DARUSSAFAKA DOGUS ISTANBUL", 
            "EA7 EMPORIO ARMANI MILAN", "FC BARCELONA LASSA", "FENERBAHCE ISTANBUL", "GALATASARAY ODEABANK ISTANBUL", "MACCABI FOX TEL AVIV", "OLYMPIACOS PIRAEUS", "PANATHINAIKOS SUPERFOODS ATHENS" ,
            "REAL MADRID", "UNICS KAZAN" } ;
            
            ArrayList < ObjectA > ListA = new ArrayList < ObjectA > ( ) ;
            
            int i = 0 ;
            while ( i < 15 )
            {
                String tmp = request.getParameter ( Names[i] ) ;
                ListA.add ( new ObjectA ( tmp ) ) ;
                i ++ ;
            }
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<style>");
            out.println("table {");
            out.println("font-family: arial, sans-serif;");
            out.println("border-collapse: collapse;");
            out.println("width: 60%;");
            out.println("}");
            out.println("td, th {");
            out.println("border: 1px solid #dddddd;");
            out.println("text-align: left;");
            out.println("padding: 4px;");
            out.println("}");
            out.println("tr:nth-child(even) {");
            out.println("background-color: #dddddd;");
            out.println("}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body body  style=\"background-color: #369;\">");
    
            /////
            for ( int j = 0 ; j < ListA.size ( ) ;  j ++ )
            {  
                String qString = "select id_splayer from SPlayer where playername ='" + ListA.get  ( j ).Get_Name ( ) + "'" ;
                statement = conn.createStatement ( ) ;
                ResultSet result = statement.executeQuery(qString) ;
                
                //
                while ( result.next ( ) )
                { 
                   String h = result.getString("id_splayer") ;
                   
                   //for this id go to JoinPlayer
                   String qString1 = "select id_dplayer from JoinPlayer where id_splayer ='" + h + "'" ;
                   statement = conn.createStatement ( ) ;
                   ResultSet result1 = statement.executeQuery(qString1) ;
                   
                   //for there id_dplayers
                   while ( result1.next ( ) )
                   { 
                       String ifu = result1.getString("id_dplayer") ;
            
                       String qString2 = "select * from DPLayer where id_dplayer ='" + ifu  + "'" ;
                       statement = conn.createStatement ( ) ;
                       ResultSet result2 = statement.executeQuery(qString2) ;
           
                       //create table here
                       out.println("<table>");
                       out.println("<tr>");
                       out.println("<th>Team</th>");
                       out.println("<th>Name</th>");
                       out.println("<th>vs Team</th>");
                       out.println("<th>Minutes</th>");
                       out.println("<th>Points</th>");
                       out.println("<th>fg2</th>");
                       out.println("<th>fg3</th>");
                       out.println("<th>ft</th>");
                       out.println("<th>reboundo</th>");
                       out.println("<th>reboundd</th>");
                       out.println("<th>reboundt</th>");
                       out.println("<th>ASSIST</th>");
                       out.println("<th>STEALS</th>");
                       out.println("<th>WRONGS</th>");
                       out.println("<th>FV</th>");
                       out.println("<th>AG</th>");
                       out.println("<th>CM</th>");
                       out.println("<th>RV</th>");
                       out.println("<th>rip</th>");
                       out.println("</tr>");
                       //
                       while ( result2.next ( ) )
                       {
                           System.out.println(" gia to id_dplayer einai -> " + "Asa" );
                           out.println("<tr>");
                           out.println("<td>" + Names [ j ] + "</td>");
                           out.println("<td>" + ListA.get ( j ).Get_Name ( ) + "</td>");
                           out.println("<td>" + result2.getString("gamename")+ "</td>");
                           out.println("<td>" + result2.getDouble("minutes")+ "</td>");
                           out.println("<td>" + result2.getInt("points")+ "</td>");
                           out.println("<td>" + result2.getDouble("fg2") + "</td>");
                           out.println("<td>" + result2.getDouble("fg3") + "</td>");
                           out.println("<td>" + result2.getDouble("ft") + "</td>");
                           out.println("<td>" + result2.getInt("reboundo") + "</td>");
                           out.println("<td>" + result2.getInt("reboundd") + "</td>");
                           out.println("<td>" + result2.getInt("reboundt") + "</td>");
                           out.println("<td>" + result2.getInt("ASSIST") + "</td>");
                           out.println("<td>" + result2.getInt("STEALS") + "</td>");
                           out.println("<td>" + result2.getInt("WRONGS") + "</td>");
                           out.println("<td>" + result2.getInt("FV") + "</td>");
                           out.println("<td>" + result2.getInt("AG") + "</td>");
                           out.println("<td>" + result2.getInt("CM") + "</td>");
                           out.println("<td>" + result2.getInt("RV") + "</td>");
                           out.println("<td>" + result2.getInt("RIP") + "</td>");
                           out.println("</tr>");
                       }
                       out.println("</table>");
                       out.println("<br></br>");
                   }
                }
            }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Choose_Player_ProcessS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Choose_Player_ProcessS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Choose_Player_ProcessS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Choose_Player_ProcessS.class.getName()).log(Level.SEVERE, null, ex);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Choose_Player_ProcessS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Choose_Player_ProcessS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Choose_Player_ProcessS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Choose_Player_ProcessS.class.getName()).log(Level.SEVERE, null, ex);
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
