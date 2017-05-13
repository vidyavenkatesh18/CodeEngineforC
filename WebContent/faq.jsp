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
hr.style18 { 
  height: 30px; 
  border-style: solid; 
  border-color: #8c8b8b; 
  border-width: 1px 0 0 0; 
  border-radius: 20px; 
} 
hr.style18:before { 
  display: block; 
  content: ""; 
  height: 30px; 
  margin-top: -31px; 
  border-style: solid; 
  border-color: #8c8b8b; 
  border-width: 0 0 1px 0; 
  border-radius: 20px; 
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
                        <h1>FAQ's</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container" align="center">
  <h1>Frequently asked Questions</h1>
  </div>
           <br>
           <br>
           <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1" align="left" >
           <h3>General Questions</h3>
           <br>
           <h5>What is CodeEngine for C ?</h5>
           <p>CodeEngine for C is a place where programmers come together and take up Challenges. The input and output assertions are defined for every challenge. Based on the complexity, Time limit and hints will be given to each challenge. User will be ranked based on the number of attempts.</p>
           <hr class="style18">
           
           <h5>Why Should I solve Challenge ?</h5>
           <p><b>For fun</b> What's more Exciting than solving challenging problems? We're constantly adding helpful features and challenges to improvise users coding skill. </p>
           <p><b>Learning</b> Expand your Knowledge by learning new programming topics by going through our challenges. We believe the best way to learn something is by doing it !</p>
           <hr class="style18">
           
           <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Read more >></button>
           <div id="demo" class="collapse">
           <br>
           <h5>How do I write my code ?</h5>
           <p>Each challenge page has an editor embedded in the page for you to write and test the code.</p>
           <hr class="style18">
           
           <h5>Can my code write to a file ?</h5>
           <p>No, it cant be.</p>
           <hr class="style18">
           
           <h5>What happens after I submit my code ?</h5>
           <p>We run your code against hidden test cases. If the code matches with the hidden test cases user will be directed to the results page where users have to provide the inputs to obtain the desired output.</p>
           <hr class="style18">
           </div> 
  <hr>
 
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-lg-offset-2 col-md-10 col-md-offset-1">
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