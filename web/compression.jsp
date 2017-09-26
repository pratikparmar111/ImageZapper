<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@ page 
    import=" java.io.*"
    import="java.util.*"
    import="java.awt.image.*"
    import="javax.imageio.*"
    import="javax.imageio.stream.ImageOutputStream"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Compression</title>

    </head>

    <body>

        <c:set var="p" value="${sessionScope.photo}" scope="page" />
        <c:set var="p_original" value="${sessionScope.photo_original}" scope="page" />
        <c:choose>
            <c:when test="${p != null}" >

                <c:set var="i" value="0.5"/>
                <c:if test="${param.quality != null}">
                    <c:set var="i" value="${param.quality}"/>
                    <c:set var="i" value="${(100 - i) / 100}"/>
                </c:if>
                <%!
                    String fin;
                %>    
                <table>
                    <tr>
                        <td>
                            <%
                                File input = new File("d:\\imagezapper\\web\\upload\\" + pageContext.getAttribute("p_original").toString());
                                float sizeinput = (input.length()) / 1024.0f;
                                sizeinput = ((int) (sizeinput * 100)) / 100.0f;
                                BufferedImage image = ImageIO.read(input);
                            %>

                            <img src="upload/${p_original}" alt='No image found' height="200" width="300"/> 
                            <br/>
                            <%
                                out.print(sizeinput + "KB");
                            %> </td><td>
                                
                            <form>
                                <input type="number" name='quality' id="quality" min='0' max="100" title="Not compatible" />
                                <input type="submit"/> 
                            </form>
                            </td><td>
                            <%
                                StringBuffer sb = new StringBuffer(pageContext.getAttribute("p_original").toString());
                                int idx = sb.lastIndexOf(".");
                                float comp = Float.parseFloat(pageContext.getAttribute("i").toString());
                                sb.replace(idx, idx, "_compression_" + (100 - (100 * comp)));

                                fin = sb.substring(sb.lastIndexOf("/") + 1);
                                File compressedImageFile = new File("d:\\imagezapper\\web\\upload\\" + fin.toString());

                                OutputStream os = new FileOutputStream(compressedImageFile);
                                Iterator<ImageWriter> writers = ImageIO.getImageWritersByFormatName("jpg");

                                ImageWriter writer = (ImageWriter) writers.next();
                                ImageOutputStream ios = ImageIO.createImageOutputStream(os);
                                writer.setOutput(ios);

                                ImageWriteParam param = writer.getDefaultWriteParam();
                                param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);

                                param.setCompressionQuality(comp);
                                writer.write(null, new IIOImage(image, null, null), param);
                            %>
                            <img src="upload/<%=fin%>" alt='No image found' height="200" width="300"/>   
                            <%
                                session.setAttribute("photo", fin);
                                session.setAttribute("photo_tmp", fin);

                                float sizeoutput = ios.length() / 1024.0f;
                            %><br/><%
                                    out.print((int) (sizeoutput * 100) / 100.0f + "KB");
                                 %><br/><%
                                    out.print(fin);
                            %></td></tr></table><%
                                os.close();
                                ios.close();

                                writer.dispose();


                            %>
                        </c:when>
                        <c:otherwise>
                            <jsp:forward page="fileup.jsp"/>
                        </c:otherwise>
                    </c:choose>
        <a href="download.jsp" > <input type="button" value="Download"/></a>
        <%--<jsp:include page="button.jsp" />--%>

    </body>
</html>