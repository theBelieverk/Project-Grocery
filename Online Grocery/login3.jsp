<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
</head>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="login3style.css">
</head>

<form action="#" method="post">
	<div class="cont">
		<div class="form sign-in">
			<h2>Welcome back,</h2>
			<label> <span>Email</span> <input type="email" name="email"
				required>
			</label> <label> <span>Password</span> <input type="password"
				name="password" required>
			</label>
			<p class="forgot-pass">Forgot password?</p>
			<button type="submit" class="submit">Sign In</button>
			<button type="submit" class="fb-btn">
				Connect with <span>facebook</span>
			</button>
		</div>
		<div class="sub-cont">
			<div class="img">
				<div class="img__text m--up">
					<h2>New here?</h2>
					<p>Sign up and discover great amount of new opportunities!</p>
				</div>
				<a href="next.html"><div class="img__btn">
						<span class="m--up">Sign Up</span>
					</div></a>
			</div>
		</div>
	</div>
</form>
</html>
<%@ page import="java.sql.*" %>
<%
try{
	String email =request.getParameter("email");
	String password=request.getParameter("password");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@Krishna:1521:XE","SYSTEM","loveusizza");
	Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from LoginCust  where email='"+email+"' and password='"+password+"'");
    int count=0;
    while(rs.next()){
    count++;
   }
   if(count>0){
	   %>
	   <jsp:forward page = "Main.html" />
	   <%
   // out.println("welcome "+email1);
    }
   else{

   // out.println("wrong");
   }
 }
catch(Exception e){
System.out.println(e);
}
%>

