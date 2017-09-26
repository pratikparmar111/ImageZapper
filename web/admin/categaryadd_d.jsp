<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>

<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>category add</title>
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
	req.open("GET","next.jsp?name="+document.getElementById('txtnm').value+"&category="+document.getElementById('txtcatnm').value+"&filename="+nm+"",false);
	
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
        
        
    %>    
<%
  	if(request.getParameter("file")!=null)
  	{
%>
		<img src="gallery/cat_img/<%=request.getParameter("file")%>" />
<%
	}
	else
	{
		
	}
	
%>		<div cl class="abc1">
		
    <form enctype="multipart/form-data" action="categaryadd.jsp" method="post">
    
    <p>New Category to be added: 
    <input type="text" name="txtcatnm" id="txtcatnm"/>
    </p>
        Image name: <input type="text" name="txtnm" id="txtnm" /><br/>
    
    
    <%
    String createfolder = request.getParameter("folderName");
    String path = "D:/imagezapper/web/gallery/" + createfolder;
    File f = new File(path);
   
%>
    </form>
	 
    
    <form enctype="multipart/form-data" method="post" id="frm2" action="upload.jsp" target="_blank" >
        <input type="file" name="photo" id="photo"/><br/><br/>
        <input type="submit" value="Create Category" onclick="go()"/><br/>
    </form>
         
 
</body>
</html>