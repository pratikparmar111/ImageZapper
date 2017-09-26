<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
	String n,p;
%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt=con.createStatement();
	Object p=request.getParameter("name");
	Object c=request.getParameter("cat");
        session.setAttribute("photo",p);
      
%>
<div>
	<img src="upload/<%=p%>" height="400" width="600" />
</div>
<div>
	<form>
    	<input type="radio" name="r" value="compression" onclick="loadpage(this)"/>Image Compression <br/>
        <input type="radio" name="r" value="effect" onclick="loadpage(this)"/>Image Effect <br/>
        <input type="radio" name="r" value="crop" onclick="loadpage(this)"/>Image Cropping <br/>
    </form>
</div>	
<div id="d">
</div>
<script language="javascript">
var x;

		function loadpage(z)
		{
					
			var p;
			var y=z.value;
			if(y=="compression")
			{
				p="compression.jsp";
			}
			else if(y=="effect")
			{
				p="effect.jsp";
			}
			else if(y=="crop")
			{
				p="crop.jsp";
			}
			
		
		
		
		if(window.XMLHttpRequest)
		{
			x=new XMLHttpRequest();
		}
		else
		{
			x=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		x.onreadystatechange=getdata;
		
		x.open("GET",p,false);
		x.send(null);
		
		}
		function getdata()
		{
			
			if(x.readyState==4 && x.status==200)
			{
				document.getElementById('d').innerHTML= x.responseText;
			}
		}
		
</script>

</body>
</html>