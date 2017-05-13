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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
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
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
  

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('img/about-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="page-heading">
                        <h1>About Us</h1>
                        <hr class="small">
                        <span class="subheading">This is what We do.</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <p>CodeEngine for C focuses on programming challenges for users. The input and output assertions are defined for every challenge. Proper test cases will be executed to check the correctness of the solution which is submitted by the user. The number of attempts for correct solution made for each challenge by the user is tracked to describe their score. Hint will be provided to the user to make him/her understand the challenge and solve the challenge accordingly. </p>
            </div>
        </div>
    </div>

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
    
    <!-- start of signup -->
    <!-- Sign Up Form -->
 <!--  <div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
<br>     

  <div class="login">
    <form action="validatereg.jsp" method="post">
    <div class="login-screen">
    <div class="app-title">
<h1><b>Signup</b></h1>
</div>
<br>
<br>
<div class="login-form">
<div class="control-group">
<input type="text" class="login-field" value="" placeholder="Username" id="login-name" name="username" required/>
</div>


<div class="login-form">
<div class="control-group">
<input id="email" name="email" placeholder="example@domain.com" type="email" required/>
</div>


<div class="login-form">
<div class="control-group">
<input type="password" class="login-field" value="" placeholder="password" id="txtPassword" name="password" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" maxlength="10" required/>
</div>

<div class="login-form">
<div class="control-group">
<input type="password" class="login-field" value="" placeholder="confirm_password" id="txtConfirmPassword" name="confirm_password" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" maxlength="10" required/>
</div>


<input type="submit" value="Submit" onclick="return Validate()" style="background:#f44336; color:#e7e7e7;"/>
<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
<br>
<br>
<p>Already registered!! <a href="#modal-1">Login Here</a></p>
<div class="modal-footer">
      <center>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </center>
 </div>
</div>
</div>
</div>

</div>
</div>
</form>
</div>
 </div>
 </div>

 end of signup -->
 
 <div class="modal fade bs-modal-lg" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
<br>     
<!-- login Form -->
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

</body>

</html>
    