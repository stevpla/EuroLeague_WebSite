/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author LU$er
 */
@WebServlet(urlPatterns = {"/Game_DataS"})
public class Game_DataS extends HttpServlet 
{
    
    protected Connection conn = null;
    protected Statement statement = null;
    protected String serverURL = "195.251.166.123";
    protected String serverPort = "1521";
    protected String serverSID = "orcl";
    protected String username = "c##icsd13155";
    protected String password = "icsd13155";
    protected String filePath;
    protected boolean isMultipart1, isMultipart2;
    protected int maxFileSize = 50 * 1024;
    protected int maxMemSize = 4 * 1024;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * 
     * 
     * 
     */
    
    
    
  
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response ) throws ServletException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException 
    {
        String datetime = null,  field=null, visitors=null, hteamname=null, fteamname = null;
        Integer Ivisitors = null ;
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = null ;
        try 
        { 
            out = response.getWriter();
            //First do the Proccesing of data . Data received from URL-POST method..
            
            // // Check that we have a file upload request
            boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
            
            FileItemFactory factory = new DiskFileItemFactory();
            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);
            
            //Parse the request to get file items.
            List<FileItem> fields = upload.parseRequest(request);
                
             // Process the uploaded file items
            Iterator<FileItem> it = fields.iterator();
            //loop
            
            while (it.hasNext()) 
            {
                FileItem fileItem = it.next();
                boolean isFormField = fileItem.isFormField();

                //Form Field
                if (isFormField) 
                {
                    String tmp = fileItem.getFieldName();
                    
                    if (tmp.equals("datetime")) 
                    {
                        datetime = fileItem.getString();
                    } 
                    else if (tmp.equals("field")) 
                    {
                        field = fileItem.getString();
                    } 
                    else if (tmp.equals("visitors")) 
                    {
                        visitors = fileItem.getString();
                        //cast to Integer
                        Ivisitors = Integer.parseInt( visitors ) ;
                    } 
                    else if (tmp.equals("hteamname")) 
                    {
                        hteamname = fileItem.getString();
                    } 
                    else if (tmp.equals("fteamname")) 
                    {
                        fteamname = fileItem.getString();
                    }
                } //extracted all STATIC INFO, now go to txt;s
                else 
                {
                    //Connect to DB
                    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                    String connectionURL = "jdbc:oracle:thin:@" + serverURL + ":" + serverPort + ":" + serverSID;
                    conn = DriverManager.getConnection(connectionURL, username, password);
                        // End connection DB

                    //Now insert this Team in table SGame
                    String qString1 = "insert into SGame values( " + "'" + datetime + "','" + field + "', " + Ivisitors + " ,'" + hteamname + "','" + fteamname + "', '" + (hteamname + fteamname) + "' )";
                    statement = conn.createStatement();
                    statement.execute(qString1);
                    statement.close();
                    System.out.println("" + qString1);
                        //Call Method that parses txt and do the inserts

                    TXT_FILES_PROCESS(fileItem.getString(), fileItem.getFieldName(), out);
                }
            }

            //-------------------------------------
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>EuroLeague Page</title>");
            out.println("</head>");
            out.println("<body>"); 
            out.println("<div><h1>Successfull Registry in DataBase !!</h1>"); 
            out.println("<br></br>");
            out.println("<br>"); 
            out.println("<form name=\"myForm\" action=\"http://localhost:8080/Test_Project\">"); 
            out.println("Home Page for further action  --->  <input type=\"submit\" value=\"Home Page!\">");                    
            out.println("</form>");    
            out.println("</div>");
            out.println("</body>");
            out.println("</html>"); 
        }
        catch ( FileUploadException FUE )
        {
            System.out.println ( "debugg " + FUE.getLocalizedMessage ( ) ) ;
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title> EuroLeague Page</title>"); 
            out.println("</head>");
            out.println("<body style = \"background-color: #720;\">");
            out.println("<div><h1> Sorry...Something went wrong with the TXT uploading.Please go to home page and try again uploading a valid txt !!</h1>");
            out.println("<br> </br>");
            out.println("<br>");
            out.println("<form name=\"myForm\" action=\"http://localhost:8080/Test_Project\">");
            out.println("Press here -> <input  type = \"submit\" value = \"Home Page!\">");
            out.println("</form>");
            out.println("</div>");
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
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try 
        {
            processRequest(request, response);
        } 
        catch (ClassNotFoundException ex) 
        {
            Logger.getLogger(Game_DataS.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (SQLException ex) 
        {
            Logger.getLogger(Game_DataS.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (InstantiationException ex) 
        {
            Logger.getLogger(Game_DataS.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (IllegalAccessException ex) 
        {
            Logger.getLogger(Game_DataS.class.getName()).log(Level.SEVERE, null, ex);
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
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try 
        {
            processRequest(request, response);
        } 
        catch (ClassNotFoundException ex) 
        {
            Logger.getLogger(Game_DataS.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (SQLException ex) 
        {
            Logger.getLogger(Game_DataS.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (InstantiationException ex) 
        {
            Logger.getLogger(Game_DataS.class.getName()).log(Level.SEVERE, null, ex);
        } 
        catch (IllegalAccessException ex) 
        {
            Logger.getLogger(Game_DataS.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
    
    
    
    void TXT_FILES_PROCESS ( String GetString, String FieldName, PrintWriter Out ) throws IOException
    {
        BufferedReader bufferedReader = new BufferedReader( new StringReader ( GetString ) ) ;
        String line = null ;
        
        //now search to txt and do Parsing
        while ((line = bufferedReader.readLine()) != null) 
         {
                System.out.println ("MESA STO TXT " + line );
         }
        
  
    }
    
    
    
    
    
    
    
    @Override
    public String getServletInfo ( ) 
    {
        return "Short description";
    }// </editor-fold>

}
