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
@WebServlet(urlPatterns = {"/Display_TeamChartS"})
public class Display_TeamChartS extends HttpServlet 
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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException, ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = null ;
        
        try 
        {
            out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            
            String gi =request.getParameter("xaxe");
            System.out.println ( "xaxa eimai to id -> " + gi ) ;
            
            ///Connect to DB
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            String connectionURL = "jdbc:oracle:thin:@" + serverURL + ":" + serverPort + ":" + serverSID;
            conn = DriverManager.getConnection(connectionURL, username, password);
            // End connection DB
            
            
            ArrayList < Servlet4Object > ListS4O = new ArrayList < Servlet4Object > ( ) ;
            
            //
            String qString = "select JoinTeamGame.id_sgame from JoinTeamGame where JoinTeamGame.teamname = '" + gi +"' ";
            statement = conn.createStatement();
            ResultSet result = statement.executeQuery(qString);
 
            int j = 0 ;
            //Process
            int Wins = 0 ;
            int Loses = 0 ;
            while ( result.next ( ) )
            {
                j ++ ;
                //Then with the id_sgamego to SGame TABLE And appear the games and Points
                //for all keys in JOINTEANGAME
                String qString1 = "select SGame.hname, SGame.fname, SGame.HPoints, SGame.FPoints from SGame where SGame.id_sgame = '" + result.getString ("id_sgame") +"' ";
                statement = conn.createStatement();
                ResultSet result1 = statement.executeQuery(qString1);
                
                //
                while ( result1.next ( ) )
                {
                    String h = result1.getString("hname");
                    String f = result1.getString("fname");
                    int hp = result1.getInt("hpoints");
                    int fp = result1.getInt("fpoints");
                    //-------------
                    ListS4O.add ( new Servlet4Object ( h, f, hp, fp ) ) ;
                    //------------
                    if (hp > fp) 
                    {
                        if (h.equals(gi)) 
                        {
                            Wins++;
                        } 
                        else 
                        {
                            Loses++;
                        }
                    }
                }
                //ListSet.add (  result1 );
            }
            
          
           
            String photo = null ;
            //-----------
            String qString0 = "select photo from Team where Team.teamname = '" + gi +"' ";
            statement = conn.createStatement();
            ResultSet result0 = statement.executeQuery(qString0);
            //statement.close();
            //--------------
            while ( result0.next ( ) )
            {
                photo = result0.getString("photo") ;
                System.out.println ( " photo path-> " +  photo ) ;
            }
            
            
            
            
            
            
            
            
            
            
             
            //MIA FORA KAI MESA NA KANO TABLE ME TA STOIXEIA TOY RESULT1
            //Kai meta to chart
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            //
            out.println("<title>Servlet Display_TeamChartS</title>"); 
            out.println("<script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>");
            out.println("<script type=\"text/javascript\">");
            out.println("google.charts.load('current', {'packages':['corechart']});");
            out.println("google.charts.setOnLoadCallback(drawChart);");
            out.println("function drawChart() {");
            out.println("var data = google.visualization.arrayToDataTable([");
            out.println("['Games', 'Hours per Day'],");
            out.println("['Wins', " + Wins + "],");
            out.println("['Loses', " + Loses + "]");
            out.println("]);");
            out.println("var options = {");
            out.println("title: 'Games:Wins/Loses'");
            out.println("};");
            out.println("var chart = new google.visualization.PieChart(document.getElementById('piechart'));");
            out.println("chart.draw(data, options);");
            out.println("}");
            out.println("</script>");
            //
            out.println("</head>");
            out.println("<body style=\"background-color: #369;\">");
            out.println("<img src=\"" + photo+ "\" alt=\"Team_Photo\"  style=\"width:304px;height:228px;\">");
            out.println ( "<div>" + gi+ "</div><br></br><br></br>" ) ;
                 if ( j == 0 )
                 {
                    out.println ( "<p>" + "there is no Games.." + "</p>" ) ;
                 }
                 else
                 {
                    //create table HTML
                     out.println("<style>");
                     out.println("table {");
                     out.println("font-family: arial, sans-serif;");
                     out.println("border-collapse: collapse;");
                     out.println("width:40%;");
                     out.println("}");
                     out.println("td, th {");
                     out.println("border: 2px solid #dddddd;");
                     out.println("text-align: left;");
                     out.println("padding: 8px;");
                     out.println("}");
                     out.println("tr:nth-child(even) {");
                     out.println("background-color: #ddfddd;");
                     out.println("}");
                     out.println("</style>");
                     //-------------------
                     out.println("<table>");
                     out.println("<tr>");
                     out.println("<th>Games</th>");
                     out.println("<th>Score</th>");
                     out.println("</tr>");
                     //-------------
                     for ( int i = 0 ;   i < ListS4O.size ( ) ;  i ++ )
                     {
                             String h = ListS4O.get ( i ).GetHname();
                             String f = ListS4O.get ( i ).GetFname();
                             int hp = ListS4O.get ( i ).GetHp();
                             int fp = ListS4O.get ( i ).GetFp();
                             //-------------
                             out.println("<tr>");
                             out.println("<td>" +  h + "-" + f + "</td>");
                             out.println("<td>" + hp + "-" + + fp + "</td>");
                             out.println("</tr>");
                     }
                     out.println("</table>");
                     out.println("<div id=\"piechart\" style=\"background-color: #369;\"  \"width: 400px; height: 300px;\"></div>");
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Display_TeamChartS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Display_TeamChartS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Display_TeamChartS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Display_TeamChartS.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Display_TeamChartS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Display_TeamChartS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Display_TeamChartS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Display_TeamChartS.class.getName()).log(Level.SEVERE, null, ex);
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
