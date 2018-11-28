
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>home page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link rel="stylesheet" href="logincss.css">
       <link rel="stylesheet" href="sidenav.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="validatereg.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script>
var flag = 0;

function show(){
    var modall = document.getElementById('id01');
    if(flag === 0){
        
        modall.style.display = "block";
        flag = 1;
    }else{
        
        modall.style.display = "none";
        flag = 0;
    }
}
    function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    }

    function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    }
    $('#myCarousel').carousel({
  interval: 4000
});

$('.carousel .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));

  for (var i=0;i<2;i++) {
    next=next.next();
    if (!next.length) {
      next = $(this).siblings(':first');
    }

    next.children(':first-child').clone().appendTo($(this));
  }
});
        </script>
        <style>
            body{
             background-image: url("background.jpg");
             background-repeat: no-repeat;
             background-attachment: fixed;
            }
            .a{
               background-color: lightgrey;
               padding: 20px;
               margin-top: 1px;
                overflow: hidden;
                width:100%;
            }   
            .b{
                background-color: lightgrey;
                float: left;
                top: 0;
                z-index: 1;
                left: 0;
                overflow-x: hidden;
                overflow-y: hidden;
                height: 40vh;
                padding-bottom: 38%;
            }
            .c{
                background-color: lightgrey;
                float: left;
                 margin-right: 20px;
                margin-left: 20px;
            }
            .d{
                overflow-y: scroll;
                height: 80vh; 
            }
            .e{
                float: right;
                width: 100%;
            }
            .g{
                float: right;
                width: 100%;
            }
            .b a{
                display: block;
            }
            #sli{
                margin-left: 0px;
            }
            ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 250px;
    background-color: #f1f1f1;
}
li a{
    display: block;
    color: #000;
    padding: 10px 25px;
    text-decoration: none;
    border-bottom: 1px solid #6E9191; 
}

li a:hover{
    border-left: 7px solid blue;
    background-color: lightgrey;
}
div{
    margin-left: 10px;
    margin-bottom: 10px;
}

.modal1{
    display:none;
}

.a .search-container {
  float: left;
}

.a .search-container input[type=text] {
  padding: 6px;
  font-size: 17px;
  border: none;
  margin-bottom: 10px;
}

.a .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 0px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}
input[type=text], input[type=password], input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    }
    
#btn{
   display:inline-block; 
}
.a .search-container button:hover {
  background: #ccc;
}
*{
    box-sizing: border-box;
}
.search-container input[type=text] {
        border: 1px solid #ccc;
    }
    .brdr{
        border-radius: 5px;
         margin-left:8px;
         margin-right: 8px;
    }
    .signn{
        position:center;
    }
    .ad{
        display: block;
        background: #ddd;
    }
     @media (min-width: 768px) and (max-width: 991px) {
      #myCarousel .carousel-inner .item .item-item:last-child {
        display: none;
      }
   }
@media (max-width: 768px) {
     #mymyCarousel .carousel-inner {
      height: 320px;
    }
 }
.carousel-inner {
  overflow-y: hidden;
}
.carousel-inner .active.left { left: -25%; }
.carousel-inner .next        { left:  25%; }
.carousel-inner .prev    { left: -25%; }
.carousel-control        { width:  4%; }
.carousel-control.left,.carousel-control.right {margin-left:15px;background-image:none;}
.carousel-inner .item-item {
  padding:0!important;
}
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
.close {
    position: fixed;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}
#slider{
    background-color: transparent;
}
      </style>
    </head>
    <body>
        <div class = "a">
            <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="<%if(session!=null){%> 
      home1.jsp
      <%}
else{%>
home.jsp
<%}%>">Home</a>
  <a href="cars.jsp">Cars</a>
  <a href="bikes.jsp">Bikes</a>
  <a href="mobiles.jsp">Mobiles</a>
  <a href="furniture.jsp">Furniture</a>
</div>
            <span style="font-size:30px;cursor:pointer;float:left" onclick="openNav()">&#9776; QuickSell          </span>
            <div class="search-container" style="width:20%">
            <form>
                <input type="text" placeholder="search.." name="search" style="width:80%;display: inline-block">
                <button type="submit" id="btn" style="width:20%;display: inline-block"><i class="fa fa-search"></i></button>
            </form>
                </div>
        <button onclick="show()" style="width:auto;float:right;padding: 7px;">Register</button>
        <div id="id01" class="modal1">
       
        <div  class="modal1-content animate" style="width: 500px;">
            <div class="imgcontainer"  style="border:1px solid black">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>
          <form name="registerform" action="Registration_servlet" method="post" onsubmit="return pass()">
              <div class="container" style="width: 500px;">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
    <label for="email"><b>Email</b></label>
    <input type="email" class="brdr" placeholder="Enter Email" name="email" required>

    <label for="uname"><b>Username</b></label>
    <input type="text" class="brdr" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" class="brdr" placeholder="Enter Password" name="psw" required>
    
    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" class="brdr" placeholder="Repeat Password" name="psw-repeat" required>
    
    <hr>
    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin" style="width: 500px;">
    <p>Already have an account? <a href="login_page.html" class="signn">Sign in</a>.</p>
  </div>
