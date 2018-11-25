<%-- 
    Document   : login
    Created on : Nov 12, 2018, 8:47:39 PM
    Author     : Abhinav Thakur
--%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>authentication</title>
    </head>
    <body>
        <%
         String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            String url = "jdbc:mysql://localhost:3306/java_project?useSSL=false&allowPublicKeyRetrieval=true&verifyServerCertificate=false&allowMultiQueries=true";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","Abhi123@");
            String query="select * from table1";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
      String username=rs.getString("username");
      String pass1=rs.getString("password");
      if(pass.equals(pass1))
      {
          if(user.equals(username))
          {
         out.println("login successfull");
          }
      }
      else{
              out.println("wrong username or password, login again");
          }
            }
        %>
    </body>
</html>
