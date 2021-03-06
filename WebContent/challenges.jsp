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
    <link rel="stylesheet" href="font-awesome-animation.min.css">
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
.sec {
  display: table;
  height: 100%;
  width: 100%;
}

div1{
  display: table-cell;
  text-align: center;
  vertical-align: middle;
  width: 30%;
  padding: 1rem;
}

.left-half {
  background:#bfbfbf;
}

.middle-half {
  background:#cccccc;
}
.right-half {
  background:#bfbfbf;
}
.indented 
{   
  padding-left: 50pt;
  padding-right: 50pt; 
}
.white {
  color: white;
}
.bounce {
  -moz-animation: bounce 2s infinite;
  -webkit-animation: bounce 2s infinite;
  animation: bounce 2s infinite;
}

@keyframes bounce {
  0%, 20%, 50%, 80%, 100% {
    transform: translateY(0);
  }
  40% {
    transform: translateY(-30px);
  }
  60% {
    transform: translateY(-15px);
  }
}
<style>
.logo-img {
    float: left;
    position: relative;
    margin: 0px 0px 0px 0px;
}
#btn-is-disabled {
  pointer-events: none; /* Disables the button completely. Better than just cursor: default; */  
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
                        <a href="success.jsp">Home</a>
                    </li>
                    <li>
                    <li>
                        <a href="about1.jsp">About</a>
                    </li>
                    <li>
                        <a href="contact1.jsp">Contact</a>
                    </li>
                    <li>
                        <a href="challenges.jsp">Challenges</a>
                    </li> 
                    <li>
                        <a href="userrank.jsp">UserRank</a>
                    </li>
                    <li>
                        <a href="faq.jsp">FAQ's</a>
                    </li>
                  <%  
                    if ((session.getAttribute("email") == null) || (session.getAttribute("password") == "")) {
                       %>
                        <li><a> Welcome Guest! </a></li>
                        <li><a href='index.jsp'><span class="glyphicon glyphicon-log-in"> Login</span></a></li>
                        <%
                            }
                            else
                        {%>
                        <li><a> Welcome <%=session.getAttribute("email")%> </a></li>
                        <li><a href='logout.jsp'><span class="glyphicon glyphicon-log-out"> Logout</span></a></li>
                  <%}%>     
                  <li><a href="#login1" data-toggle="modal" title="Change Password" data-target=".bs-modal-sm"><span class="glyphicon glyphicon-lock"></span></a></li>
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
                        <br>
                        <div class="arrow bounce">
                       <a href="#two" class="fa fa-arrow-down fa-2x white"></a>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-preview" id="two">
                        <h2 class="post-title">
                        <center>
                           Controlling complexity is the essence of computer programming.
                        </h2>
                        <p class="post-meta" align="right">- Keep Coding. All the Best!!!</p>
                        </center>
                </div>
                <hr>
                </div>
                </div>
                <center>
                <p><b>NOTE:</b> Unsuccessfull challenge carries Negative marking </p>
  </center>
</div>
 <!-- page content -->
 <section class="sec" >
  <div1 class="left-half" id="left-half1">
    <article>
      <h1><u>Easy</u></h1>
      <p><b>No of attempts allowed for easy challenge :</b> 2 </p>
      <ul class="indented">
      <li><a href="easychallenge1.jsp">To print a statement.</a></li><br>
      <li><a href="easychallenge2.jsp">Using for loop.</a></li><br>
      <li><a href="easychallenge3.jsp">On implementing basic arithmetic operation.</a></li><br>
      <li><a href="easychallenge4.jsp">Using while and if..else statement.</a></li><br>
      <li><a href="easychallenge5.jsp">Using if statement.</a></li><br>
     </ul>
   <br>
   <br>

   
   
    </article>
  </div1>
  <div1 class="middle-half">
    <article>
      <h1><u>Medium</u></h1>
       <p><b>No of attempts allowed for medium challenge:</b> 3 </p>
      <ul class="indented">
      <li><a href="mediumchallenge6.jsp">Using if statement.</a></li><br>
      <li><a href="mediumchallenge7.jsp">On Implementing nested if elseif..else statement.</a></li><br>
      <li><a href="mediumchallenge8.jsp">Using Conditional Operator.</a></li><br>
      <li><a href="mediumchallenge9.jsp">Using nested for loop and if...else statement.</a></li><br>
      <li><a href="mediumchallenge10.jsp">On Implementing while loop.</a></li><br>
      </ul>
      <br>
      
 </article>
  </div1>
  <div1 class="right-half">
    <article>
      <h1><u>Difficult</u></h1>
       <p><b>No of attempts allowed for difficult challenge:</b> 4 </p>
       <ul class="indented">
      <li><a href="difficultchallenge11.jsp">Using string function</a></li><br>
      <li><a href="difficultchallenge12.jsp">Without using predefined functions in math.h</a></li><br>  
      <li><a href="difficultchallenge13.jsp">Implementing arithmetic operation.</a></li><br>  
      <li><a href="difficultchallenge14.jsp">On using mathematical functions.</a></li><br>  
      <li><a href="difficultchallenge15.jsp">Using pointers.</a></li><br>
      </ul>
 </article>
  </div1>
</section>
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
    <!-- scroll -->
    <script type="text/javascript">
    $('a[href*="#"]:not([href="#"])').click(function() {
    	  if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
    	    var target = $(this.hash);
    	    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
    	    if (target.length) {
    	      $('html, body').animate({
    	        scrollTop: target.offset().top
    	      }, 1000);
    	      return false;
    	    }
    	  }
    	});
    </script>
   <!-- password change -->

<div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
<br>     

  <div class="login1">
    <form action="changepasswordlogic.jsp" method="post">
    <div class="login-screen">
    <div class="app-title">
<h1><b>Changepassword</b></h1>
</div>
<br>
<br>

<div class="login-form">
<div class="control-group">

<input type="password" class="login-field" value="" placeholder=" Old password" id="myDate" name="oldpass" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" maxlength="10" required/>
</div>

<div class="login-form">
<div class="control-group">
<input type="password" class="login-field" placeholder="New Password" id="password" name="newpass" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" maxlength="10" required/>
</div>

<div class="login-form">
<div class="control-group">
<input type="password" class="login-field" placeholder="Confirm New password" id="txtConfirmPassword" name="cnewpass" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" maxlength="10" required/>
</div>


 <input type="submit" onclick="return Validate()" value="Change" style="background:#f44336; color:#e7e7e7;"/>
 
<div class="modal-footer">
      <center>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </center>
 </div>
</div>
</div>
</div>
</div>
</form>
<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }

</script>    
</div>

</div>
 </div>
</div>
</div>

</body>

</html>
