<%@ page contentType="text/html;  charset=utf-8" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@page import="java.util.Properties"%>                                                            
<%@page import="javax.mail.Session"%>                                                               
<%@page import="javax.mail.Authenticator"%>                                                    
<%@page import="javax.mail.PasswordAuthentication"%>                                   
<%@page import="javax.mail.Message"%>                                                              
<%@page import="javax.mail.internet.MimeMessage"%>                                       
<%@page import="javax.mail.internet.InternetAddress"%>                              
<%@page import="javax.mail.Transport"%> 
<%@page import="javax.net.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
     <script language="javascript">

            function recovery()
            {
                
                window.location = "mail.jsp?mail=" + document.getElementById("mail").value ;
            }
        </script>
        <title>Password Recovery</title>
    </head>
    <body>
        <form>
            Enter Email:<input type='email' name="mail" id='mail'/>
        
            <input type="button" value="send" onclick="recovery()"/>
        
        </form>
        

    </body>
</html>
