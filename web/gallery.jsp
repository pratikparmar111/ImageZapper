<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="css/style.css"/> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Gallery</title>
<script language="javascript">
    function get_img()
    
</script>
</head>

<body>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/imagezapper" user="root" password=""/>
<c:set var="i" value="${param.cid}" scope="page"/>	
<c:set var="c" value="${param.cat}" scope="page"/>	

  <p title="Gallery" align="center" ><b>Gallery/${c}</b></p>
<div>


    <sql:query var="rs" dataSource="${ds}">
        select * from gallery where cid=${i}
    </sql:query>
	            <c:forEach items="${rs.rows}" var="x">
                    <c:set var="p" value="${x.image}"/>
                    <c:set var="g" value="${x.gid}"/>
      <div class="images" style="border:groove">
          <img src="upload/${p}" height="200" width="300" alt="No image Found"/>
      <br/>
      <form action="fileup.jsp" >
      
      <input type="hidden" name="file" value="${p}" />
      <%
          session.setAttribute("photo", pageContext.getAttribute("p"));
      %>
      ${p}<input style="float:right" type="submit" value="Get it!!"  />
      </form>
      </div>
                </c:forEach>
   </div>
   
   
</body>
</html>
