<%-- 
    Document   : cars
    Created on : Nov 21, 2018, 2:32:21 AM
    Author     : Abhinav Thakur
--%>

<%@page import="java.io.FileOutputStream"%>
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
.c{
    float: left;
    padding: 20px 30px;
    border: 1px solid black;
}
        </style>
    </head>
    <body>
        <button style="float: right;display: block;"><a href="C:\Users\Abhinav Thakur\Documents\NetBeansProjects\WebApp_Project\web\home1.jsp">Home</a></button>
        <div>
            <ul>
                <li class="active"><a href="cars.jsp">Used Cars</a></li>
                <li><a href="new_cars.jsp">New Cars</a></li>
                <li><a href="bikes.jsp">Bikes</a></li>
                <li><a href="vehicles.jsp">Commercial Vehicles</a></li>
                </ul>
        </div>
        <div>
      
        <% 
             String url="jdbc:mysql://localhost:3306/java_project?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true";
            try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url,"root","Abhi123@");
        String q = "Select * from addata where category = ?";
        PreparedStatement ps = conn.prepareStatement(q);
        ps.setString(1,"Cars");
        ResultSet rs = ps.executeQuery();
        //OutputStream os =response.getOutputStream();
        FileOutputStream fout = null;
        int i=1;
        int j=22;
        while(rs.next()){
               Blob blob = rs.getBlob(3);
               byte byteArray[] = blob.getBytes(1,(int)blob.length());
             fout=new FileOutputStream("C:/Users/Abhinav Thakur/Documents/NetBeansProjects/WebApp_Project/web/sub_webpages/outimg/"+i+".jpg"); 
             fout.write(byteArray); 
              String ref = rs.getString(2);
              %>
              <form action="billing.jsp">
        <div class="c">
            <table>
                <tr>
                    <td><img src=<%="outimg/its"+i+".jpg" %>  style="width:200px;height:200px;" >&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td><h4><%System.out.print(ref);%></h4></td>
                    <td><button type="submit" name="check" value=j>Buy</button></td>
                </tr>
            </table>
        </div>
              </form>
        <%
            //session.setAttribute("userId"+i+"", ref);
            System.out.print(ref);
            System.out.print(request.getParameter("product"));
            //String s = rs.getString(2);
            //session.setAttribute("product",s);
              i++;
              j++;
            }
        fout.close();
          }
         catch(Exception e){
            System.out.print(e);
         }
        %>
        </div>
        
    </body>
</html>
