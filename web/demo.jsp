<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
    </head>

    <body>
        <h3>Please upload the image you wish to use.</h3>
        <input id="photoin" type="file" accept="image/*;capture=camera"/>
        <a href="#delete_1" data-role="button" onClick="save()">Submit</a>
        <script>
            var i = 0;
            function save()
            {
                var input = document.getElementById("photoin").value;
                var name = "photo_" + i;
                ocalStorage.setItem(name, input);
                $("#QR").src = window.localStorage[name];
                i++;
            }
        </script>

    </body>
</html>