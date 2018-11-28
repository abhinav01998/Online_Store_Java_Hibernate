<%-- 
    Document   : vehicles
    Created on : Nov 21, 2018, 2:33:48 AM
    Author     : Abhinav Thakur
--%>

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
                <li><a href="cars.jsp">Used Cars</a></li>
                <li><a href="new_cars.jsp">New Cars</a></li>
                <li><a href="bikes.jsp">Bikes</a></li>
                <li class="active"><a href="vehicles.jsp">Commercial Vehicles</a></li>

            </ul>
        </div>
    </body>
</html>
