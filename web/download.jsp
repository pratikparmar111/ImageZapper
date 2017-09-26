<%@page  contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.net.URL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>
    <%!
            String fileName;
            
            URL link;
            InputStream in ;
            ByteArrayOutputStream b_out ;
            byte[] buf;
            int n ;
    %>
    <%
        
           try
           {
               Object fn=session.getAttribute("photo");
                fileName = "D:\\imagezapper\\web\\download\\"+fn; //The file that will be saved on your computer
		link = new URL("http://localhost:8080/imagezapper/upload/"+fn); //The file that you want to download
		
     //Code to download
		 
                in = new BufferedInputStream(link.openStream());
		b_out = new ByteArrayOutputStream();
		
		buf = new byte[1024];
		
		n = 0;
		 
		while (-1!=(n=in.read(buf)))
		{
			b_out.write(buf, 0, n);
		}
		out.close();
		in.close();
		 
		byte[] b_response = b_out.toByteArray();
		FileOutputStream fos = new FileOutputStream(fileName);
		fos.write(b_response);
                
		fos.close();
                request.getHeader("referrer");
			 //End download code
		
           }
           catch(Exception e)
            {
                out.print("  "+e);
            }
        %>
    </body>
</html>
