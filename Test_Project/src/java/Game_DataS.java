/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
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
    protected ArrayList < ObjectA > ListA = new ArrayList < ObjectA > ( ) ;
    protected ArrayList < Player_Statistics > ListPS = new ArrayList < Player_Statistics > ( ) ;
    protected ArrayList < PlayerName > ListPN = new ArrayList < PlayerName > ( ) ;
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
                    //Call Method that parses txt and do the inserts
                    TXT_FILES_PROCESS ( fileItem.getString ( ), fileItem.getFieldName ( ), out, hteamname, fteamname, datetime, field, Ivisitors ) ;
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
    
    
    
    
    void TXT_FILES_PROCESS ( String GetString, String FieldName, PrintWriter Out,String HostTeam, String ForeignTeam, String datetime, String field, Integer Ivisitors ) throws IOException, ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException
    {
        BufferedReader bufferedReader = new BufferedReader( new StringReader ( GetString ) ) ;
        String line = null ;
        boolean flag_before=false ;
        Double DBL1_FG2, DBL2_FG3, DBL3_FT ;
        int txt_Counter = 0 ;
        
        //Connect to DB
        Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        String connectionURL = "jdbc:oracle:thin:@" + serverURL + ":" + serverPort + ":" + serverSID;
        conn = DriverManager.getConnection(connectionURL, username, password);
        // End connection DB
        
        //Array to calculate Points of each Team
        int HCounter = 0, FCounter = 0 ;
        
        //now search to txt and do Parsing
        while ((line = bufferedReader.readLine()) != null) 
        {
            txt_Counter ++ ;
            
            if ( line.equals ( "" ) )
            {
                flag_before = true ;
                continue ;
                //dont check ifs, just skip line
            }
            
            //HostTeam
            if ( flag_before == false )
            {
                String [] Strs = line.split (",") ;
                
                System.out.println("Line is  -> " + line);
                
                //first process Minutes
                String g = "." ;
                String[] temp1 = Strs[1].split(":");  //split Minutes
                String MINUTES = temp1[0] + g + temp1[1] ;
                Double MIN = Double.parseDouble ( MINUTES ) ;
                
                //Split FG2
                //first if string contains \, or is 00
                if ( Strs[3].contains( "/" ) )
                {
                    String[] temp2 = Strs[3].split("/");  //split FG2
                    Integer x = Integer.parseInt ( temp2[0] ) ;
                    Integer y = Integer.parseInt ( temp2[1] ) ;
                    Double FG2 = 100 * (   ( double ) x   /  ( double ) y   ) ;
                    String stre = Double.toString(FG2);
                    String  Ar []= stre.split(Pattern.quote("."));
                    DBL1_FG2 = Double.parseDouble(Ar[0]);
                }
                else
                {
                    //00
                    DBL1_FG2 = Double.parseDouble( Strs[3] );
                }
                
                //Split FG3
                if ( Strs[4].contains( "/" ) )
                {
                   String[] temp3 = Strs[4].split("/");  //split FG3
                   Integer a = Integer.parseInt ( temp3[0] ) ;
                   Integer b = Integer.parseInt ( temp3[1] ) ;
                   Double FG3 = 100 * (   ( double ) a   /  ( double ) b   ) ;
                   String stri = Double.toString(FG3);
                   String  Arr []= stri.split(Pattern.quote("."));
                   DBL2_FG3 = Double.parseDouble(Arr[0]);
                }
                else
                {
                    //00
                    DBL2_FG3 = Double.parseDouble( Strs[4] );
                }
                
                //Split FT
                if ( Strs[5].contains( "/" ) )
                {
                   String[] temp4 = Strs[5].split("/");  //split FT
                   Integer c = Integer.parseInt ( temp4[0] ) ;
                   Integer d = Integer.parseInt ( temp4[1] ) ;
                   Double FT = 100 * (   ( double ) c   /  ( double ) d   ) ;
                   String stro = Double.toString(FT);
                   String  Arrr []= stro.split(Pattern.quote("."));
                   DBL3_FT = Double.parseDouble(Arrr[0]);
                }
                else
                {
                    //00
                    DBL3_FT = Double.parseDouble( Strs[5] );   
                }
                
                
                String qString2 = "insert into DGame values( " + "'" + HostTeam + "','" + Strs[0] + "'," + MIN + ", " + Integer.parseInt( Strs[2] ) + ", " + DBL1_FG2 + ", " + DBL2_FG3 + ", " + 
                DBL3_FT + ", " + Integer.parseInt( Strs[6] ) + ", " + Integer.parseInt( Strs[7] ) + ", " + Integer.parseInt( Strs[8] ) + ", " + Integer.parseInt( Strs[9] ) + ", " 
                + Integer.parseInt( Strs[10] ) + ", " + Integer.parseInt( Strs[11] ) + ", " + Integer.parseInt( Strs[12] ) + ", " + Integer.parseInt( Strs[13] ) + ", " + 
                Integer.parseInt( Strs[14] ) + ", "  + Integer.parseInt( Strs[15] ) + ", " + Integer.parseInt ( Strs[16] ) + ", '" + ( HostTeam + " " + Strs[0] ) + "' )" ;
                System.out.println( " command DGame ->12 " + qString2 );
                statement = conn.createStatement();
                statement.execute(qString2);
                statement.close();
                //
                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date date = new Date();
                
                ListA.add ( new ObjectA ( HostTeam + " " + Strs[0] ) ) ;
                
                //
                char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
                StringBuilder sb = new StringBuilder();
                Random random = new Random();
                for (int t = 0; t < 20; t++) 
                {
                    char c = chars[random.nextInt(chars.length)];
                    sb.append(c);
                }
                String output = sb.toString();
                
                ListPS.add ( new Player_Statistics ( HostTeam + " " + ForeignTeam, MIN, Integer.parseInt( Strs[2] ), DBL1_FG2, DBL2_FG3, DBL3_FT, Integer.parseInt( Strs[6] ),  Integer.parseInt( Strs[7] ),
                Integer.parseInt( Strs[8] ) ,  Integer.parseInt( Strs[9] ) ,  Integer.parseInt( Strs[10] ) ,  Integer.parseInt( Strs[11] ) , Integer.parseInt( Strs[12] ) , Integer.parseInt( Strs[13] ), 
                Integer.parseInt( Strs[14] ) ,  Integer.parseInt( Strs[15] ) ,  Integer.parseInt ( Strs[16] ) , dateFormat.format ( date ) + " " + HostTeam + output ) );
                
                //
                ListPN.add ( new PlayerName ( Strs[ 0 ], dateFormat.format ( date ) + " " + HostTeam + output) ) ;
                //
                
                HCounter = HCounter + Integer.parseInt( Strs[2] ) ;
            }
            
            //ForeignTeam
            if ( flag_before == true )
            {
                String [] Strs = line.split (",") ;
                System.out.println("Line is 0- -- =>> " + line ) ;
                //first process Minutes
                String g = "." ;
                String[] temp1 = Strs[1].split(":");  //split Minutes
                String MINUTES = temp1[0] + g + temp1[1] ;
                Double MIN = Double.parseDouble ( MINUTES ) ;
                
                //Split FG2
                //first if string contains \, or is 00
                if ( Strs[3].contains( "/" ) )
                {
                    String[] temp2 = Strs[3].split("/");  //split FG2
                    Integer x = Integer.parseInt ( temp2[0] ) ;
                    Integer y = Integer.parseInt ( temp2[1] ) ;
                    Double FG2 = 100 * (   ( double ) x   /  ( double ) y   ) ;
                    String stre = Double.toString(FG2);
                    String  Ar []= stre.split(Pattern.quote("."));
                    DBL1_FG2 = Double.parseDouble(Ar[0]);
                }
                else
                {
                    //00
                    DBL1_FG2 = Double.parseDouble( Strs[3] );
                }
                
                //Split FG3
                if ( Strs[4].contains( "/" ) )
                {
                   String[] temp3 = Strs[4].split("/");  //split FG3
                   Integer a = Integer.parseInt ( temp3[0] ) ;
                   Integer b = Integer.parseInt ( temp3[1] ) ;
                   Double FG3 = 100 * (   ( double ) a   /  ( double ) b   ) ;
                   String stri = Double.toString(FG3);
                   String  Arr []= stri.split(Pattern.quote("."));
                   DBL2_FG3 = Double.parseDouble(Arr[0]);
                }
                else
                {
                    //00
                    DBL2_FG3 = Double.parseDouble( Strs[4] );
                }
                
                //Split FT
                if ( Strs[5].contains( "/" ) )
                {
                   String[] temp4 = Strs[5].split("/");  //split FT
                   Integer c = Integer.parseInt ( temp4[0] ) ;
                   Integer d = Integer.parseInt ( temp4[1] ) ;
                   Double FT = 100 * (   ( double ) c   /  ( double ) d   ) ;
                   String stro = Double.toString(FT);
                   String  Arrr []= stro.split(Pattern.quote("."));
                   DBL3_FT = Double.parseDouble(Arrr[0]);
                }
                else
                {
                    //00
                    DBL3_FT = Double.parseDouble( Strs[5] );   
                }
                
                
                String qString2 = "insert into DGame values( " + "'" + ForeignTeam + "','" + Strs[0] + "'," + MIN + ", " + Integer.parseInt( Strs[2] ) + ", " + DBL1_FG2 + ", " + DBL2_FG3 + ", " + 
                DBL3_FT + ", " + Integer.parseInt( Strs[6] ) + ", " + Integer.parseInt( Strs[7] ) + ", " + Integer.parseInt( Strs[8] ) + ", " + Integer.parseInt( Strs[9] ) + ", " 
                + Integer.parseInt( Strs[10] ) + ", " + Integer.parseInt( Strs[11] ) + ", " + Integer.parseInt( Strs[12] ) + ", " + Integer.parseInt( Strs[13] ) + ", " + 
                Integer.parseInt( Strs[14] ) + ", "  + Integer.parseInt( Strs[15] ) + ", " + Integer.parseInt ( Strs[16] ) + ", '" + ( ForeignTeam + " " + Strs[0] ) + "' )" ;
                System.out.println( " command DGame -> " + qString2 );
                statement = conn.createStatement();
                statement.execute(qString2);
                statement.close();
                //
                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date date = new Date();
                
                ListA.add ( new ObjectA ( ForeignTeam + " " + Strs[0] ) ) ;
                
                //
                char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
                StringBuilder sb = new StringBuilder();
                Random random = new Random();
                for (int t = 0; t < 20; t++) 
                {
                    char c = chars[random.nextInt(chars.length)];
                    sb.append(c);
                }
                String output = sb.toString();
                
                ListPS.add ( new Player_Statistics (  HostTeam + " " + ForeignTeam, MIN, Integer.parseInt( Strs[2] ), DBL1_FG2, DBL2_FG3, DBL3_FT, Integer.parseInt( Strs[6] ),  Integer.parseInt( Strs[7] ),
                Integer.parseInt( Strs[8] ) ,  Integer.parseInt( Strs[9] ) ,  Integer.parseInt( Strs[10] ) ,  Integer.parseInt( Strs[11] ) , Integer.parseInt( Strs[12] ) , Integer.parseInt( Strs[13] ), 
                Integer.parseInt( Strs[14] ) ,  Integer.parseInt( Strs[15] ) ,  Integer.parseInt ( Strs[16] ) , dateFormat.format ( date ) + " " +  ForeignTeam + output) );
                
                //
                ListPN.add ( new PlayerName ( Strs[ 0 ], dateFormat.format ( date ) + " " +  ForeignTeam + output ) ) ;
                //
                FCounter = FCounter + Integer.parseInt( Strs[2] ) ;
            }   
        } //LOOP END
        
        
        //NOW INSERT STATIC DATA OF THIS GAME INTO TABLE < SGAME >..
        String qString1 = "insert into SGame values( " + "'" + datetime + "','" + field + "', " + Ivisitors + " ,'" + HostTeam + "','" + ForeignTeam + "', '" + (HostTeam + " " + ForeignTeam) + "', " + Integer.valueOf(HCounter) + ", " + Integer.valueOf(FCounter) + ")" ;
        statement = conn.createStatement();
        statement.execute(qString1);
        statement.close();
        conn.close ( ) ;
      
        
        //open conn again
        //Connect to DB
        Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        String connectionURLe = "jdbc:oracle:thin:@" + serverURL + ":" + serverPort + ":" + serverSID;
        conn = DriverManager.getConnection(connectionURLe, username, password);
        // End connection DB
        
        
        //Now do the relationship between SGame and DGame. Insert JoinGame Table
        for ( int i = 0 ;   i < txt_Counter - 1 ;   i ++ )
        {
            String qString2 = "insert into JoinGame values( " + "'" + ( HostTeam + " " + ForeignTeam ) + "', '" + ListA.get ( i ).Get_Name ( ) + "', " +
            "'" + (  ( HostTeam + " " + ForeignTeam ) + " " + ListA.get ( i ).Get_Name ( ) ) + "' )" ;
            statement = conn.createStatement();
            statement.execute(qString2);
            statement.close();
        }
        
        
        //Now go to SPlayer and save statitistical Data
        for ( int i = 0 ;  i < txt_Counter - 1 ;   i ++ )
        {
            String qString2 = "insert into DPlayer values( " + "'" + ListPS.get ( i ).GetGameName ( ) + "', " + ListPS.get ( i ).GetMinutes ( ) + ", " + ListPS.get ( i ).GetPoints ( )
            + ", " + ListPS.get ( i ).GetFG2 ( ) + ", " + ListPS.get ( i ).GetFG3 ( ) + ", " + ListPS.get ( i ).GetFT ( ) + ", " + ListPS.get ( i ).Getreboundso ( ) + ", " + 
            ListPS.get ( i ).Getreboundsd ( ) + ", " + ListPS.get ( i ).Getreboundst ( ) + ", " + ListPS.get ( i ).Getassists() + ", " + ListPS.get ( i ).Getsteals()
            + ", " + ListPS.get ( i ).Getwrongs() + ", " + ListPS.get ( i ).Getfv() + ", " + ListPS.get ( i ).Getag() + ", " + ListPS.get ( i ).Getcm() + ", " + ListPS.get ( i ).Getrv()
            + ", " + ListPS.get ( i ).Getrip ( ) + ", '" + ( ListPS.get ( i ).Get_id_dplayer( ) )  + "' )" ;
            System.out.println("XAXA EINAI -> " + qString2 ) ;
            statement = conn.createStatement();
            statement.execute(qString2);
            statement.close();
        }
        
        
        //Find player name and their id to make the relationship between statistical player info and Each Player
        String qString = "select playername, id_splayer from SPlayer";
        statement = conn.createStatement();
        ResultSet result = statement.executeQuery(qString);
     
        
        //Now make relationship between SPlayer and DPlayer - every player has statistics in every game - Table JoinPlayer
        while ( result.next ( ) )
        {
            for ( int i = 0 ;   i < ListPN.size ( )  ;   i ++ ) 
            {
                if ( ListPN.get ( i ).GetPlayerName ( ).equals ( result.getString ("playername") ) )
                {
                    //in this index, make the process
                    String idSPLAYER = result.getString ("id_splayer");
                    String idDPLAYER = ListPN.get ( i ).Getid_dplayer() ;
                    String idJP = idSPLAYER + " " + idDPLAYER;
                    String qString2 = "insert into JoinPlayer values( " + "'" + idSPLAYER + "', '" + idDPLAYER + "', '" + idJP + "' " + ")" ;
                    statement = conn.createStatement();
                    statement.execute(qString2);
                    statement.close();
                }
            }
        }
        
        
        //Now last step. Make the Relationship between Static info Game and Team. Each Team has Games. Insert into JoinTeamGame
        //Host Team
        String qString4 = "insert into JoinTeamGame values( " + "'" + HostTeam + "', '" + (HostTeam + " " + ForeignTeam) + "', '" + (HostTeam + " " + HostTeam + "-" + ForeignTeam) + "' " + ")";
        statement = conn.createStatement();
        statement.execute(qString4);
        statement.close();
        
        //Foreing Team
        String qString5 = "insert into JoinTeamGame values( " + "'" + ForeignTeam + "', '" + (HostTeam + " " + ForeignTeam) + "', '" + (ForeignTeam + " " + HostTeam + "-" + ForeignTeam) + "' " + ")";
        statement = conn.createStatement();
        statement.execute(qString5);
        statement.close();
        conn.close();

    } //End of METHOD
    

    
    
    
    
    @Override
    public String getServletInfo ( ) 
    {
        return "Short description";
    }// </editor-fold>

}
