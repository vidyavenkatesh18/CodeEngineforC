<%@ page import="java.sql.*"%>
<%
	
    String challengeid = request.getParameter("challengeid");    
    String testcases = request.getParameter("testcases"); 
    String email = request.getParameter("email");
    System.out.println(email+" "+challengeid);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codeenginedb","root", "vidhya");
    Statement st = con.createStatement();
    ResultSet rs;
   
    rs = st.executeQuery("select testcases from testcase where challengeid='" + challengeid + "'");
    
    int flag=0;
    
    System.out.println(testcases);
    while(rs.next())
    {
    	System.out.println(rs.getString("testcases"));
    	if(rs.getString("testcases").compareTo(testcases)==0)
    	{
    		flag=1;    		
    	    break;
        }
    	
    }
   
    ResultSet rs1;
    String name=(String)session.getAttribute("email");
    rs1 = st.executeQuery("select noofattempts from userrank where email='" + name + "' AND challengeid='" + challengeid + "'");
    int currentatt=0;
    while(rs1.next())
    {
    	currentatt = rs1.getInt("noofattempts");
    	 System.out.println(rs1.getInt("noofattempts"));
    }
    
   
    ResultSet rs2;
    rs2 = st.executeQuery("select noofattemptsallowed from challenge where challengeid='" + challengeid + "'");
    int numAllowed =0;
    
    while(rs2.next())
    	{
    	numAllowed = rs2.getInt("noofattemptsallowed");
    	System.out.println(rs2.getInt("noofattemptsallowed"));
    	}
    
    	if(flag==0)
        {   
    	
    		int currIncr = currentatt+1;
    		
    		st.executeUpdate("update userrank set rank=(rank-1),noofattempts="+currIncr+" where email='" + name + "' AND challengeid='" + challengeid + "'");
    		if(currentatt<numAllowed)
        	out.println("Invalid code <a href='challenges.jsp'>try again</a>");
        	else
        		out.println("You have exhausted the attempts <a href='challenges.jsp'> want to try other challenges? </a>");
        	
        			
        }
        	else {
        		int currIncr = currentatt+1;
        		
        		st.executeUpdate("update userrank set rank=(rank+5),noofattempts="+currIncr+" where email='" + name + "' AND challengeid='" + challengeid + "'");
        		if(currentatt<numAllowed)
        		response.sendRedirect("successchallenge7.jsp"); 
        		else
            		out.println("You have exhausted the attempts");       		
        		
        		} %>



