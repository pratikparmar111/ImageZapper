<%
	Object o=session.getAttribute("adminuser");
	if(o==null)
	{
%>
<title>image zapper header</title>

	<a href="login.jsp"> Login </a> || <a href="register.jsp"> Register </a>
<%
	}
	else
	{
%>
	<a href="logout.jsp"> Logout </a>
    <a href='gallerycat.jsp'>gallery </a>
<%
	}
%>
<br/>