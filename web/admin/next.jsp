<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>nextpage</title>
</head>

<body>
<%! 
	Connection con;
	Statement stmt;
%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt=con.createStatement();
	
	Object unm=request.getParameter("name");
	Object img=request.getParameter("categary");
	Object fn=request.getParameter("filename");
	
	int c=stmt.executeUpdate("insert into category (name,image) values ('"+img+"','"+fn+"')");
		
%>

<% 
	Connection con2;
	Statement stmt2;
	ResultSet rs;
%>
	
<%
	Class.forName("com.mysql.jdbc.Driver");
	con2=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt2=con2.createStatement();
	
	rs= stmt2.executeQuery("select cid from category where name='"+img+"'");
	
	rs.next();
		int dop=rs.getInt(1);
	
	
%>

<%
	Connection con3;
	Statement stmt3;
%>

<%
	
	Class.forName("com.mysql.jdbc.Driver");
	con3=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt3=con3.createStatement();
	int e=stmt3.executeUpdate("insert into gallery (cid,image) values ("+dop+",'"+fn+"')");
	

%>	
</body>
</html>