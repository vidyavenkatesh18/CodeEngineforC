<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
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
table, td, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 60%;

}

th {
    height: 50px;
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
                    </div>
                    
                </div>
            </div>
        </div>
   </header>
<center>
<h2>Attempts and Rank details</h2>
<br>
<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/codeenginedb";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "root", "vidhya");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from userrank";
rs = statement.executeQuery(QueryString);
%>
<table cellpadding="15" border="1" style="background-color: #ffffcc;">
<tr>
<th> Urankid </th>
<th> Email </th>
<th> Challengeid </th>
<th> No of Attempts </th>
<th> Points for attempts <br>(on scale of 5) </th>
</tr>
<%
while (rs.next()) {
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getInt(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><%=rs.getInt(5)%></td>
</tr>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</table>
</center>

</font>
<br>
<br>
<br><br>
 <br>
    <br>
    <p align="center"><a href="contact.jsp">Any opinion ? Inbox Us </a></p>
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

</body>
</html>