</form>

                </div>
        </div>
                </div>
        <p> </p>
        <div class = "b">
            <ul>
                <li><a href="sub_webpages/furniture.jsp">Furniture</a></li>
                <li><a href="sub_webpages/Appliances.jsp">Appliances</a></li>
                <li><a href="sub_webpages/cars.jsp">Cars</a></li>
                <li><a href="sub_webpages/homes.jsp">Homes</a></li>
                <li><a href="sub_webpages/bikes.jsp">Bikes</a></li>
                <li><a href="sub_webpages/mobiles.jsp">Mobiles</a></li>
            </ul>
        </div>
        <div class="d" style="align-content:right">
        <div class="c">
            <h2> Cars </h2>
            <ul>
                <li><a href="sub_webpages/cars.jsp">Used Cars</a></li>
                <li><a href="sub_webpages/new_cars.jsp">New Cars</a></li>
                <li><a href="sub_webpages/bikes.jsp">Bikes</a></li>
                <li><a href="sub_webpages/scooters.jsp">Scooters</a>
                <li><a href="sub_webpages/vehicles.jsp">Commercial Vehicles</a></li>
            </ul>
        </div>
        <div class="c">
            <h2>    Bikes    </h2>
            <ul>
            <li><a href="sub_webpages/bikes.jsp">Bikes</a></li>
                <li><a href="sub_webpages/scooters.jsp">Scooters</a></li>
                <li><a href="sub_webpages/cars.jsp">Used Cars</a></li>
                <li><a href="sub_webpages/new_cars.jsp">New Cars</a>
                <li><a href="sub_webpages/vehicles.jsp">Commercial Vehicles</a></li>
            </ul>
        </div>
        <div class="c">
            <h2>    Homes   </h2>
            <ul>
            <li><a href="sub_webpages/homes.jsp#men_pg">PGs for Men</a></li>
                <li><a href="sub_webpages/homes.jsp#women_g">PGs for Women</a></li>
                <li><a href="sub_webpages/homes.jsp#shared">Shared Rooms</a></li>
                <li><a href="sub_webpages/homes.jsp#certified">Certified Rooms</a></li>
                <li><a href="sub_webpages/homes.jsp">Houses</a></li>
            </ul>
        </div>
        <div class="c">
            <h2>    Bazaar    </h2>
            <ul>
            <li><a href="sub_webpages/Furniture.jsp">Furniture</a></li>
                <li><a href="sub_webpages/decor.jsp">Decor</a></li>
                <li><a href="sub_webpages/Electronics.jsp">Electronics</a></li>
                <li><a href=sub_webpages/"Mobiles.jsp">Mobiles</a></li>
                <li><a href="sub_webpages/appliances.jsp">Appliances</a></li>
            </ul>
        </div>
        </div>
            <hr>
            <div class="g" style="align-content:right">
                <h2 style="margin-left: 150px"> Latest cars: </h2>
    <div class="container">
        <div class="row" >
            <div class="col-xs-12" >

                <div id="imageCarousel" class="carousel slide" data-interval="2000"
                     data-ride="carousel" data-pause="hover" data-wrap="true">

                    <ol class="carousel-indicators" >
                        <li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#imageCarousel" data-slide-to="1"></li>
                        <li data-target="#imageCarousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active" id="slider">
                            <div class="row">
                                <div class="col-xs-4" id="sli">
                                    <img src="Images/Energica.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>Energica_ego</h3>
                                        <p>It is an electric bike, new to the bike market</p>
                                    </div>
                                </div>
                                <div class="col-xs-4"id="sli">
                                    <img src="Images/ducati_1198.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>Ducati 1198</h3>
                                        <p>Ducati 1198 is a superbike made by famous brand Ducati.</p>
                                    </div>
                                </div>
                                <div class="col-xs-4" id="sli">
                                    <img src="Images/tesla_model_m_concept.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>Tesla Model M concept</h3>
                                        <p>A concept bike by Tesla motors that is yet to be tested, a bike of future.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item" id="slider">
                            <div class="row">
                                <div class="col-xs-4" id="sli">
                                    <img src="Images/yamaha_xvs_1300.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>Yamaha XVS 1300</h3>
                                        <p>A superbike by Yamaha motors using the latest bike design technology</p>
                                    </div>
                                </div>
                                <div class="col-xs-4" id="sli">
                                    <img src="Images/ninja.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>Kawasaki Ninja ZX 6R</h3>
                                        <p> Ninja ZX 6R is a bike made by Kawasaki and is a famous bike in the world of racing</p>
                                    </div>
                                </div>
                                <div class="col-xs-4" id="sli">
                                    <img src="Images/darkb.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>Suzuki Dark Bike</h3>
                                        <p>This Suzuki bike has nice looks as well as nice speed</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item" id="slider">
                            <div class="row">
                                <div class="col-xs-4" id="sli">
                                    <img src="Images/buell.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>Buell Ligtning XB12 SCG</h3>
                                        <p>This superbike is a powerful BEAST made by Buell motors</p>
                                    </div>
                                </div>
                                <div class="col-xs-4" id="sli">
                                    <img src="Images/ktm.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>KTM RC8</h3>
                                        <p>RC8 is an extremely speedy superbike by KTM and is quite popular</p>
                                    </div>
                                </div>
                                <div class="col-xs-4" id="sli">
                                    <img src="Images/Hayabusa.jpg" class="img-responsive">
                                    <div class="carousel-caption">
                                        <h3>SUZUKI HAYABUSA</h3>
                                        <p>Hayabusa is a very powerful bike by suzuki, this one is in orange color</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a href="#imageCarousel" class="carousel-control left" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a href="#imageCarousel" class="carousel-control right" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>

            </div>
        </div>
    </div>     
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
    </script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
        </div>
    </body>
</html>
