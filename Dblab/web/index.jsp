<%-- 
    Document   : index
    Created on : Dec 3, 2016, 8:07:41 PM
    Author     : LU$er
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>  
        <title>Product Insert Form</title> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    </head> 
    <body style="background-color: #363;"> 
        <div><h1>Enter Data:</h1> 
            <br> 
            <form name="myForm" action="ProductGoogleCharts.jsp" method="get">   <%-- ayth h selida.jsp einai i selida poy otan patiso to insert tha me paei --%>
                Δώσε ID<input name ="id" type="text"><br> 
                Δώσε Όνομα<input name ="pname" type="text"><br> 
                Δώσε Χώρα<input name ="country" type="text"><br> 
                Κατηγορία<select name ="category"> 
                    <option value="Product">Προϊόν</option> 
                    <option value="Service">Υπηρεσία</option> 
                </select><br> 
                Δώσε Τιμή<input name ="price" type="text"><br> 
                <input type="submit" value="Insert!">             
                      
            </form>       
             
        </div> 
    </body> 
</html> 