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
	
	Object cid=request.getParameter("cid");
        out.print("cid="+cid);
	Object fn=request.getParameter("filename");
	out.print("fn="+fn);
	int c=stmt.executeUpdate("insert into gallery (cid,image) values ('"+cid+"','"+fn+"')");
	

%>	
</body>
</html>