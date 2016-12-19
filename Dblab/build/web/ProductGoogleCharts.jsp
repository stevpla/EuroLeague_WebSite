<%-- 
    Document   : ProductGoogleCharts
    Created on : Dec 3, 2016, 8:19:11 PM
    Author     : LU$er
--%>

<%@page import="oracle.jdbc.OracleCallableStatement"%>
<%@page import="oracle.jdbc.OracleTypes"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    //Kapoies dilsoeis metavliton
    //java oti einai se < %   ...  % >
      Connection conn = null;
      Statement statement = null;
      String serverURL = "195.251.166.123";
      String serverPort = "1521";
      String serverSID = "orcl";
      String username = "c##icsd13155";
      String password = "icsd13155";
%>




 <% 
            //συνδεση στη ΒΔ.
            Class.forName ( "oracle.jdbc.driver.OracleDriver" ).newInstance ( ) ;
            String connectionURL = "jdbc:oracle:thin:@" + serverURL + ":" + serverPort + ":" + serverSID ;
            conn = DriverManager.getConnection ( connectionURL, username, password ) ;
            // τέλος συνδεση στη ΒΔ.
           
            //Exei na kanei me thn Get methodo sto protokollo HTTP, to antikeimeno request.Pairnoume ta dedomena apo thn prev page poy einai sto url
            Integer PID = Integer.parseInt(request.getParameter(  "id" ) ) ;
            String PNAME = request.getParameter("pname");
            String PCOUNTRY = request.getParameter("country");
            String PCATEGORY = request.getParameter("category");
            //Integer price = Integer.parseInt(request.getParameter("price"));
            String qString = "INSERT INTO PRODUCT VALUES("+PID+",'"+PCOUNTRY+"','"+PCATEGORY+ "','" + PNAME  + ")";
                 System.out.println ( "To Insert einai -> " + qString ) ;  //TEST
            statement = conn.createStatement();
            statement.execute(qString);
                  System.out.println ( "Xd" ) ;  //TEST
            statement.close();
                  System.out.println ( "Statement Done" ) ;
            
          
            //τέλος run insert από τα δεδομένα της φόρμας		
%>





<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
      google.charts.load('current', {'packages':['table']});
      google.charts.setOnLoadCallback(drawTable);

      function drawTable() 
      {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Product Name');
        data.addColumn('number', 'Price');
        data.addRows([
            <%//jsp
                  System.out.println ( "Xd3a" ) ;
            qString="select pname,price from product";
            //εκτέλεση της Select
            statement = conn.createStatement();
            ResultSet result = statement.executeQuery(qString);
            while (result.next()) 
            {
                 out.println( "['" + result.getString(1) + "',"+result.getString(2) + "]," ) ;
            }
            statement.close();
            
            
            
            %>
     
        ]);

        var table = new google.visualization.Table(document.getElementById('table_div'));

        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
      }
    </script>
        
        
        
        
        
        
        
        
    </head>
    <body>
        <h1>Database Content!</h1>
        
           
         <div id="table_div"></div>
     
     
    </body>
</html>
