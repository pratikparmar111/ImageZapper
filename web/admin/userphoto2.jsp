<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
    </head>

    <body>

        <%! //CODE ALL PAGE BY ELPATO
            Connection con, con2;
            Statement stmt, stmt2;
            ResultSet rs2, rs;
            String n, p, s1;
            String mail, cn, st, ct, ge, phm, nm, date, pwd, filename, name, idate;
            int submit;
            int temp = 0;
            int pageperview = 2, totaluser = 0, noofpage = 0, nextpage = 0, firstpage = 1, pageid = 0;
            int cnt1 = 0;

        %>
        <div>
            <p title="GALARY" align="center" ><b>USER uploaded photo</b></p>	
        </div>

        <%
            Object unm1 = request.getParameter("txtmail");
            String unm = unm1 + "";
            pageid = Integer.parseInt(request.getParameter("pageid"));
            Class.forName("com.mysql.jdbc.Driver");
            con2 = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
            stmt2 = con2.createStatement();
            rs2 = stmt2.executeQuery("select *from users ORDER BY date_img DESC");
            while (rs2.next()) {
                Object id1 = rs2.getObject(1);
                cnt1 = cnt1 + 1;
            }
            
            totaluser = cnt1;
            cnt1 = 0;
            //out.print("</br>totaluser" + totaluser + "</br>");
            noofpage = totaluser / pageperview;
            //out.print("</br>noofpage" + noofpage + "</br>");

            int tempfirstpage1 = pageid - 1;
            int tempfirstpage = pageperview * tempfirstpage1;

            firstpage = tempfirstpage + 1;
            //out.print("</br>firstpage" + firstpage + "</br>");
            nextpage = firstpage + 1;
            //out.print("</br>nextpage" + nextpage + "</br>");

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
            stmt = con.createStatement();
            s1 = "SELECT*FROM users ORDER BY date_img DESC LIMIT " + firstpage + "," + pageperview;
            rs = stmt.executeQuery(s1);

            while (rs.next()) {
                Object nm = rs.getString(2);
                Object tpwd = rs.getObject(3);
                pwd = tpwd + "";
                Object tdate = rs.getObject(5);
                date = tdate + "";
                mail = rs.getString(4);
                Object ph = rs.getObject(6);
                phm = ph + "";
                cn = rs.getString(7);
                st = rs.getString(8);
                ct = rs.getString(9);
                ge = rs.getString(10);
                filename = rs.getString(12);
                
                idate = rs.getString(13);
        %><table>
            <tr>
                <td>
                    <div >
                        <th colspan="1" >
                            <%
                                if (request.getParameter("submit") == null) {
                            %>
                            <a href="userphoto2.jsp?txtmail=<%=mail%>&pageid=<%=pageid%>">
                                <%
                                } else {
                                %>
                                <a href="userphoto2.jsp?txtmail=<%=mail%>&submit=<%=submit%>&pageid=<%=pageid%>">

                                <%}
                                %>
                                <div class="images" style="border:groove">

                                    <img src="../upload/<%=filename%>" height="100" width="150" /></a></br>
                        </th>	
                                </div>
                    </div>
                </td>
                <td>
                    <div id="1">
                        filename:<%=filename%><br />
                        name:<%=name%><br />
                        date<%=date%>
                    </div>
                    <td>
                        </tr>
                        </table>    
                        <%
                            if (unm.equals(mail)) {
                        %>

                                User Name:<%out.print(nm);%></br>
                                Password:<%out.print(pwd);%></br>
                                Birth Date:<%out.print(date);%></br>
                                Phone:<%out.print(phm);%></br>
                                Country:<%out.print(cn);%></br>
                                State:<%out.print(st);%></br>
                                City:<%out.print(ct);%></br>
                                Gender:<%out.print(ge);%></br> 
                        <%
                                }
                            }

                            if (request.getParameter("submit") == null) {
                                int j = 1;
                                while (j <= noofpage) {
                        %>
                        <form>
                            <input type="submit" name="pageid" id="submit" value="<%=j%>" />

                            <%
                                        j++;

                                    }
                                }
                            %>
                        </form>
                        </body>
                        </html>
