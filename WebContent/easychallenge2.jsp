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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
#Hint1 {
  display: none;
}
.sec {
  display: table;
  height: 100%;
  width: 100%;
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
.round-border {
			border: 1px solid #eee;
			border: 1px solid rgba(0, 0, 0, 0.05);
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			border-radius: 4px;
			padding: 10px;
			margin-bottom: 5px;
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
                        <a href="success.jsp">Home</a>
                    </li>
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
    <br>
    <br>
   
 <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-preview">
                <center>
                        <h2 class="post-title" id="two">
                        Programming using C Language
                        </h2>
                   </center>   
                </div>
                <br>
   <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Challenge ID</th>
        <th>Problem Statement</th>
        <th>Input</th>
        <th>Output</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>2</td>
        <td>Program to find Factorial of a number using for loop</td>
        <td>5</td>
        <td>Eg : Enter a number to calculate its factorial: 5<br> Factorial of entered number is : 120</td>
      </tr>
    </tbody>
  </table>
 </div>
   </div> 
        </div>
                <hr>

                <script type="text/javascript">
        function hideQuestions()
        {
            // Hide the questions
            document.getElementById("answerBlock").style.display = "none";
            // Show the message that the questions timed out
            document.getElementById("quicker").style.display = "block";
        }
 
        function checkTime()
        {
            secondsLeft = secondsLeft - 1;
            if(secondsLeft <= 0)
            {
                hideQuestions();
                //alert("Time is up!");
                document.getElementById("secondsLeft").style.color = "red";
                window.clearInterval(myTimer);
                writeTime("Timed out!");
                // Here you'd probably want to do a redirect to another page
            }
            else
            {
                writeTime(secondsLeft + "s");
            }
        }
 
        function writeTime(msg)
        {
            document.getElementById("secondsLeft").innerHTML = msg;
        }
    </script>
    <center>
    <script>
$(document).ready(function() {
	  setTimeout(function() {
	    $("#Hint1").show();
	  }, 40000);
	});
</script>
<script>
		$(document).ready(function() {
			$('.nav-toggle').click(function(){
			//get collapse content selector
			var collapse_content_selector = $(this).attr('href');

			//make the collapse content to be shown or hide
			
			$(collapse_content_selector).toggle(function()
					{
			  if($(this).css('display')=='none'){
                                //change the button label to be 'Show'
				toggle_switch.html('Show');
			  }
			});
		  });

		});
		</script>
<p>You need to wait few seconds to get Hint !! Keep Coding !!</p>
<button type="button" id="Hint1" href="#collapse1" class="nav-toggle" onclick="this.disabled=true;document.getElementById('up7913').disabled=false;" type="submit" class="negative" name="down7913" id="down7913"">Hint</button>
<div id="collapse1" style="display:none">
				<p>Factorial (n) = 1*2*3..* n </br>
              For example: Factorial of 5 = 1*2*3*4*5 = 120  </br>
                      Note: Factorial of zero = 1 </p>
			</div>
<body onload="">
<h1>Countdown to solve the Challenge : <span id="secondsLeft"></span></h1>
<div id="answerBlock">
<form action="validatechallenge2.jsp" method="post"> 
<div class="login-form">
<div class="control-group">

<input type="text" class="login-field" align="left" value="2" placeholder="challengeid"  name="challengeid" required/>
</div>
<br>
 <div class="login-form">
 <div class="control-group">
 <textarea name="testcases" class="" rows="15" cols="50" align="left"></textarea>
 
 </div>
</div>
<br>
<input type="submit" value="submit"  align ="left" style="background:#f44336; color:#e7e7e7;"/>
 </div>
 </form>
</div>
<div id="quicker" style="display:none;" align="center">
You must code more quickly next time! <a href="challenges.jsp"><strong style="color:red;">Give another Try?</strong></a>
</div>
</body>
<script>
    var secondsLeft = 60;
    writeTime(secondsLeft + "s");
    var myTimer = window.setInterval(checkTime, 1000);
    
</script>
</center>

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
