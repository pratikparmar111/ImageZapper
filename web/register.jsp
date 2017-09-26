<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*,java.io.*,java.util.*,java.util.Date, javax.servlet.*,java.text.SimpleDateFormat" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="Register.css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script language="javascript">
var ans=true;
       
        
	function checkpw()
	{
		var p=document.getElementById('txtpwd');
		var cp=document.getElementById('txtcpwd');
		var sp=document.getElementById('er');
		if(p.value!=cp.value)
		{
			sp.style.display='inline';
			ans=false;
		}
		else
		{
				sp.style.display='none';
				ans=true;
		}
	}
	function valid()
	{
		return ans;
	}
</script>
</head>

<body>
<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/imagezapper" user="root" password=""/>
	
        <c:set var="unm" value="${param.txtnm}" scope="page"/>	

        <c:choose>
            <c:when test="${unm!=null}" >
                <% 
                    Date date = new Date();
  		String datef1=date.toString();
		//out.print(datef);

                %>
                <c:set var="datef" value="<%= datef1 %>" />
               
                <c:set var="pw" value="${param.txtpwd}" scope="page"/>
                <c:set var="mail" value="${param.txtmail}" scope="page"/>
                <c:set var="date1" value="${param.txtbd}" scope="page"/>
                <c:set var="ph" value="${param.txtph}" scope="page"/>
                <c:set var="cn" value="${param.txtcn}" scope="page"/>
                <c:set var="st" value="${param.txtst}" scope="page"/>
                <c:set var="ct" value="${param.txtct}" scope="page"/>
                <c:set var="g" value="${param.txtge.toString()}" scope="page"/>
                
                <sql:update dataSource="${ds}" var="c">
                    insert into users (username,password,email,dateofbirth,phone,country,state,city,gender,activation_status,date_img) values ('${unm}','${pw}','${mail}','${date1}',${ph},'${cn}','${st}','${ct}','${g}',0,'${datef}')
                </sql:update>
                
                <c:choose>
                    <c:when test="${c!=0}" >
                        Successfully Registered<br/>
                        <%--  <jsp:forward page="verify.jsp?txtmail=${mail}"/> --%>
                        
                            you did not verified yet<br/>
                          <a href='verify.jsp?txtmail=${mail}'>Click hear to verify</a>
                    
                        </c:when>
                    <c:otherwise>
                        Register failed<br/>
                        <a href='register.jsp'>Click here to register again</a>
                    </c:otherwise>   
                </c:choose>
	    </c:when>
        <c:otherwise>
	

<div class="div" align="center">
<h1>Registration</h1>
<form method="post" onsubmit="return valid()">
<table align="center">
	<tr class="un">
		<td>Username</td>
                <td><input type="text" name="txtnm" id="txtnm" required="required" class="infolist" pattern="[a-zA-Z\s]+"/></td>
	 </tr>
    
    	 <tr class="pwd">
        <td>Password</td>
		<td><input type="password" name="txtpwd" id="txtpwd" required="required" class="infolist"/></td>
         </tr>
		 <tr class="cpwd">
        <td>Confirm Password</td>
		<td><input type="password" name="txtcpwd" id="txtcpwd" required="required" onblur="checkpw()"class="infolist" />
        <span id="er" style="display:none; color:#F00">(password and confirm password must match)</span></td>
	 </tr>
     <tr class="email">
    	<td>E-mail</td>
		<td><input type="email" name="txtmail" id="txtmail" required="required" class="infolist" /></td>
	 </tr>
     <tr class="phone">
    	<td>phone</td>
		<td><input type="tel" name="txtph" id="txtph" required="required" class="infolist" pattern="[0-9]{10}"/></td>
 	 </tr>   
    	 <tr class="dob">
        <td>Date of birth</td>
        <td><input type="date" name="txtbd" id="txtbd" required="required" class="infolist"/></td>
     </tr>
    	 <tr class="country">
        <td>Country</td>
		<td><input type="text" name="txtcn" id="txtcn" required="required" class="infolist"/></td>
	 </tr>
    	 <tr class="state">
        <td>State</td>
		<td><input type="text" name="txtst" id="txtst" required="required" class="infolist"/></td>
	 </tr>
    	 <tr class="city">
        <td>City</td>
		<td><input type="text" name="txtct" id="txtct" required="required" class="infolist"/></td>
	 </tr>
    	 <tr class="gender">
        <td>Gender</td>
		<td><input type="radio" name="txtge" id="txtge" value="male" checked="checked" class="infolist"/>Male
	
    	<input type="radio" name="txtge" id="txtge" value="female" class="infolist" />Female</td>		
	 </tr>
    	 <tr >
        <td colspan="2" align="right" ><input type="submit" value="Register" class="register"/> </td>
	 </tr>
    
</table>
</c:otherwise>
</c:choose>
</form>
</div>
</body>
</html>
