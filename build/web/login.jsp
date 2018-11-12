<%-- 
    Document   : login
    Created on : Nov 12, 2018, 8:47:39 PM
    Author     : Abhinav Thakur
--%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>authentication</title>
    </head>
    <body>
        <%
         String user=request.getParameter("uname");
            String pass=request.getParameter("psw");
            String url="jdbc:mysql://localhost:3306/java_project";
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","Abhi123@");
            String query="select * from table1";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
      String username=rs.getString("username");
      String passs=rs.getString("password");
      if(pass.equals(passs))
      {
          if(username.equals(user))
          {
         out.println("login successfull");
          }
      }
            }
        %>
    </body>
</html>
