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
@WebServlet(urlPatterns = {"/Choose_TeamS"})
public class Choose_TeamS extends HttpServlet 
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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException, SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = null ;
   
        try 
        {
           ArrayList < String > ListPhoto = new ArrayList < String > ( ) ;
            ArrayList < String > ListName = new ArrayList < String > ( ) ;
           out = response.getWriter() ;
           
            ///Connect to DB
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
            String connectionURL = "jdbc:oracle:thin:@" + serverURL + ":" + serverPort + ":" + serverSID;
            conn = DriverManager.getConnection(connectionURL, username, password);
            // End connection DB

           String qString="select teamname, photo from Team";
           statement = conn.createStatement();
           ResultSet result = statement.executeQuery(qString);
           //statement.close();
           //
           int i = 0;
           while ( result.next ( ) )
           {
               String tmp = result.getString ("Photo" ) ;
               String Name = result.getString ("teamname" ) ;
               ListPhoto.add ( tmp ) ;
               ListName.add ( Name ) ;
               i++ ;
           }
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<title>EuroLeague </title>");
            out.println("<meta charset=\"UTF-8\">");
            out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
            out.println("<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">");
            out.println("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Karma\">");
            out.println("<style>");
            out.println("body,h1,h2,h3,h4,h5,h6 {font-family: \"Karma\", sans-serif}");
            out.println(".w3-sidenav a {padding:20px}");
            out.println("</style>");
            out.println("<body style =\"background-color: #369;\">");

            out.println("<!-- Sidenav (hidden by default) -->");
            out.println("<nav class=\"w3-sidenav w3-card-2 w3-top w3-xlarge w3-animate-left\" style=\"display:none;z-index:2;width:40%;min-width:300px\" id=\"mySidenav\">");
            out.println("<a href=\"javascript:void(0)\" onclick=\"w3_close()\"");
            out.println("class=\"w3-closenav\">Close Menu</a>");
            out.println("<a href=\"#food\" onclick=\"w3_close()\">Start_Page</a>");
            out.println("</nav>");

            out.println("<!-- Top menu -->");
            out.println("<div class=\"w3-top\">");
            out.println("<div class=\"w3-white w3-xlarge w3-padding-xlarge\" style=\"max-width:1200px;margin:auto\">");
            out.println("<div class=\"w3-opennav w3-left w3-hover-text-grey\" onclick=\"w3_open()\">☰</div>");
            out.println("<div class=\"w3-center\">EuroLeague Teams</div>");
            out.println("</div>");
            out.println("</div>");

            out.println("<!-- !PAGE CONTENT! -->");
            out.println("<div class=\"w3-main w3-content w3-padding\" style=\"max-width:500px;margin-top:100px\">");

            
            //PHOTO LOOP HERE
            for ( int j = 0 ;   j < i ;   j ++ ) 
            {
                out.println("<!--  Photo Grid-->");
                out.println("<div class=\"w3-row-padding w3-padding-16 w3-center\" id=\"food\">");
                out.println("<div class=\"w3-quarter\">");
                out.println("<form name=\"myForm\"  id=\"myForm\" action=\"Display_TeamChartS\" method=\"get\">");
                out.println("<img src=\"" + ListPhoto.get ( j ) + "\" alt=\"Team_Photo\"  style=\"width:304px;height:228px;\">");
                
                out.println("<input type=\"text\" name=\"xaxe\" value=\"" + ListName.get ( j ) + "\">");
                out.println("<input type=\"submit\" value=\"Press\">"); 
                
                out.println("</form>");
                out.println("</div>");
                out.println("</div>");
            }
    
    

            out.println("<!-- Pagination -->");
            out.println("<div class=\"w3-center w3-padding-32\">");
            out.println("<ul class=\"w3-pagination\">");
            out.println("<li><a class=\"w3-black\" href=\"#\">1</a></li>");
            out.println("<li><a class=\"w3-hover-black\" href=\"#\">2</a></li>");
            out.println("<li><a class=\"w3-hover-black\" href=\"#\">3</a></li>");
            out.println("<li><a class=\"w3-hover-black\" href=\"#\">4</a></li>");
            out.println("<li><a class=\"w3-hover-black\" href=\"#\">»</a></li>");
            out.println("</ul>");
            out.println("</div>");
  
 

            out.println("<!-- End page content -->");
            out.println("</div>");

            out.println("<script>");
           // Script to open and close sidenav
            out.println("function w3_open() {");
            out.println("document.getElementById(\"mySidenav\").style.display = \"block\";");
            out.println("}");

            out.println("function w3_close()");
            out.println("{");
            out.println("document.getElementById(\"mySidenav\").style.display = \"none\";");
            out.println("}");
            out.println("</script>");

            out.println("</body>");
            out.println("</html>");

          
        }
        catch ( IOException IOE )
        {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title> EuroLeague Page</title>"); 
            out.println("</head>");
            out.println("<body style = \"background-color: #720;\">");
            out.println("<div><h1> Sorry...Something went wrong.Maybe a network error.Please go to home page !!</h1>");
            out.println("<br> </br>");
            out.println("<br>");
            out.println("<form name=\"myForm\" action=\"http://localhost:8080/Test_Project\">");
            out.println("Press here -> <input  type = \"submit\" value = \"Home Page!\">");
            out.println("</form>");
            out.println("</div>");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Choose_TeamS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Choose_TeamS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Choose_TeamS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Choose_TeamS.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Choose_TeamS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Choose_TeamS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Choose_TeamS.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Choose_TeamS.class.getName()).log(Level.SEVERE, null, ex);
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
