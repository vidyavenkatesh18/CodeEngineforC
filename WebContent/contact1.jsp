<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" data-ng-app="Commenter">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>codeengine</title>
    
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.12.0/semantic.min.css">
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
    <header class="intro-header" style="background-image: url('img/contact-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="page-heading">
                        <h1>Contact Me</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
                <center>
                <p>provide us your opinion</p>
                </center>
                <br>
                <!-- Contact Form - Enter your email address on line 19 of the mail/contact_me.php file to make this form work. -->
                <!-- WARNING: Some web hosts do not allow emails to be sent through forms to common mail hosts like Gmail or Yahoo. It's recommended that you use a private domain email address! -->
                <!-- NOTE: To use the contact form, your site must be on a live web host with PHP! The form will not work locally! -->
                
               <!-- Container (Contact Section) -->
               
<div id="contact" class="container-fluid bg-grey" >
   <p align="center">Contact us and we'll get back to you within 24 hours.</p>
  <br>
  <br>
  <center>
  <div class="row-center">
    
      <p><span class="glyphicon glyphicon-map-marker"></span><a href="https://www.google.co.in/maps/dir/12.9350551,77.53474/pes+university/@12.9286274,77.5309085,14.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3bae3e468d8d36d3:0x694d74f6ac640acf!2m2!1d77.5343994!2d12.9340606">CodeEngine IT</a></p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 80 26721983 </p>
      <p color="blue"><span class="glyphicon glyphicon-envelope"></span><a href="mailto:hellocodeengineusers@gmail.com?subject=subject&body=user Name and opinion">hellocodeengineusers@gmail.com</a> - click to mail us</p>
   
    </div>
    </center>
</div>
      
   
                
     <!--  
        Begin Comments JavaScript Code 
       <script type="text/javascript" async>
       function ajaxpath_58f86c33707e6(url){return window.location.href == '' ? url : url.replace('&s=','&s=' + escape(window.location.href));}(function(){document.write('<div id="fcs_div_58f86c33707e6"><a title="free comment script" href="http://www.freecommentscript.com">&nbsp;&nbsp;<b>User Comments</b>...</a></div>');fcs_58f86c33707e6=document.createElement('script');fcs_58f86c33707e6.type="text/javascript";fcs_58f86c33707e6.src=ajaxpath_58f86c33707e6((document.location.protocol=="https:"?"https:":"http:")+"//www.freecommentscript.com/GetComments2.php?p=58f86c33707e6&s=#!58f86c33707e6");setTimeout("document.getElementById('fcs_div_58f86c33707e6').appendChild(fcs_58f86c33707e6)",1);})();</script><noscript><div><a href="http://www.freecommentscript.com" title="free html user comment box">
       </a></div></noscript>
       End Comments JavaScript Code -->
                     
        
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