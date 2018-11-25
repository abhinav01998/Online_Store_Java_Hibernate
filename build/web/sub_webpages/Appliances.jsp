<%-- 
    Document   : Appliances
    Created on : Nov 20, 2018, 10:37:21 PM
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
                <li class="active"><a href="#ac">Air Conditioners</a></li>
                <li><a href="#refrigerator">Refrigerators</a></li>
                <li><a href="#kitchen">Kitchen Appliances</a></li>
                <li><a href="#small">Small Appliances</a></li>
                <li><a href="#washing">Washing Machines</a></li>
            </ul>
        </div>
    </body>
</html>
