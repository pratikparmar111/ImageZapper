<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>categaryadd</title>
<script language="javascript">

function go()
{
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
	req.open("GET","nextimage.jsp?name="+document.getElementById('txtnm').value+"&cid="+document.getElementById('i').value+"&filename="+nm+"",false);
	
	req.send(null);
	//alert('sss');
	 // fl.value=photo.value;
	 //frm1.submit();
	  frm2.submit();
}
</script>
	
</head>

<body>
<%

  	if(request.getParameter("file")!=null)
  	{
		
		Object i=request.getParameter("cid");

%>
		
		<img src="gallery/<%=request.getParameter("file")%>" />
<%
	}
	else
	{
		
	}
	
%>		<form>
		Image name: <input type="text" name="txtnm" id="txtnm" /></br>
        </form>
    
		<form enctype="multipart/form-data" method="post" id="frm2" action="upload.jsp" target="_blank" >
            PHOTO<input type="file" name="photo" id="photo"></br>
    	 <input type="button" value="submit" onclick="go()"/></br>
         </form>
         
 
</body>
</html>