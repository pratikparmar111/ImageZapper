<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*,java.io.*,java.util.*,java.util.Date, javax.servlet.*,java.text.SimpleDateFormat" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>nextuser</title>
</head>
<body>
<%! 
	Connection con;
	Statement stmt;
        int c;
%>

<%
		//all page done bye pato
                
		Object unm =session.getAttribute("user");
		//out.print(unm);
		//out.print("in nextuser email"+unm);
		//Object inm=request.getParameter("name");
		//out.print(inm);
		Object iname=request.getParameter("filename");
		//out.print(iname);
	//String inm="asd";
	//String iname="asd";
	if(unm!=null)
	{		
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
		stmt=con.createStatement();
		//("update users SET username='"+nm2+"' , password='"+pwd2+"', phone='"+ph2+"', date='"+date2+"', country='"+cn2+"', state='"+st2+"', city='"+ct2+"', gender='"+ge2+"'  WHERE email='"+unm+"' 
                
                c=stmt.executeUpdate("UPDATE users SET img_name='"+iname+"' WHERE email='"+unm+"'");
        
		if (c!=0)
		{
		response.sendRedirect("profile.jsp?file="+iname);
			//out.print("done");
			//alert('done entery');
		}
		response.sendRedirect("index.jsp");
			
	}
%>
</body>
</html>