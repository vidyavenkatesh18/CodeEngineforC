<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
String oldpass = request.getParameter("oldpass"); 
String newpass = request.getParameter("newpass"); 
String cnewpass =request.getParameter("cnewpass"); 
String email= String.valueOf(session.getAttribute( "email" ));




Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/codeenginedb","root", "vidhya");
Statement st=conn.createStatement();
   ResultSet resultset11 =st.executeQuery("SELECT * FROM user where password='"+oldpass+"' and email='"+ email +"'") ; 

   if(resultset11.next())
 {
int x= st.executeUpdate("update user set password='"+newpass+"' where email='"+email+"'");

        %>  <script>
      alert("Password Changed Successfully");
      document.location.href="index.jsp";
      </script>
              
    <%
  }
else 
 {
         
   
    %>  <script>
   
      alert("Wrong Password");
      document.location.href="index.jsp";
      </script>
              
    <%  
         
  }          
        

             %>  
           
 </body>
</html>
</body>
</html>