<%@ page contentType="text/html; charset=iso-8859-1" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

	<c:set var="o" value="${param.user}"/>    
        <c:if test="${o==null}">
            <jsp:forward page="login.jsp" />
        </c:if>

	<jsp:include page="header.jsp"/>
	Welcome ${o}
	
</body>
</html>
