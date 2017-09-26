<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>File upload</title>
<script  type="text/javascript">
    

         /*   function go()
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
                req.send(null);
                
                
           // fl.value=photo.value;
            //frm1.submit();
            frm2.submit();
            }*/

        </script>
</head>
<body>

    <c:set var="pic" value="${param.file}"/>
    <c:set var="photo" value="${param.file}" scope="session"/>
        
        <c:out value="${photo}"/>
        <c:if test="${param.errmsg!=null}">
            <c:out value="too big size"/>
        </c:if>
        <c:choose> 
        <c:when test="${param.file!=null}">
          <img id="img1" src=upload/${param.file} height="200" width="300"/>
          <a href=effect.jsp?photo=${param.file}>next</a>
          <%--  <input type="button" id="next" onclick="gonext()" value="Next"/>--%>
          <%--<input type="button" value="Next" onselect="effect.jsp?photo=<%=pic%>"/>--%>
        </c:when>
          <c:otherwise>
              <%--<c:set var="s1" value="${<input type=button value=next}" /> --%>
          </c:otherwise>    
        </c:choose>
    
    <form enctype="multipart/form-data" method="post" id="frm2" action="upload.jsp">
        <tr><td>Photo</td><td>
            <input type="file" name="photo" id="photo"/>
        </td></tr>
        <tr><td colspan="2">
            <input type="submit" value="upload"/>
        </td></tr>
    </form>
    
</body>
</html>