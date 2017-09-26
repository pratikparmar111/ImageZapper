<%-- 
    Document   : rating
    Created on : Jan 12, 2015, 8:32:24 AM
    Author     : Tejas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="jquery/jRating.jquery.css" media="screen" />
<!-- jQuery files -->
<script type="text/javascript" src="jquery/jquery.js"></script>
<script type="text/javascript" src="jquery/jRating.jquery.js"></script>
<script type="text/javascript" src="jquery/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="jquery/jRating.jquery.min.js"></script>


</head>
    <body>
        <div class="exemple6" data-average="10" data-id="6"></div>

<!-- JS to add -->
<script type="text/javascript">
  $(document).ready(function(){
	$(".exemple6").jRating({
	  onSuccess : function(){
		jSuccess('Success : your rate has been saved :)',{
		  HorizontalPosition:'center',
		  VerticalPosition:'top'
		});
	  },
	  onError : function(){
		jError('Error : please retry');
	  }
	});
  });
  </script>
<%
    request.g
            %>
    </body>
    
</html>
