<%-- 
    Document   : billing
    Created on : Nov 24, 2018, 8:19:51 PM
    Author     : Abhinav Thakur
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>billing-page</title>
    </head>
    <body>
        <div >
      <h1>Proceed to Buy</h1>
           <table cellspacing="20vw;" style="">
               <tr>
                   <th>Item</th>
                   <th>Price</th>
               </tr>
              
       <% 
           PrintWriter pw=response.getWriter();
           double sum=0;
           Class.forName("com.mysql.cj.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/java_project?useSSL=false";
           Connection conn=DriverManager.getConnection(url,"root","Abhi123@");
           Statement st=conn.createStatement();
           ResultSet rs;
           String[] str;
           str=request.getParameterValues("check");
           float count=0;
           if(str!=null){
               for(int i=0;i<str.length;i++){
                   st.executeQuery("select item_name,price from cart1 where id="+str[i]+"");
                   rs=st.getResultSet();
                   while(rs.next()){
                       String nameVal=rs.getString("item_name");
                       int c=rs.getInt("price");
           
               sum+=c;
               System.out.print(sum);
               int q=1;
               count++;%>
               <tr><td><%= rs.getString("item_name")%></td>
                   <td><%= rs.getInt("price")%></td>
               </tr>
               <%
              }}%>
              <tr style="font-size: 1.75vw;font-weight: bolder;">
                  <td>Total</td>
                  <td><%= sum%></td>
              </tr>
              <tr style="font-size: 1.75vw">
                  <td><button onclick="">Buy</button></td>
              </tr>
<%
           }
       %>
           </table>
       </div>
    </body>
</html>
