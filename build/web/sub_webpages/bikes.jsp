<%-- 
    Document   : bikes
    Created on : Nov 19, 2018, 3:03:39 PM
    Author     : Abhinav Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <li><a href="cars.html">Used Cars</a></li>
                <li><a href="newcars.jsp">New Cars</a></li>
                <li class="active"><a href="bikes.jsp">Bikes</a></li>
                <li><a href="vehicles.jsp">Commercial Vehicles</a></li>
                
            </ul>
        </div>
    </body>
</html>
