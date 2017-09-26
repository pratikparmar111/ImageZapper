<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Untitled Document</title>
    </head>

    <body>
        <%
            Object o = session.getAttribute("adminuser");
            if (o == null) {
                response.sendRedirect("login.jsp");

            }
            out.print("<a href='userphoto.jsp'> Click here to userphoto </a><br/>");
            out.print("<a href='userphoto2.jsp?pageid=1'> Click here to userphoto in pagenation </a><br/>");
            out.print("<a href='changepassword.jsp'> FOR CHANGE PASSWORD </a>  </br>");                   
         
            out.print("<a href='gallerycat.jsp'> Click here goto galary </a><br/>");
            out.print("<a href='logout.jsp'> logout </a>");
        %>

    </body>
</html>