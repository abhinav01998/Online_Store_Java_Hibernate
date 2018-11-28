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
.dropdown-content{
    
}
        </style>
    </head>
    <body>
        <div></div>
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
        FileOutputStream fout= null;
        int i=1;
        while(rs.next()){
               Blob blob = rs.getBlob(3);
               byte byteArray[] = blob.getBytes(1,(int)blob.length());
              fout=new FileOutputStream("car"+i+".jpg");  
              fout.write(byteArray); 
              String ref = rs.getString(2);
              %>
              <table style="float:left;">
                  <tr><td>
                          <img src=<%="car"+i+".jpg" %>  style="width:200px;height:200px;" >&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                  <tr><td style="text-align: center;font-size: 150%;font-weight: bold;">        
                          <form action="billing.jsp" method="post"> <input type="submit" style="background:none;color:inherit;border:none;padding:0;font: inherit;cursor: pointer;" value=" <%= rs.getString(2) %> "></td></tr>
              </table>                                                                         <input type="hidden" name= "product" value= "<%=""+ref+""%>" > </form>
         
        <%
            //session.setAttribute("userId"+i+"", ref);
            System.out.print(ref);
            System.out.print(request.getParameter("product"));
            //String s = rs.getString(2);
            //session.setAttribute("product",s);
              i++;
            }
        fout.close();
          }
         catch(Exception e){
            System.out.print(e);
         }
        %>
        </div>
        <div class="footer">
          <hr> <p><h2 style="color:#f3c500;display:inline;">QUICK</h2><h2 style="color:#01a185;display:inline;">SELL</h2><br><br>Â© 2018 QuickSell. All Rights Reserved</p>
        </div>
    </body>
</html>
