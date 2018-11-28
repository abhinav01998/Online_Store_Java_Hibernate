<%-- 
    Document   : post_ad
    Created on : Nov 21, 2018, 11:33:57 AM
    Author     : Abhinav Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Free Ad</title>
        <style>
            body{
               background:url(bg2.jpg);
               background-repeat: no-repeat;
               background-size:100% 150%;
            }
            .subm{
                align-content:center;
            }
            input[type=text],input[type=number],input[type=email],input[type=file]{
                border-radius: 7px;
            }
            .selc,.op{
                border-radius: 7px;
                padding:5px 10px;
            }
        </style>
    </head>
    <body>
            <div align="center" style="font-size: 40px;">Post Your Ad</div>
            <div style="margin-left:300px">
                <form action="AdServlet" method="post" enctype="multipart/form-data">
                <table>
            <tr> <td><h3>Category: </h3></td>
                <td> <select name="category" class="selc" required>
                <option class="op">Cars</option>
                <option>Bikes</option>
                <option>Mobiles</option>
                <option>Furniture</option>
                <option>Appliances</option>
                <option>Jobs</option>
                <option>Homes</option>
                <option>Toys</option>
                <option>Fashion</option>
                <option>Pets</option>
                <option>Services</option>
                    </select></td></tr>
            <tr><td><h3>Product: </h3></td>
                <td> <input type="text" name="product" required></td></tr>
            <tr><td><h3>Choose Image for your Product: </h3></td>
                    
                <td><input type="file" name="upload" id="upload"></td></tr>
            
            <tr><td><h3>Product Price: </h3></td>
                <td><input type="number" name="price" required></td></tr>
            
            <tr><td><h3>Seller Name: </h3></td>
                <td><input type="text" name="seller" required></td></tr>
            
            <tr><td><h3>Contact-no: </h3></td>
                <td><input type="number" name="contact" required></td></tr>
                    
            <tr><td> <h3>Seller Email-id: </h3></td>
                <td><input type="email" name="email" required></td></tr>
                    <br>
                    <tr><td></td><td class="subm"><input type="submit" value="submit"></td></tr>
                     
                </table>
                     </form>     
        </div>
    </body>
</html>
