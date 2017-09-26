<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>First</title>
<script>
function go(x)
{
	//document.getElementById('r');
	//alert(a);
	window.location='first.jsp?r='+x.value;
}
</script>
</head>

<body>
<%
	Object i=request.getParameter("cid");
        Object n=request.getParameter("cat");
	Object o=session.getAttribute("user");
%>
   

<div>
	
	<%
        Object o1=request.getParameter("r");
        String s="<input type=radio name=r id=r1 value=upload onclick=go(this)";
        String s1="<input type=radio name=r id=r2 value=gallery onclick=go(this)";
        
        if(o1==null)
        {
        
        s=s+" checked";
        }
        else
        { 
            if(o1.equals("upload"))
            {
                s=s+" checked";
            }
            else
            {
              s1=s1+" checked";   
            }
            
        }
        s=s+">Image Upload <br/>";
        s1=s1+">Gallery <br/>";
        
		if(o!=null)
		{
                    out.print(s);
                    out.print(s1);
		}
		else
		{
                    %>
                        <jsp:include page="fileup.jsp" />
                    <%
		}
	%>
</div>
<div id=d>
</div>


<%
	//out.print(request.getParameter("r"));
        
    if(i==null)
    {
        if(o1!=null)
        {
             String s2=o1+"";
        
            if(s2.equals("upload"))
            {
                %>
                <jsp:include page="fileup.jsp"/>
                <%
            }
            else
            {
               %>
               <jsp:include page="gallerycat.jsp"/>
               <%
            } 
               
            }  
        }
     else
                {
                    %>
                    <jsp:include page="gallery.jsp"/>
                    <%
                }
        %>
        
</body>
</html>