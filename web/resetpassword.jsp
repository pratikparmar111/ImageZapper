<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>change password </title>
        <script language="javascript">
            var ans = true;
            function checkpw()
            {
                var p = document.getElementById('txtpwd');
                var cp = document.getElementById('txtcpwd');
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

    </head>
    <body>
        <%!
            Connection con, con2;
            Statement stmt, stmt2;
            ResultSet rs, rs2;
            String nm, pwdoldtype, pwdold, pwdnew;
        %>
        <%
            if (request.getParameter("submit") != null) {
                Object unm = session.getAttribute("user");

                if (unm != null) {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
                    stmt = con.createStatement();

                    rs = stmt.executeQuery("select * from users where email='" + unm + "' ");

                    while (rs.next()) {
                        // Object pwd = rs.getObject(3);
                        nm = rs.getString(2);
                        Object tpwd = rs.getObject(3);
                        pwdold = tpwd + "";
                    }
                    pwdoldtype = request.getParameter("txtoldpwd") + "";
                    //  if (code1.equals(code2))
                    pwdnew = request.getParameter("txtpwd") + "";

                    if (pwdold.equals(pwdoldtype)) {

                        Class.forName("com.mysql.jdbc.Driver");
                        con2 = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
                        stmt2 = con2.createStatement();
                        int c = stmt2.executeUpdate("update users SET password='" + pwdnew + "'WHERE email='" + unm + "'");
                        if (c != 0) {

                            out.print("done change");
        %> <a href="profile.jsp">go to Your Profile </a>
        <%
            }

        } else {
            out.print("there some eror try again ");
        %>  <a href="changepassword.jsp"> go back to  CHANGE PASSWORD </a>  </br>   <%
                }
            }
        } else {
        %>
    <form method="post">

            <table>
               
                new Password
                <input type="password" name="txtpwd" id="txtpwd" required="required" /></br>

                Confirm  new Password

                <input type="password" name="txtcpwd" id="txtcpwd" required="required" onblur="checkpw()" />
                <span id="er" style="display:none; color:#F00">(password and confirm password must match)</span></br>              
                <input type="submit" value="change" name="submit"/></br>
            </table>

            <%
                }
            %>

        </form> 