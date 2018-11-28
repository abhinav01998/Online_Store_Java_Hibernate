<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Mobiles</title>
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
.c{
    float: left;
    padding: 20px 30px;
    border: 1px solid black;
}
        </style>
    </head>
    <body>
        <div class="a">
            <h2> Here you can find a variety of new Mobiles to buy from.</h2>
        </div>
        <div class="b">
            <ul>
                <li><a href="mobiles.jsp">Used Mobiles</a></li>
                <li class="active"><a href="new_mobiles.jsp">New Mobiles</a></li>
            </ul>
        </div>
        <form action="billing.jsp">
            <table>
                <tr><td>
        <div class="c">
            <table>
                <tr>
                    <td><img src="iphonexr.jpg" alt="iphonexr" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Iphone XR</h4></td>
                    <td><input type="checkbox" name="check" value="1">Buy</td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="iphonexs.jpg" alt="iphonexs" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Iphone XS</h4></td>
                    <td><input type="checkbox" name="check" value="2">Buy</td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="motox4.jpg" alt="motox4" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Moto X4</h4></td>
                    <td><input type="checkbox" name="check" value="3">Buy</td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="motoe5plus.jpg" alt="motoe5plus" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Moto E5 Plus</h4></td>
                    <td><input type="checkbox" name="check" value="4">Buy</td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="iphone7plus.jpg" alt="iphone7plus" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Iphone 7 Plus</h4></td>
                    <td><input type="checkbox" name="check" value="5">Buy</td>
                </tr>
            </table>
        </div><div class="c">
            <table>
                <tr>
                    <td><img src="Note8.jpg" alt="Note8" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Galaxy Note 8</h4></td>
                    <td><input type="checkbox" name="check" value="6">Buy</td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="iphone8plus.jpg" alt="iphone8plus" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Iphone 8 Plus</h4></td>
                    <td><input type="checkbox" name="check" value="7">Buy</td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="nokia8.jpg" alt="Nokia 8" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Nokia 8</h4></td>
                    <td><input type="checkbox" name="check" value="8">Buy</td>
                </tr>
            </table>
        </div>
            <div class="c">
            <table>
                <tr>
                    <td><img src="lenovoa6600.jpg" alt="Lenovoa6600" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>LenovoA6600</h4></td>
                    <td><input type="checkbox" name="check" value="9">Buy</td>
                </tr>
            </table>
        </div>
                    </td></tr>
                <tr><td style="align-content:center"><input type="submit" value="submit"></td></tr>
    </form>
    </body>
</html>
