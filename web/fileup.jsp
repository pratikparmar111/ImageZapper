<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>File upload</title>
        <script  type="text/javascript">
            function valid()
            {
                var image_path = document.getElementById('photo');
                var fnm = image_path.value;

                if (fnm !== "")
                {
                    return true;
                }
                else
                {
                    alert("Please Select an Image");
                    return false;
                }
            }

        </script>
    </head>
    <body>
        <%
            if(request.getParameter("file")!=null)
            {
                session.setAttribute("photo", request.getParameter("file"));
                        
            }
            //out.print(photo);
            if (request.getParameter("errmsg") != null) 
            {
                out.print("too big size");
            }
            if (session.getAttribute("photo")!=null ) 
            {
        %>
        <div>
            <img id="img1" src=upload/<%=session.getAttribute("photo")%> height="300" width="500"/>
        </div>

<!--        <div> <jsp:include page="button.jsp"/>
        </div>-->
        <%--<input type="button" value="Next" onselect="effect.jsp?photo=<%=pic%>"/
<--%>
        <%

        } 
        else 
        {
            //String s1="<input type=button value=Next";
        %>
        <form enctype="multipart/form-data" method="post" onsubmit="return valid()" id="frm2" action="upload.jsp">
            <tr><td>Photo</td><td>
                    <input type="file" name="photo" id="photo"/>

                </td></tr>
            <tr><td colspan="2">
                    <input type="submit" value="upload" />
                </td></tr>
        </form>
        <%        
        }
        %>
    </body>
</html>