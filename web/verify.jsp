<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" session="true" errorPage="" %>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Untitled Document</title>
    </head>
    <body>
        <%!
            Connection con;
            Statement stmt;
            ResultSet rs;
            Random r;
            int rn;
        %>

        <%
            //all page done bye pato

            Object unm = request.getParameter("txtmail");
            Object email1 = request.getParameter("txtemail");
            out.println(unm);

            if (email1 != null) {
                Object urdm = request.getParameter("txtrdm");
                Object hrdm = request.getParameter("rdm");

                String code1 = urdm + "";
                out.print("code1" + code1 + "</br>");

                String code2 = hrdm + "";
                out.print("code2" + code2 + "</br>");

                if (code1.equals(code2)) {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
                    stmt = con.createStatement();

                    int c = stmt.executeUpdate("update users set activation_status = 1 where email='" + unm + "'");

                    if (c != 0) {
                        response.sendRedirect("login.jsp");
                    }else
                    {
                       // out.print("not verified");
                    }
                        
                    
                }
            }

            if (request.getParameter("txtrdm") == null) {
                r = new Random();
                rn = r.nextInt(9000) + 1000;
                out.println(rn);
            }


        %>
        <form method="post">
            <table>          
                activation code <input type="text" name="txtrdm" id="txtrdm" required="required" /> </br>

                <input type="hidden" value=<%=rn%> name="rdm" id="rdm">
                    <input type="hidden" value=<%=email1%> name="txtemail" id="txtemail">

                        <input type="submit" name="submit" id="submit" /></br>

                        </table>
                        </form >
                        </body>
                        </html>