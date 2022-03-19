<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
String name=request.getParameter("name1");
String email=request.getParameter("email1");
String pass=request.getParameter("password1");
try{
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@Krishna:1521:XE","SYSTEM","loveusizza");
		PreparedStatement ps =con.prepareStatement("insert into LoginCust VALUES(?,?,?)");
	
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,pass);
		int x= ps.executeUpdate();
		if (x!=0)
		{
			response.sendRedirect("login3.jsp");
			//%>		
			//<jsp:forward page = "login3.jsp" />
			//out.println("Record is save");
		//<% 
		}else {
			out.println("Record is not save");
		}

			
}catch(Exception e)
	{
	out.println(e);
	}	
%>

</body>
</html>