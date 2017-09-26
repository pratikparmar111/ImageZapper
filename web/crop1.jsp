<%@page  contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<%@page import="javax.servlet.*"%>
<%@page import="java.awt.image.*"%>
<%@page import="javax.imageio.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-control" content="no-cache"/>
<title>Untitled Document</title>
</head>
<body>
    <%
	 try{
            
            //recieving values
            int t=Integer.parseInt(request.getParameter("t"));
            int l=Integer.parseInt(request.getParameter("l"));
            int w=Integer.parseInt(request.getParameter("w"));
            int h=Integer.parseInt(request.getParameter("h"));
            
            //image path
            String imagePath=getServletContext().getRealPath("/")+request.getParameter("i");
            out.print(imagePath);
            //cropping the image
            BufferedImage outImage=ImageIO.read(new File(imagePath));
            BufferedImage cropped=outImage.getSubimage(l, t, w, h);
            
            //extention(jpg)
            ByteArrayOutputStream out1=new ByteArrayOutputStream();
            ImageIO.write(cropped,request.getParameter("f"), out1);

            //getting the itemName
            String itemName=request.getParameter("itemName");
   
            
            //writing the cropped image to the 'cropped' folder (inside WEB)
            String sorcePart1= getServletContext().getRealPath("/");
            int newLetCount = sorcePart1.length()-10;
            String newPath=  sorcePart1.substring(0, newLetCount);
            String sorcePart2 = newPath+"web/upload/";

            //Profile image of the member
            //String image = itemName+".jpg";
            String image1 = itemName;
            
            
            int in=image1.indexOf(".");
            String nam=image1.substring(0, in);
            String image=nam+"_crop.jpg";
            
            String FULLsourceParth=sorcePart2+image;
            out.println("Image path--------------" + FULLsourceParth);
            
            // save the file wit crop dimensions to the WEB folder........
            ImageIO.write(cropped,request.getParameter("f"), new File(FULLsourceParth)); 
            //--------------------------------------------------------------------------------------------------------------
            
            //------------------------------------writing the cropped image to the 'cropped' folder (inside BUILD)------------------KNS---------------
            
            String pathBuild=getServletContext().getRealPath("/upload/");
            String itemNameNewBuild = "/"+itemName+".jpg";
            String fullpathtoBuild=pathBuild+itemNameNewBuild;
            out.println("path to built------------------="+pathBuild+itemNameNewBuild );

            // save the file with crop dimensions to the BUILD folder........
            ImageIO.write(cropped,request.getParameter("f"), new File(fullpathtoBuild)); 
            //---------------------------------------------------------------------------------------------------------------
            
            
            
            session.setAttribute("photo",image);
            session.setAttribute("photo_tmp",image);
            session.setAttribute("photo_original",image);
//redirecting to the final.jsp page after cropping
            RequestDispatcher rd;
            
            rd= request.getRequestDispatcher("crop.jsp");
            rd.forward(request, response);
            
        }
        catch(Exception ex){
            out.println("exception...! " + ex);
        }
	%>

</body>
</html>