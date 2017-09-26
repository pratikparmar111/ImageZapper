
<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>fileupuser</title>
<%
	Object unm =session.getAttribute("user");
	//Object unm=request.getParameter("txtmail");
	//out.print("in fileupload email: "+unm+"</br>");
	
%>
<script language="javascript">

function go()
{	//all page done bye pato
	var req;
	
	if(window.XMLHttpRequest)
		req=new XMLHttpRequest();
	else
	 	req=new ActiveXObject("Microsft.XMLHTTP");

	var fn=photo.value;
	var nm=fn;
	var n=fn.indexOf('fakepath');
	
		
	if(n>0)
	nm=fn.substr(n+9,fn.length-n-8);
	
	//alert(nm);
	req.open("GET","nextuser.jsp?txtmail="+document.getElementById('mail').value+"&filename="+nm+"",false);
	
	//req.open("GET","nextuser.jsp?name="+document.getElementById('txtnm').value+"&filename="+nm+" ",false);
	
	req.send(null);
	//	alert('sss');
	 // fl.value=photo.value;
	 //frm1.submit();
	  frm2.submit();
}
</script>
	
</head>

<body>
    <%! 
	Connection con4;
	Statement stmt4;
	ResultSet rs4;
        Object file4;
    %>
<%
        Class.forName("com.mysql.jdbc.Driver");
	con4=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	stmt4=con4.createStatement();
		
	rs4=stmt4.executeQuery("select img_name from users where email='"+unm+"' ");
        while(rs4.next())
	{
           file4=rs4.getObject(1);
        }
  	 %>
	
         <img src=upload/<%=file4%> height="250" width="350"/><br>
	
    	<form enctype="multipart/form-data" method="post" id="frm2" action="uploaduser.jsp" >
        	<tr><td>Profile Photo</td><td>
                <input type="file" name="photo" id="photo"></br>
                          </td></tr>
         </form>
         	<input type="hidden" value="txtmail" value=<%=unm%> id="mail" />
            <input type="button" value="submit" onclick="go()"/>
             
 
</body>
</html>