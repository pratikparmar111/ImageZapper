<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="css/style.css"/> 

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<%! 
	Connection con;
	Statement stmt;
	ResultSet rs;
	String n,p;
%>
	

<%
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt=con.createStatement();
	Object i=request.getParameter("cid");
	Object c=request.getParameter("cat");
	rs=stmt.executeQuery("select * from gallery where cid="+i);
%>
 <p title="gallery" align="center" ><b>Gallery/<%=c%></b></p>	
  <th colspan="1" style="border:thin" bordercolor="#3366FF">
  		<a href="galleryaddnew.jsp?cid=<%=i%>">
        	<input type="button" value="Add Image" />
         </a>
    </th>	
 <%
 while(rs.next())

	{
		int g=rs.getInt(1);
		String n =rs.getString(2);
		String p =rs.getString(3);
%>

<div class="images" style="border:groove">
    <img src="../upload/<%=p%>" height="100" width="150"/></br>
        
 
 <%=p%><a href="gallerydel.jsp?id=<%=g%>&cid=<%=i%>"><input style="float:right" type="button" value="Delete"   /></a>
       
</form>
    <br />
    
</div>    
   	<%
	}
	%>
</body>
</html>
