<%-- 
    Document   : mobiles
    Created on : Nov 19, 2018, 3:03:50 PM
    Author     : Abhinav Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobiles</title>
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
.a{
    background-color: lightgrey;
               padding: 20px;
               margin-top: 1px;
                overflow: hidden;
    width: 100%;
}
        </style>
    </head>
    <body>
        <div class="a">
            
        </div>
        <div class="b">
            <ul>
                <li class="active"><a href="mobiles.jsp">Used Mobiles</a></li>
                <li><a href="new_mobiles.jsp">New Mobiles</a></li>
            </ul>
        </div>
    </body>
</html>
