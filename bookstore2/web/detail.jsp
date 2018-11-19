<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Books">
    <meta name="author" content="Shivangi Gupta">
    <title> Online Bookstore</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/my.css" rel="stylesheet">

    <style>  
        @media only screen and (width: 768px) { body{margin-top:150px;}}
        @media only screen and (max-width: 760px) { #books .row{margin-top:10px;}}
        .tag {display:inline;float:left;padding:2px 5px;width:auto;background:#F5A623;color:#fff;height:23px;}
        .tag-side{display:inline;float:left;}
        #books {border:1px solid #DEEAEE; margin-bottom:20px;padding-top:30px;padding-bottom:20px;background:#fff; margin-left:10%;margin-right:10%;}
        #description {border:1px solid #DEEAEE; margin-bottom:20px;padding:20px 50px;background:#fff;margin-left:10%;margin-right:10%;}
        #description hr{margin:auto;}
        #service{background:#fff;padding:20px 10px;width:112%;margin-left:-6%;margin-right:-6%;}
        .glyphicon {color:#D67B22;}
    </style>

</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index2.jsp"><img alt="Brand" src="img/logo.jpg" style="width: 118px;margin-top: -7px;margin-left: -10px;"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
          <ul class="nav navbar-nav navbar-right">
                    <li><a href="cart.jsp" class="btn btn-md"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a></li>
                    <li><a href="destroy.jsp" class="btn btn-md"> <span class="glyphicon glyphicon-log-out">LogOut</span></a></li>
          </ul>
      </div><!-- /.container-fluid -->
    </nav>

    <div id="top" >
        <div id="searchbox" class="container-fluid" style="width:112%;margin-left:-6%;margin-right:-6%;">
            <div>
                <form role="search" action="Result.jsp" method="post">
                    <input type="text" name="keyword" class="form-control" placeholder="Search for a Book , Author Or Category" style="width:80%;margin:20px 10% 20px 10%;">
                </form>
            </div>
        </div>
   </div>


    <%-- <?jsp
    include "dbconnect.jsp";
    $PID=$_GET['ID'];
    $query = "SELECT * FROM products WHERE PID='$PID'";
    $result = mysqli_query ($con,$query)or die(mysql_error());
        if(mysqli_num_rows($result) > 0) 
        {   
            while($row = mysqli_fetch_assoc($result)) 
            {
            $path="img/books/".$row['PID'].".jpg";
            $target="cart.jsp?ID=".$PID."&";
echo ' --%>
  <div class="container-fluid" id="books">
    <div class="row">
      <div class="col-sm-10 col-md-6">
                          <div class="tag">50% OFF</div>
                              <div class="tag-side"><img src="img/orange-flag.png">
                          </div>
                         <img class="center-block img-responsive" src="https://sobee.vn/site/wp-content/uploads/2017/08/baitapnguvant-2-400x566.jpg" height="550px" style="padding:20px;">
      </div>
      <div class="col-sm-10 col-md-4 offset-md-1">
        <h2> Ngu Van 12</h2>
                                <span style="color:#00B9F5;">
                                Nguyen X - NXB GIAO DUC
                                </span>
        <hr>            
                                <span style="font-weight:bold;"> Quantity : </span>
                                <select id="quantity">
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="5">5</option>
                                </select>
                                <br><br><br>
                                <a id="buyLink" href="'.$target.'" class="btn btn-lg btn-danger" style="padding:15px;color:white;text-decoration:none;"> 
                                    ADD TO CART for only 50$ until 28th November 2018<br>
                                    <span style="text-decoration:line-through;"> 100$</span> 
                                    | 50% discount
                                 </a> 
      </div>
    </div>
          </div>
          <div class="container-fluid" id="description">
    <div class="row">
      <h2> Description </h2> 
                        <p> For Student only </p>
                        <pre style="background:inherit;border:none;">
   PRODUCT CODE  NV12  <hr> 
   TITLE         Ngu Van 12 <hr> 
   AUTHOR        Nguyen X <hr>
   AVAILABLE     20 <hr> 
   PUBLISHER     NXB Giao duc<hr> 
   EDITION       6th <hr>
   LANGUAGE      Vietnamese <hr>
   PAGES         120 <hr>
                        </pre>
    </div>
  </div>
</div>



<div class="container-fluid" id="service">
      <div class="row">
          <div class="col-sm-6 col-md-3 text-center">
               <span class="glyphicon glyphicon-heart"></span> <br>
               24X7 Care <br>
               Happy to help 24X7, call us on 0120-3062244 or click here
          </div>
          <div class="col-sm-6 col-md-3 text-center">
               <span class="glyphicon glyphicon-ok"></span> <br>
               Trust <br>
               Your money is yours! All refunds come with no question asked guarantee.
          </div>
          <div class="col-sm-6 col-md-3 text-center">
               <span class="glyphicon glyphicon-check"></span> <br>
               Assurance <br>
               We provide 100% assurance. If you have any issue, your money is immediately refunded. Sit back and enjoy your shopping.
          </div>
          <div class="col-sm-6 col-md-3 text-center">
               <span class="glyphicon glyphicon-tags"></span> <br>
               24X7 Care <br>
               Happiness is guaranteed. If we fall short of your expectations, give us a shout.
          </div>
      </div>
</div>
 


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<script>
            $(function () {
                var link = $('#buyLink').attr('href');
                $('#buyLink').attr('href', link + 'quantity=' + $('#quantity option:selected').val());
                $('#quantity').on('change', function () {
                    $('#buyLink').attr('href', link + 'quantity=' + $('#quantity option:selected').val());
                });
            });
    </script>
</body>
</html>   