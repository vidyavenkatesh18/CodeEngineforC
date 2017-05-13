<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeenginedb","root", "vidhya");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where email='" + email + "' and password='" + password + "'");
    System.out.println(email);
    if (rs.next()) {
        session.setAttribute("email", email);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password or username <a href='index.jsp'>try again</a>");
    }
   
%>