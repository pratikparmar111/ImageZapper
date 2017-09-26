<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*,java.io.*,java.util.*,java.util.Date, javax.servlet.*,java.text.SimpleDateFormat" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="login.css"/>
        <link rel="stylesheet" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Feedback</title>
        <link rel="stylesheet" type="text/css" href="jquery/jRating.jquery.css" media="screen" />
        <script type="text/javascript" src="jquery/jquery.js"></script>
        <script type="text/javascript" src="jquery/jRating.jquery.js"></script>
        <script type="text/javascript" src="jquery/jquery-1.8.0.min.js"></script>
        <script type="text/javascript" src="jquery/jRating.jquery.min.js"></script>

    </head>
    <body>
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/imagezapper" user="root" password=""/>  
        <c:set var="o" value="${sessionScope.user}" />
        <c:choose>
            <c:when test="${o==null}">



                <sql:query var="rs" dataSource="${ds}" sql="select a.username,b.feedback,b.rating,b.date from users a,feedback b where a.id=b.uid">
                </sql:query>
                <c:forEach items="${rs.rows}" var="x">
                    <c:set var="s1" value="${x.username}" scope="page"/>
                    <c:set var="s" value="${x.feedback}" scope="page"/>
                    <c:set var="s2" value="${x.rating}" scope="page"/>
                    <c:set var="s3" value="${x.date}" scope="page"/>

                    <div >   
                        <div style="float: left">${s1}(${s3})</div>
                        <div  class="exemple4" data-average="${s2}" data-id="4"> </div>
                        <div>${s}</div>
                        
                        <div>
                    <script type="text/javascript">
                        $(document).ready(function() {
                            $(".exemple4").jRating({
                                isDisabled: true,
                                length: 5, // nb of stars
                                rateMax: 5,
                                decimalLength: 1 // number of decimal in the rate

                            });
                        });
                       
                    </script>
                        </div>
                    </div>
                </c:forEach>

            </c:when>	
            <c:otherwise>
                <c:choose>
                    
                    <c:when test="${not empty param.feed}">
                        <sql:query var="rs" dataSource="${ds}" >
                            select * from users where email="${o}"
                        </sql:query>
                        <%
                            // rs.next();
                        %>
                        <c:forEach var="r" items="${rs.rows}">     
                            <c:set var="id" value="${r.id}" />
                        </c:forEach>
                        <c:set var="fd" value="${param.feed}"/>
                        <c:set var="rat" value="${param.rating}"/>
                        
                <% 
                Date date=new Date();
                String datef1=date.toString();
		//out.print(datef);
                %>
                <c:set var="datef" value="<%= datef1 %>" />

                        <sql:update var="c" dataSource="${ds}" sql="insert into feedback (uid,feedback,rating,date) values (${id},'${fd}',${rat},'${datef}')">
                        </sql:update>
                        <c:redirect url="feedback.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <div class="feedback_rating">
                            <form action="feedback.jsp">
                                <div class="rating">
                                    <input type="radio" id="star5" name="rating" value="5" /><label for="star5">1 star</label>
                                    <input type="radio" id="star4" name="rating" value="4" /><label for="star4">1 star</label>
                                    <input type="radio" id="star3" name="rating" value="3" /><label for="star3">1 star</label>
                                    <input type="radio" id="star2" name="rating" value="2" /><label for="star2">1 star</label>
                                    <input type="radio" id="star1" name="rating" value="1" /><label for="star1">1 star</label>
                                </div>
                            Feedback
                        <input type="text" name="feed" id="feed"/>	
                        <input type="submit" value="Submit" />
                        </form>
                            </div>
                    </c:otherwise>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </body>
</html>