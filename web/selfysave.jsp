<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="sun.misc.BASE64Decoder"%>


        <%
            try {
                StringBuffer buffer = new StringBuffer();
                Reader reader = request.getReader();
                int current;
                while ((current = reader.read()) >= 0) {
                    buffer.append((char) current);
                }
                String data = new String(buffer);
                data = data.substring(data.indexOf(",") + 1);

                String selfienm = new Random().nextInt(100000) + ".jpg";
               
                FileOutputStream output = new FileOutputStream(new File("/D:/imagezapper/web/upload/"
                        + selfienm));

                output.write(new BASE64Decoder().decodeBuffer(data));
%>
<c:set var="photo" value="<%=selfienm%>" scope="session"/>
<c:set var="photo_tmp" value="<%=selfienm%>" scope="session"/>
<c:set var="photo_original" value="<%=selfienm%>" scope="session"/>
               
<%                output.flush();
                output.close();
                
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>

