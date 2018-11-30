<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Cars</title>
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
        <div>
            <ul>
                <li><a href="cars.jsp">Used Cars</a></li>
                <li class="active"><a href="new_cars.jsp">New Cars</a></li>
                <li><a href="bikes.jsp">Bikes</a></li>
                <li><a href="vehicles.jsp">Commercial Vehicles</a></li>
                </ul>
        </div>
        <form action="billing.jsp">
        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/Chevrolet_Trailblazer.jpg" alt="trailblazer" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Chevrolet Trailblazer</h4></td>
                    <td><button type="submit" name="check" value="10">Buy</button></td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/chevroletcorvette.jpg" alt="Corvette" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Chevrolet Corvette</h4></td>
                    <td><button type="submit" name="check" value="11">Buy</button></td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/hyundai_kona.jpg" alt="kona" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>hyundai kona</h4></td>
                    <td><button type="submit" name="check" value="12">Buy</buttton></td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/honda_brio.jpg" alt="Brio" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Honda Brio</h4></td>
                    <td><button type="submit" name="check" value="13">Buy</button></td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/honda_jazz.jpg" alt="Jazz" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Honda Jazz</h4></td>
                    <td><button type="submit" name="check" value="14">Buy</button></td>
                </tr>
            </table>
        </div><div class="c">
            <table>
                <tr>
                    <td><img src="Cars/hyundai_elantra.jpg" alt="Elantra" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Hyundai Elantra</h4></td>
                    <td><button type="submit" name="check" value="15">Buy</button></td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/hyundai_i30.jpg" alt="hyundai i30" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Hyundai i30</h4></td>
                    <td><button type="submit" name="check" value="16">Buy</button></td>
                </tr>
            </table>
        </div>
        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/mahindra_bolero.jpg" alt="mahindra bolero" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Mahindra Bolero</h4></td>
                    <td><button type="submit" name="check" value="17">Buy</button></td>
                </tr>
            </table>
        </div>
            <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/renault_duster.jpg" alt="Renault Duster" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Renault Duster</h4></td>
                    <td><button type="submit" name="check" value="18">Buy</button></td>
                </tr>
            </table>
        </div>
                        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/san_storm.jpg" alt="San Storm" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>San Storm</h4></td>
                    <td><button type="submit" name="check" value="19">Buy</button></td>
                </tr>
            </table>
        </div>
                        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/suzuki_s_cross.jpg" alt="Suzuki S Cross" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Suzuki S Cross</h4></td>
                    <td><button type="submit" name="check" value="20">Buy</button></td>
                </tr>
            </table>
        </div>
                        <div class="c">
            <table>
                <tr>
                    <td><img src="Cars/vento.jpg" alt="Vento" style="height:200px;width:200px"></td>
                </tr>
                <tr>
                    <td><h4>Volkswagen Vento</h4></td>
                    <td><button type="submit" name="check" value="21">Buy</button></td>
                </tr>
            </table>
        </div>
        </form>
            
    </body>
</html>
