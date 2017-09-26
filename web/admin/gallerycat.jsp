<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>gallery categary</title>
</head>

<body>

<%! 
	Connection con;
	Statement stmt;
	ResultSet rs;
	String n,p;
	int i,id;
	float s;
%>

<table border="5" align="center" >
<tr align="center" bgcolor="#C1DFE8" bordercolor="#000000">
	<th colspan="4" >
    <p title="Gallery" align="center" ><b>Gallery</b></p>
    </th>
    <th colspan="1" >
  		<a href='categaryadd.jsp'><input type="button" value="add categary" />
         </a>
    </th>
	
</tr>
<tr border="5">
<%
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt=con.createStatement();

	rs=stmt.executeQuery("select * from category");
	while(rs.next())
	{
		int i=rs.getInt(1);
		String n =rs.getString(2);
		String p =rs.getString(3);
%>	
	<td align="center">
    	<a href="gallery.jsp?cid=<%=i%>&cat=<%=n%>">
    	<img src="../upload/<%=p%>" height="100" width="150"/>
        <br />
        <b><%=n%>
        </a>
</b>        </td>
   	<%
	}
	%>
   </tr>
   </table>
  
</body>
</html>
