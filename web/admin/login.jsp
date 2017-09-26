<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%! 
	Connection con;
	Statement stmt;
	ResultSet rs;
	String n,d;
	int i,id;
	float s;
%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt=con.createStatement();
	Object unm=request.getParameter("txtnm");
	
	if(unm!=null)
	{
		Object pw=request.getParameter("txtpwd");
		rs=stmt.executeQuery("select count(*)from admin where username='"+unm+"' and password='"+pw+"' ");
		rs.next();
		int c=rs.getInt(1);
		if(c!=0)
		{
			session.setAttribute("adminuser",unm);
			out.print("Login Successfully");
			out.print("<a href='index.jsp'> Click here to continue </a>");
		%>
		<jsp:forward page="index.jsp" />
		<%
		}
		else
		{
			out.print("Login failed<br>");
			out.print("<a href='login.jsp'> Click here to Login again </a>");
		}
		
	}
	
	else
	{
%>
<div style="padding:20px;">
<table border="1" align="center">
<tr><td align="center" bgcolor="#C1DFE8">Login</td></tr>
<tr>
<td>
<form method="post">
	<table>
		
		<tr>
			<td>Username:</td>
			<td><input type="text" name="txtnm" id="txtnm" required="required" /></td>
		</tr>	
		<tr>
			<td>Password:</td>
			<td><input type="password" name="txtpwd" id="txtpwd" required="required"  /></td>
		</tr>	
		<tr >
			<td colspan="2" align="center"><input type="submit" value="Login" /> </td>
		</tr>	
       
	</table>
	</form>
</td>
</tr>
</table>
</div>
<%
	}
%>

</body>
</html>
