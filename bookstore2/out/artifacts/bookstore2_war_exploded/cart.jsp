<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Cart">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <meta name="author" content="Shivangi Gupta">
    <title>order</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/my.css" rel="stylesheet">
    <style>
        #cart {margin-top:30px;margin-bottom:30px;}
        .panel {border:1px solid #D67B22;padding-left:0px;padding-right:0px;}
        .panel-heading {background:#D67B22 !important;color:white !important;}        
        @media only screen and (width: 767px) { body{margin-top:150px;}}
      .modal-header {background:#D67B22;color:#fff;font-weight:800;}
      .modal-body{font-weight:800;}
      .modal-body ul{list-style:none;}
      .modal .btn {background:#D67B22;color:#fff;}
      .modal a{color:#D67B22;}
      .modal-backdrop {position:inherit !important;}
       #login_button,#register_button{background:none;color:#D67B22!important;}       
       #query_button {position:fixed;right:0px;bottom:0px;padding:10px 80px;
                      background-color:#D67B22;color:#fff;border-color:#f05f40;border-radius:2px;}
  	@media(max-width:767px){
        #query_button {padding: 5px 20px;}
  	}
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
          	<a class="navbar-brand" href="index2.jsp" style="padding: 1px;"><img class="img-responsive" alt="Brand" src="img/logo.jpg" style="width: 147px;margin: 0px;"></a>
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
              <form role="search" method="POST" action="Result.jsp">
                  <input type="text" class="form-control" name="keyword" style="width:80%;margin:20px 10% 20px 10%;" placeholder="Search for a Book , Author Or Category">
              </form>
          </div>
      </div>
<div class="container-fluid" id="cart">
      <div class="row">
          <div class="col-12 text-center" id="heading">
                 <h2 style="color:#D67B22;text-transform:uppercase;">  YOUR CART </h2>
           </div>
        </div>    
        <div class="row">           
          <div class="panel col-xs-12 col-sm-4 offset-sm-0 col-md-4 offset-md-0 col-lg-4 offset-lg-0 text-center" style="color:#D67B22;font-weight:800;">
              <div class="panel-heading">Order 1</div>
              <div class="panel-body">
                  <img class="image-responsive block-center" src="https://sobee.vn/site/wp-content/uploads/2017/08/baitapnguvant-2-400x566.jpg" style="height :100px;"> <br>
                  Title : Ngu Van 12  <br> 
                  Code : NV12    <br>        	 
                  Author : Nguyen X <br>                            	      
                  Edition : 6th <br>
                  Quantity : 2 <br>
                  Price : 100$<br>
                  Sub Total : 50$ <br>
                  <a href="cart.jsp?remove='.$row['PID'].'" class="btn btn-sm" 
                    style="background:#D67B22;color:white;font-weight:800;">
                    Remove
                  </a>
            </div>
          </div>

          <div class="panel col-xs-12 col-sm-4 offset-sm-0 col-md-4 offset-md-0 col-lg-4 offset-lg-0 text-center" style="color:#D67B22;font-weight:800;">
              <div class="panel-heading">Order 2</div>
              <div class="panel-body">
                  <img class="image-responsive block-center" src="http://data.kenhsinhvien.net/files/2013/12/03/KenhSinhVien-tu-tuong-hcm.jpg" style="height :100px;"> <br>
                  Title : Tu Tuong HCM  <br> 
                  Code : TThcm    <br>        	 
                  Author : Tran Y <br>                            	      
                  Edition : 6th <br>
                  Quantity : 2 <br>
                  Price : 100$<br>
                  Sub Total : 50$ <br>
                  <a href="cart.jsp?remove='.$row['PID'].'" class="btn btn-sm" 
                    style="background:#D67B22;color:white;font-weight:800;">
                    Remove
                  </a>
            </div>
          </div>

          <div class="panel col-xs-12 col-sm-4 offset-sm-0 col-md-4 offset-md-0 col-lg-4 offset-lg-0 text-center" style="color:#D67B22;font-weight:800;">
              <div class="panel-heading">Order 3</div>
              <div class="panel-body">
                  <img class="image-responsive block-center" src="http://data.kenhsinhvien.net/files/2013/12/03/KenhSinhVien-tu-tuong-hcm.jpg" style="height :100px;"> <br>
                  Title : Tu Tuong HCM  <br> 
                  Code : TThcm    <br>        	 
                  Author : Tran Y <br>                            	      
                  Edition : 6th <br>
                  Quantity : 2 <br>
                  Price : 100$<br>
                  Sub Total : 50$ <br>
                  <a href="cart.jsp?remove='.$row['PID'].'" class="btn btn-sm" 
                    style="background:#D67B22;color:white;font-weight:800;">
                    Remove
                  </a>
            </div>
          </div>
        </div>           
        </div>                      
        <div class="container">
            <div class="row">  
                <div class="panel col-4 offset-4 text-center" style="color:#D67B22;font-weight:800;">
                    <div class="panel-heading">TOTAL</div>
                    <div class="panel-body">1000$</div>
                </div>
            </div>
        </div>
        <br> <br>
        <div class="row">
            <div class="col-xs-8 offset-xs-2  col-sm-4 offset-sm-2 col-md-4 offset-md-3 col-lg-4 offset-lg-3">
                <a href="index2.jsp" class="btn btn-lg" style="background:#D67B22;color:white;font-weight:800;">Continue Shopping</a>
            </div>
            <div class="col-xs-6 offset-xs-3 col-sm-4 offset-sm-2 col-md-4 offset-md-1 col-lg-4 ">
                <a class="btn btn-lg" style="background:#D67B22;color:white;font-weight:800;margin-top:5px;" class="btn btn-lg" data-toggle="modal" data-target="#query">Make Order</a>
            </div>
        </div>

<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="query" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header text-center">
            <h4 class="modal-title">Purchase Cart</h4>
          </div>
          <div class="modal-body">           
                    <form method="post" class="form" role="form">
                        <div class="form-group">
                             <label for="name">Name</label>
                             <input type="text" class="form-control"  placeholder="Your Name" name="sender" required>
                        </div>
                        <div class="form-group">
                          <label for="city">City</label>
                          <select name="city" class="form-control">
                            <option value="hanoi">Hanoi</option>
                            <option value="danang">Danang</option>
                            <option value="hCM">HCM</option>
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="province">Province</label>
                          <select name="province" class="form-control">
                            <option value="a">A</option>
                            <option value="b">B</option>
                            <option value="c">C</option>
                          </select>
                        </div>
                        <div class="form-group">
                             <label for="address">Address</label>
                             <input type="text" class="form-control" placeholder="Your Address" name="address" required>
                        </div>
                        <div class="form-group">
                             <label  for="phone">Phone Number</label>
                             <input type="text" class="form-control" placeholder="Your Phone Number" name="phone" required>
                        </div>
                        <div class="form-group">
                          <label for="shipment">Shipment method</label>
                          <select name="shipment" class="form-control">
                            <option value="fast">Fast</option>
                            <option value="normal">Normal</option>
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="payment">Payment method</label>
                          <select name="payment" class="form-control">
                            <option value="cash">Cash</option>
                            <option value="visa">Visa Card</option>
                            <option value="member">BookStore Member Card</option>
                          </select>
                        </div>
                        <div class="form-group">
                          <button type="submit" name="submit" value="confirm" class="btn btn-block">
                              Confirm
                            </button>
                        </div>
                    </form>
          </div>
          <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
      </div>
    </div>  
  </div>
</div>
</div>



  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
</body>
<html>		