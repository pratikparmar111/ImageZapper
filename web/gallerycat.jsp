<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="css/style.css"/> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Gallery categary</title>
    </head>
    <body>
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/imagezapper" user="root" password=""/>
        <c:set var="cid" value="${param.cid}" scope="page"/>
        <c:set var="c" value="${param.cat}" scope="page"/>

        <c:choose>
            <c:when test="${cid==null}">

                <div class="images" >
                    <div>
                    <p title="Gallery" align="center" ><b>Gallery</b></p>
                    </div>
                <div>
                        <sql:query var="rs" dataSource="${ds}" sql="select * from category"/>

                            <c:forEach items="${rs.rows}" var="x">
                                <c:set var="i1" value="${x.cid}"/>
                                <c:set var="n" value="${x.name}"/>
                                <c:set var="p" value="${x.image}"/>

                                <div style="border:groove;float: left">

                                    <a href="first.jsp?cid=${i1}&cat=${n}&r=${param.r}">
                                        <img src="upload/${p}" height="200" width="300"/>
                                    </a>

                                    <br />
                                    <div align="center"> <b>
                                        ${n}
                                        </b> </div> 
                                </div>
                            </c:forEach>
                </div>
                </div>
                



            </c:when>
            <c:otherwise>

                <jsp:include page="gallery.jsp" />
            </c:otherwise>
        </c:choose>
        </body>
    </html>