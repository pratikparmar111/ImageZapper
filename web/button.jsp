<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script  type="text/javascript">

            function effect()
            {
               window.location = "effect.jsp";
            }
            function crop()
            {
                window.location = "crop.jsp";
            }
            function compression()
            {
                window.location = "compression.jsp";
            }
        </script>
    </head>
    <body>
        <input type="button" value="Effect"  onclick="effect()"/> 
        <input type="button" value="Crop" onclick="crop()"/>
        <input type="button" value="Compression" onclick="compression()"/>

    </body>
</html>
