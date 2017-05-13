<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>codeengine</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/clean-blog.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
   <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

<style>

.card-container {
  cursor: pointer;
  height: 150px;
  perspective: 600;
  position: relative;
  width: 150px;
}
.card {
  height: 100%;
  position: absolute;
  transform-style: preserve-3d;
  transition: all 1s ease-in-out;
  width: 100%;
}
.card:hover {
  transform: rotateY(180deg);
}
.card .side {
  backface-visibility: hidden;
  border-radius: 6px;
  height: 100%;
  position: absolute;
  overflow: hidden;
  width: 100%;
}
.card .back {
  background: #eaeaed;
  color: #0087cc;
  line-height: 150px;
  text-align: center;
  transform: rotateY(180deg);
}
.logo-img {
    float: left;
    position: relative;
    margin: 0px 0px 0px 0px;
}
</style>
</head>

<body>
<!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
             <img src="img/logo.png" height="150px" class="logo-img" >
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="about.jsp">About</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    <li>
                        <a href="faq1.jsp">FAQ's</a>
                    </li>   
                    <!--  <li><a href="#signup" data-toggle="modal" data-target=".bs-modal-sm"> <span class="glyphicon glyphicon-user"> <b> SignUp </b></span></a></li> -->
        <li><a href="#login" data-toggle="modal" data-target=".bs-modal-lg"> <span class="glyphicon glyphicon-log-in"> <b> Login </b></span></a></li>
        <!--  <li><a href="#login1" data-toggle="modal" data-target=".bs-modal-lg"> <span class="glyphicon glyphicon-log-in"> <b> Admin Login </b></span></a></li> -->
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
  
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>Think Twice Code Once!</h1>
                        <hr class="small">
                        <span class="subheading"><h3>while(!(succeed = try()));</h3></span>
                    </div>
                    
                </div>
            </div>
        </div>
   </header>
   <center>
    <div class="container">
   <h1>What Others are Saying</h1>
    <h5><i>They did it.. So can you !</i></h5>
   <br>
   <br>
    <div class="row slideanim">
    <div class="col-sm-4">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
               <div class="card-container">
        <div class="card">
        <div class="side"><img src="img/code.jpg" height="150" width="150"></div>
        <div class="side back">MCA student</div>
        </div> 
       </div>
      <blockquote>"I tried many other websites, who offer programming challenges  but  I loved the way CodeEngine for C creates challenges for the users."</blockquote>
       <div align="right">- Dona  </div>
  
  </div>
      </div>
        </div>
   
<div class="col-sm-4">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
               <div class="card-container">
        <div class="card">
        <div class="side"><img src="img/code2.png" height="150" width="150" alt="Jimmy Eat World"></div>
        <div class="side back">BE student</div>
       </div>
        </div> 
        <blockquote>"I have tried about a dozen websites <br> to learn coding and Codeengine  <br> for C is the only one I have stuck to."</blockquote>
       <div align="right">- Rahul</div>
        </div>
        </div>
           </div>
                
        
        <div class="col-sm-4">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
               <div class="card-container">
        <div class="card">
        <div class="side"><img src="img/code1.jpg" height="150" width="150" alt="Jimmy Eat World"></div>
        <div class="side back">Trainer</div>
       </div>
        </div> 
           
        <blockquote>"I have been training students since 2years <br>and Codeengine for C helped many of <br> my students to improve their coding skill.</blockquote>
       <div align="right">- Sonal</div>
        </div>
        </div>
       </div>
           </div>
          </div>
      </center>
    </div>
    <br>
    <br>
    <p align="center"><a href="contact.jsp">Any opinion ? Please Login and Inbox Us </a></p>
    <br>
    <hr>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="https://twitter.com/login">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://github.com/login">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Copyright &copy;Codeengine 2017</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/clean-blog.min.js"></script>
     <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="//code.jquery.com/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>
    
 <!-- login Form -->
 <div class="modal fade bs-modal-lg" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
<br>     

  <div class="login" >
    <form action="validatelogin.jsp" method="post"> 
    <div class="login-screen">
    <div class="app-title">
<h1>Login</h1>
</div>
<br>
<br>
<div class="login-form">
<div class="control-group">
<input type="email" class="email" value="" placeholder="Email" id="email" name="email" required/>
</div>

<div class="login-form">
<div class="control-group">
<input type="password" class="login-field" value="" placeholder="password" id="login-pass" name="password" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" maxlength="10" required/>
</div>
</div>
<div class="login-form">
<div class="control-group">
<input type="submit" value="Login"  style="background:#f44336; color:#e7e7e7;"/>
</div>
</div>

<div class="modal-footer">
      <center>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </center>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</body>

</html>
