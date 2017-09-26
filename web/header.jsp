<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
    <head>
            <title>image zapper header</title>
    </head>
    <body>
<c:set var="o" value="${param.user}"/>
<c:choose>
    <c:when test="${o==null}">
        <a href="login.jsp"> Login </a> || <a href="register.jsp"> Register </a>
    </c:when>
    <c:otherwise>
            <a href="logout.jsp"> Logout </a>
            <a href='gallerycat.jsp'>gallery </a>
    </c:otherwise>
</c:choose>
<br/>
    </body>
</html>