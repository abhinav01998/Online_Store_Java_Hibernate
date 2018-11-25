
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
                z-index: 1;
                left: 0;
                overflow-x: hidden;
                padding-bottom: 70%;
            }
            .c{
                background-color: lightgrey;
                float: left;
            }
            .e{
                float: right;
                width: 80%;
            }
            .b a{
                display: block;
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
        <button class="ad" style="width:auto;float:right;padding: 7px;"><a href="post_ad.jsp"> post your free ad</a></button>
                </div>
        <p> </p>
        <div class = "b">
            <ul>
                <li><a href="sub_webpages/furniture.jsp">Furniture</a></li>
                <li><a href="sub_webpages/Appliances.jsp">Appliances</a></li>
                <li><a href="sub_webpages/cars.jsp">Cars</a></li>
                <li><a href="sub_webpages/services.jsp">Services</a></li>
                <li><a href="sub_webpages/jobs.jsp">Jobs</a></li>
                <li><a href="sub_webpages/homes.jsp">Homes</a></li>
                <li><a href="sub_webpages/bikes.jsp">Bikes</a></li>
                <li><a href="sub_webpages/mobiles.jsp">Mobiles</a></li>
                <li><a href="sub_webpages/toys.jsp">Toys</a></li>
                <li><a href="sub_webpages/fashion.jsp">Fashion</a></li>
                <li><a href="sub_webpages/pets.jsp">Pets</a></li>
            </ul>
        </div>
        <div class="d" style="align-content:right">
        <div class="c">
            <h2> Cars </h2>
            <ul>
                <li><a href="used cars">Used Cars</a></li>
                <li><a href="new cars">New Cars</a></li>
                <li><a href="bikes">Bikes</a></li>
                <li><a href="vehicles">Commercial Vehicles</a></li>
                <li><a href="#insurance">Car Insurance</a></li>
            </ul>
        </div>
        <div class="c">
            <h2>    Bikes    </h2>
            <ul>
            <li><a href="new bikes">New Bikes</a></li>
                <li><a href="used bikes">Used Bikes</a></li>
                <li><a href="use scooters">Used scooters</a></li>
                <li><a href="certifies bikes">Certified bikes</a></li>
                <li><a href="#insurance">Bike Insurance</a></li>
            </ul>
        </div>
        <div class="c">
            <h2>    Homes   </h2>
            <ul>
            <li><a href="Men-PG">PGs for Men</a></li>
                <li><a href="Women-PG">PGs for Women</a></li>
                <li><a href="shared">Shared Rooms</a></li>
                <li><a href="certified">Certified Rooms</a></li>
                <li><a href="house">Houses</a></li>
            </ul>
        </div>
        <div class="c">
            <h2>    Bazaar    </h2>
            <ul>
            <li><a href="#Furniture">Furniture</a></li>
                <li><a href="#decor">Decor</a></li>
                <li><a href="#Electronics">Electronics</a></li>
                <li><a href="#Mobiles">Mobiles</a></li>
                <li><a href="#appliances">Appliances</a></li>
            </ul>
        </div>
        <div class="c">
            <h2>    Entertainment   </h2>
            <ul>
            <li><a href="roles">acting</a></li>
                <li><a href="#gossip">Gossips</a></li>
                <li><a href="agency">Modeling agency</a></li>
                <li><a href="#photography">Photography</a></li>
                <li><a href="#makeup">MakeUp</a></li>
            </ul>
        </div>
            <hr>
            <div class="e">
                <div id="myCarouselWrapper" class="container-fluid">

    	 <div id="myCarousel" class="carousel slide">

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/car1.jpg" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/car2.jpg" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/car3.jpg" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/cra4.jpg" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/car1.jpg" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/car2.jpg" class="img-responsive"></a></div>
    </div>
     <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/car3.jpg" class="img-responsive"></a></div>
    </div>
     <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/cra4.jpg" class="img-responsive"></a></div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>   

</div>
            </div>
            <hr>
            <div class="e">
                <div id="myCarouselWrapper" class="container-fluid">

    	 <div id="myCarousel" class="carousel slide">

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/car2.jpg" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/CCCCCC&text=2" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/eeeeee&text=3" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f4f4f4&text=4" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/fcfcfc/333&text=5" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=6" class="img-responsive"></a></div>
    </div>
     <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=7" class="img-responsive"></a></div>
    </div>
     <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=8" class="img-responsive"></a></div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>   

</div>
            </div>
            <hr>
            <div class="e">
                <div id="myCarouselWrapper" class="container-fluid">

    	 <div id="myCarousel" class="carousel slide">

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/car3.jpg" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/CCCCCC&text=2" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/eeeeee&text=3" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f4f4f4&text=4" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/fcfcfc/333&text=5" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=6" class="img-responsive"></a></div>
    </div>
     <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=7" class="img-responsive"></a></div>
    </div>
     <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=8" class="img-responsive"></a></div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>   

</div>
            </div>
            <hr>
            <div class="e">
                <div id="myCarouselWrapper" class="container-fluid">

    	 <div id="myCarousel" class="carousel slide">

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="Images/cra4.jpg" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/CCCCCC&text=2" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/eeeeee&text=3" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f4f4f4&text=4" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/fcfcfc/333&text=5" class="img-responsive"></a></div>
    </div>
    <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=6" class="img-responsive"></a></div>
    </div>
     <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=7" class="img-responsive"></a></div>
    </div>
     <div class="item">
      <div class="item-item col-md-3 col-sm-4"><a href="#"><img src="http://placehold.it/500/f477f4/fff&text=8" class="img-responsive"></a></div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>   

</div>
            </div>
        </div>
    </body>
</html>
