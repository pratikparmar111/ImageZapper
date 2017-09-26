<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<%! 
	Connection con;
	Statement stmt;
	ResultSet rs;
%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt=con.createStatement();
        Object cid1=request.getParameter("cid");
	Object i=request.getParameter("id");
	Object n=request.getParameter("image");
	int i1=stmt.executeUpdate("delete from gallery where gid="+i);
	if(i1!=0)
	{
		File f=new File(n+"");
		f.delete();
                out.print(cid1);
                response.sendRedirect("gallery.jsp?cid="+cid1);
                }
        %>
   
  
</body>
</html>
