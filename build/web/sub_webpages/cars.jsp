<%-- 
    Document   : cars
    Created on : Nov 21, 2018, 2:32:21 AM
    Author     : Abhinav Thakur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>cars</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            div{
               background-color: lightgrey;
            }
            ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
.dropdown-content{
    
}
        </style>
    </head>
    <body>
        <div></div>
        <div>
            <ul>
                <li class="active"><a href="used cars">Used Cars</a></li>
                <li><a href="new cars">New Cars</a></li>
                <li><a href="bikes">Bikes</a></li>
                <li><a href="vehicles">Commercial Vehicles</a></li>
                </ul>
        </div>
        <div>
                <% 
                    String url="jdbc:mysql://localhost:3306/java_project?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
        try{
           Connection conn = DriverManager.getConnection(url,private.uname,private.pwd);
           PreparedStatement ps = conn.prepareStatement("select * from addata where name=?");
           ps.setString(1,"");
           ResultSet rs = ps.executeQuery();
           if(rs.next()){
               Blob blob = rs.getBlob("image");
               byte byteArray[] = blob.getBytes(1,(int)blob.length());
               response.setContentType("image/gif");
               OutputStream os = response.getOutputStream("C:\Users\Abhinav Thakur\Documents\NetBeansProjects\WebApp_Project\web\outimg\'car'+i+'.'");
               os.write(byteArray);
               os.flush();
               os.close();
           }
           else{
               System.out.println("No image found with this name");
           }
        }catch(Exception e){
            System.out.print(e);
        }   
                %>
        </div>
    </body>
</html>
