<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script language="javascript">
                var ans = true;


                function checkpw()
                {
                    var p = document.getElementById('nwpwd');
                    var cp = document.getElementById('cnpwd');
                    var sp = document.getElementById('er');
                    if (p.value != cp.value)
                    {
                        sp.style.display = 'inline';
                        ans = false;
                    }
                    else
                    {
                        sp.style.display = 'none';
                        ans = true;
                    }
                }
                function valid()
                {
                    return ans;
                }
            </script>
            <title>Password Recovery</title>
    </head>
    <body>
        <form onsubmit="return valid()">
            <c:set var="m" value="${param.mail}" scope="page"/>
            new password:<input type="password" name="nwpwd" id='nwpwd'/>
            confirm password:<input type="password" name="cnpwd" id='cnpwd' onblur="checkpw()"/>
            <span id="er" style="display:none; color:#F00">(password and confirm password must match)</span>
            <input type="hidden" value="${m}" name="mail" id='mail' />

            <input type="submit" value="Change"/>

            <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/imagezapper" user="root" password=""/>
            <c:out value="${param.mail}"/>
            <sql:update dataSource="${ds}" var="c">

                update users SET password='${param.nwpwd}'WHERE email='${param.mail}'

            </sql:update>
        </form>
    </body>
</html>
