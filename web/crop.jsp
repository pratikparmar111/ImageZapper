<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Cache-control" content="no-cache"/>
        <script src="js/jquery-1.4.2.js"></script>
        <script src="js/jquery.Jcrop.js"></script>
        <script language="Javascript">

            $(function()
            {
                //creating the jcropboxIMAGETAG and setting the ration as 1 to 1
                $('#cropbox').Jcrop({
                    aspectRatio: 0,
                    onSelect: updateCoords
                });

            });

            //getting the cordinats of the box
            function updateCoords(c) {
                $('#x').val(c.x);
                $('#y').val(c.y);
                $('#w').val(c.w);
                $('#h').val(c.h);
                
                
            }
            ;

            //checking whether there is a jcrop box
            function checkCoords() {
                if (parseInt($('#w').val()))
                    return true;
                alert('Please select a crop region then press CROP Image Button.');
                return false;
            }
            ;

        </script>
        



        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="p" value="${photo}" scope="session" />
        <c:choose>
            <c:when test="${p!=null}">


                <img src="upload/${p}" id="cropbox"  />
                <form action="crop1.jsp" method="get" onsubmit="return checkCoords();">

                    <input type="hidden" id="x" name="l" />
                    <input type="hidden" id="y" name="t" />
                    <input type="hidden" id="w" name="w" />
                    <input type="hidden" id="h" name="h" />

                    <input type="hidden"  id="f" name="f" value="jpg" />
                    <input type="hidden"  id="i" name="i" value="${"upload\\"}${p}"/>
                    <input type="submit" class="button" value="Crop Image" />

                    <input type="hidden" id="itemName" name="itemName" value="${p}" />
                </form>
            </c:when>
            <c:otherwise>
                <jsp:forward page="fileup.jsp"/>
            </c:otherwise>
        </c:choose>
        <a href="download.jsp" > <input type="button" value="Download"/></a>        
                
<%--<jsp:include page="button.jsp" />--%>
      


    </body>
</html>
