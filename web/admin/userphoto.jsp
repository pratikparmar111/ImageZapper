<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<%! //CODE ALL PAGE BY ELPATO
	Connection con;
	Statement stmt;
	ResultSet rs,rs1;
	String n,p;
	String mail,cn,st,ct,ge,phm,nm,date,pwd,filename,name,idate;
  
	int temp=0;
		
%>
	<div>
  		<p title="GALARY" align="center" ><b>USER uploaded photo</b></p>	
 	</div>
	
<%
	Object unm1=request.getParameter("txtmail");
	String unm=unm1+"";
	out.print("mail"+unm+"</br>");
	
	Object submit2=request.getParameter("submit");
	String submit1=submit2+"";
	out.print("submit"+submit1);
	
	int cnt=0;
	
	  Class.forName("com.mysql.jdbc.Driver");
	  con=DriverManager.getConnection("jdbc:mysql://localhost/imagezapper","root","");
	  stmt=con.createStatement();
	  
	  if (request.getParameter("submit")==null)
	  {
		rs=stmt.executeQuery("select *from users ORDER BY date_img DESC limit 2");
	  }
	  else
	  {
		rs=stmt.executeQuery("select *from users ORDER BY date_img DESC");
	   
	  }
	 		while(rs.next())
			{
				  Object nm=rs.getString(2);
				  //out.print(nm1+"</br>");
				  Object tpwd=rs.getObject(3);
				  pwd=tpwd+"";
				  //out.print(pwd+"</br>");
				  Object tdate=rs.getObject(5);
				  date=tdate+"";
				  //out.print(date+"</br>");
				  mail=rs.getString(4);
				  //out.print(mail+"</br>");
				  Object ph=rs.getObject(6);
				  phm=ph+"";
				  //out.print(ph+"</br>");
				  cn=rs.getString(7);
				  //out.print(cn+"</br>");
				  st=rs.getString(8);
				  //out.print(st+"</br>");
				  ct=rs.getString(9);
				  //out.print(ct+"</br>");
				  ge=rs.getString(10);
				  //out.print(ge+"</br>");
				  filename =rs.getString(12);
				  //out.print(filename+"</br>");
				 
				  idate =rs.getString(13);
				  //out.print(idate+"</br>");
  
	  %>		<table>
				  <tr>
					  <td>
						  <div>
							   <th colspan="1" >
							<%                        	
                                  if (request.getParameter("submit")==null)
                                  {
                            %>
                                        <a href="userphoto.jsp?txtmail=<%=mail%>">
                            <%	  }
                                   else
                                  {
                            %>
                                        <a href="userphoto.jsp?txtmail=<%=mail%>&submit=<%=submit1%>">
                                            
                            <%	   }
                            %>
                                                <img src="../upload/<%=filename%>" height="200" width="300" /></a></br>
								</th>	
  
						  </div>
					  </td>
					  <td>
						  <div>
							  
							  <%=nm%><br />
							 <%=idate%>
						  </div>
					  <td>
				  </tr>
				</table>    
			  <%
			  
			 if(unm.equals(mail))
			  {
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
	  
		if (request.getParameter("submit")==null)
		{		
%>
          <form>
          </br><input type="submit" name="submit" id="submit" value="More" /></br>
          </form> 
<%
		}
%>
</body>
</html>
