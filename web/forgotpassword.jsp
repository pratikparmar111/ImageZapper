<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>forgot password </title>
    </head>
    <body>
        <%!
            Connection con, con2;
            Statement stmt, stmt2;
            ResultSet rs, rs2;
            String nm, email;
        %>
        <%
            nm = request.getParameter("txtnm");
            if (request.getParameter("submit") != null) 
            {

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
                stmt = con.createStatement();

                rs = stmt.executeQuery("select * from users where username='" + nm + "' ");

                while (rs.next()) {
                    // Object pwd = rs.getObject(3);
                    email = rs.getString(4);
                    out.print("we already send you link to email address");
        %>
        type your reset code
        <input type="text" name="txtresetcode" id="txtresetcode" required="required" /></br>

        <%            
             String resetcodetype= request.getParameter("txtresetcode");
             if (sendresetcode == resetcodetype) 
             {

            %> 
                <input type="button" value="change" name="submit" on click="resetpassword.jsp?txtresetcode=yes" />
            <%                    
}
                }
            }
                else 
                {
                        
            %>
            <form >//method="post">

                <table>
                    enter your user name
                    <input type="txtnm" name="txtnm" id="txtnm" required="required" /></br>
                    <input type="submit" value="change" name="submit"/></br>
                </table>

                <%
                    }
                %>

            </form>

    </body>
</html>