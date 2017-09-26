<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>profilepage</title>
    </head>
    <body>
        <%!
            Connection con;
            Statement stmt;
            ResultSet rs;
            String n, d;
            String mail, cn, st, ct, ge, phm, nm, pwd, date;
            int i;
        %>

        <%
            Object unm = session.getAttribute("user");
            //dt=new Date.getDateTimeInstance();
            //out.print(dt);
            Object edit = request.getParameter("submit");
            Object file1 = request.getParameter("file");
            //out.print("file1="+file1+"</br>");
            //out.print("submit="+edit+"</br>");
            out.print("</br> WELCOME TO PROFILE PAGE <b>" + unm + "</b></br></br></br> ");

                //if(file1==null)
            //{

        %>
        <jsp:include page="fileupuser.jsp"/>

        <%    if (unm != null) {
                //out.print("</br> WELCOME TO PROFILE PAGE <b>"+unm+"</b></br></br></br> ");

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
                stmt = con.createStatement();

                rs = stmt.executeQuery("select * from users where email='" + unm + "' ");

                while (rs.next()) {
                    //Object pwd=rs2.getObject(3);
                    nm = rs.getString(2);
                    //Object tpwd=rs.getObject(3);
                    //pwd=tpwd+"";
                    date = rs.getString(5);
                    // date1= Parce.Integer(tdate);
                    //date = tdate + "";
                    //out.print(date);
                    mail = rs.getString(4);
                    Object ph = rs.getObject(6);
                    phm = ph + "";
                    cn = rs.getString(7);
                    st = rs.getString(8);
                    ct = rs.getString(9);
                    ge = rs.getString(10);
                }
            }

            if (edit != null) {
                String code5 = edit + "";
                String code2 = "edit";
                String code3 = "save";

                if (code5.equals(code2)) {
                    out.print(date);

        %>
        <form method="post" action="profile.jsp?submit=save">

            Username<input type="text" name="txtnm" value=<%=nm%> id="txtnm" required="required"/></br>
            Birth Date<input type="date" name="txtbd" value=<%=date%> id="txtbd" required="required" /></br> 
            phone<input type="number" name="txtph" value=<%=phm%> id="txtph" required="required"/></br>
            Country<input type="text" name="txtcn" value=<%=cn%> id="txtcn" required="required" /></br>
            State<input type="text" name="txtst" value=<%=st%> id="txtst" required="required" /></br>
            City<input type="text" name="txtct" value=<%=ct%> id="txtct" required="required" /></br>
            Gender
            <%
                String temp = "male";
                if (ge == "male") {
            %> 
            <input type="radio" name="txtge" id="txtge" value="male" checked="checked" />Male
            <input type="radio" name="txtge" id="txtge" value="female" />Female</br>
            <%
            } else {
            %>		
            <input type="radio" name="txtge" id="txtge" value="male" checked="checked" />Male  
            <input type="radio" name="txtge" id="txtge" value="female" />Female</br> 
            <%
                }
            %>                    
            <input type="submit" value="submit" id="save" value="save" />
        </form>
        <%
        } else if (code5.equals(code3)) {
            out.print("</br>submitpart</br>");
        %>
        <%!
            Connection con3;
            Statement stmt3;
            ResultSet rs3;
            String mail2, cn2, st2, ct2, ge2, phm2, nm2;
        %>
        <%
                Object nm2 = request.getParameter("txtnm");
                //  Object pwd2=request.getParameter("txtpwd");
                Object date2 = request.getParameter("txtbd");
                Object ph2 = request.getParameter("txtph");
                Object cn2 = request.getParameter("txtcn");
                Object st2 = request.getParameter("txtst");
                Object ct2 = request.getParameter("txtct");
                Object ge2 = request.getParameter("txtge");

                Class.forName("com.mysql.jdbc.Driver");
                con3 = DriverManager.getConnection("jdbc:mysql://localhost/imagezapper", "root", "");
                stmt3 = con3.createStatement();

                //int c=stmt3.executeUpdate("update users SET username='"+nm2+"',password='"+pwd2+"', phone="+ph2+",date='"+date2+"',country='"+cn2+"',state='"+st2+"',city='"+ct2+"',gender='"+ge2+"'WHERE email='"+unm+"'");
                int c = stmt3.executeUpdate("update users SET username='"+ nm2 +"',phone="+ ph2+",dateofbirth='"+ date2+"',country='" + cn2 + "',state='" + st2 + "',city='" + ct2 + "',gender='" + ge2 + "'WHERE email='" + unm + "'");
                //int c=stmt3.executeUpdate("update users SET username='"+nm2+"', phone="+ph2+",date='"+date2+"',country='"+cn2+"',state='"+st2+"',city='"+ct2+"',gender='"+ge2+"'WHERE email='"+unm+"'");
               // int c=stmt.executeUpdate("update into users (username,phone,country,state,city,gender,activation_status) values ('"+nm2+"',"+ph2+",'"+cn2+"','"+st2+"','"+ct2+"','"+ge2+"',0)");

                if (c != 0) {
                    response.sendRedirect("profile.jsp");
                }
            }
        } else {
        %>
        </br></br>

        User Name:<%out.print(nm);%></br>
        <%--Password:<%out.print(pwd);%></br>--%>
        Birth Date:<%out.print(date);%></br>
        Phone:<%out.print(phm);%></br>
        Country:<%out.print(cn);%></br>
        State:<%out.print(st);%></br>
        City:<%out.print(ct);%></br>
        Gender:<%out.print(ge);%></br>  </br>
       
        <form >
            <input type="submit" value="edit" id="submit" name="submit" />
        </form>
    <a href="changepassword.jsp"> FOR CHANGE PASSWORD </a>  </br>                   

    <a href="logout.jsp"> Logout </a>       </br>              

        <%
            }

        %>
    </body>
</html>