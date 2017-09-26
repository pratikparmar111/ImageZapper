<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Image zapper index</title>
    </head>

    <body>
        
        <c:set var="o" value="${user}"/>    
        <div>
        <c:choose>
            <c:when test='${o==null}'>
               <jsp:include page="login.jsp" />
                </c:when>
            <c:otherwise>
                <a href="logout.jsp"> Logout </a>
                <a href="profile.jsp"> Your Profile </a>
             
            </c:otherwise>   
        </c:choose>
        </div>
            <jsp:include page="menu.jsp"/>
            <br />
            <jsp:include page="footer.jsp" />
        </body>
    </html>