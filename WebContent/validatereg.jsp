<%@ page import ="java.sql.*" %>
<%
        
    String username = request.getParameter("username");    
    String  password = request.getParameter("password");
    String email = request.getParameter("email");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeenginedb","root", "vidhya");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into user values ( null,'" + username + "','" + password + "','" + email + "')");
    
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("index1.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>