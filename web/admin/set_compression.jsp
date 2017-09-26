<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <%!
            Connection con, con2;
            Statement stmt, stmt2;
            ResultSet rs, rs2;
            int txtcr1, txtcr2;
        %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
            stmt = con.createStatement();
            rs = stmt.executeQuery("select *from comp");
            while (rs.next()) {
                txtcr1 = rs.getInt(1);
            }
           
            if (request.getParameter("submit") == null) {
                 out.print("value of c.r. is= " + txtcr1);



        %>
        <form>
            compression ratio
            <input type="number" name="txtcr" id="txtcr"  />
            <input type="submit" name="submit" id="update"/>
        </form>
        <%      
            } else {
        %>
        <%
                Class.forName("com.mysql.jdbc.Driver");
                con2 = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
                stmt2 = con2.createStatement();
                    //Object txtcr1 = request.getParameter("txtcr");
                txtcr1 = Integer.parseInt(request.getParameter("txtcr") + "");
                    //int c = stmt2.executeUpdate("insert into comp cr='" + txtcr1 + "' ");
                int c = stmt2.executeUpdate("update comp SET cr='" + txtcr1 + "' ");
                
                if (c != 0) {
                    out.print("set sucefully!!");
                    
                }
            }
        %>


    </body>
</html>
