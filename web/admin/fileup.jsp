<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
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
                req.open("GET", "next.jsp?name="+document.getElementById('txtnm').value, false);
               // req.send(null);
                
                
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
%>
<img src="gallery<%=request.getParameter("file")%>" />
<%
}
%>
<form>
	name<input type="text" name="txtnm" id="txtnm" />
</form>
 <form enctype="multipart/form-data" method="post" id="frm2" action="upload.jsp">
                            
                  <tr><td>Photo</td><td>
                          <input type="file" name="photo" id="photo">
                      </td></tr>
     </form>
       <input type="button" value="submit" onclick="go()"/>
     </body>
</html>