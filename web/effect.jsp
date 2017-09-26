<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" language="java" session="true" import="java.sql.*" errorPage="" %>
<%@ page 
    import="java.awt.*"
    import="java.awt.image.BufferedImage"
    import="java.io.*"
    import="javax.imageio.ImageIO"
    import="javax.swing.JFrame"
    %>
<%!
    BufferedImage image;
    int width;
    int height;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Effect</title>
        <script language="javascript">

            function go(x)
            {
                //document.getElementById('r');
                //alert(a);
                window.location = 'effect.jsp?r=' + x.value ;
            }
        </script>
    </head>
    <body>
<%!
     Object file;
%>
        <%
            Object o1 = request.getParameter("r");
            Object p = session.getAttribute("photo");
            
            Object p_tmp= session.getAttribute("photo_tmp");
        
       
        %>
        <table border="0">
            <tr>
                <td>
                    <img src=upload/<%=p_tmp%> height="200" width="300"/>
                    <br/><p> Original </p>
                </td>
                    
                    <td>

            <%
                if (p != null) {
                    String s1 = "<input type=radio name=r id=r1 value=original onclick=go(this)";
                    String s2 = "<input type=radio name=r id=r2 value=sapia onclick=go(this)";
                    String s3 = "<input type=radio name=r id=r2 value=grayscale onclick=go(this)";

                    if (o1 == null) {
                        //  s1=s1+ " checked";
                    } else {
                        if (o1.equals("original")) {
                            s1 = s1 + " checked";
                        } else if (o1.equals("sapia")) {
                            s2 = s2 + " checked";
                        } else {
                            s3 = s3 + " checked";
                        }
                    }
                    /* else
                     {
                     s1=s1+" checked";   
                     }
                     */

                    s1 = s1 + ">Original<br/>";
                    s2 = s2 + ">Sapia<br/>";
                    s3 = s3 + ">Grayscale<br/>";

                    if (p != null) {
                        out.print(s1);
                        out.print(s2);
                        out.print(s3);
                        file="http://localhost:8080/imagezapper/upload/"+session.getAttribute("photo_tmp");
                        //out.print(file);
                        out.print("<input type=hidden id=h1 value=" + file + ">");
                    } 
                    else {

                        out.print("output");

                    }

            %>
</td>
           
            <td>
                <%
                    if (o1 == null)
                    {

                    }
                    else 
                    {
                        if (o1.equals("original")) 
                        {
                            session.setAttribute("photo", p_tmp);
                        session.setAttribute("photo_original", p_tmp);
                       
                            %>
                <img src=upload/<%=p_tmp%> height="200" width="300"/>
                <br/><p> Original </p>
                <%
                }
                else if (o1.equals("sapia")) 
                {
                    try 
                    {
                        int sepiad = 20;
                        int sepiai = 50;
                        //File input = new File("upload\\"+p);
                        //  out.print(p);

                        java.net.URL u = new java.net.URL(file.toString());
                        image = ImageIO.read(u);
                        
                        
                        width = image.getWidth();
                        height = image.getHeight();
                        for (int i = 0; i < height; i++)
                        {
                            for (int j = 0; j < width; j++) 
                            {
                                Color c = new Color(image.getRGB(j, i));
                                int r = (int) (c.getRed());
                                int g = (int) (c.getGreen());
                                int b = (int) (c.getBlue());
                                int gry = (r + g + b) / 3;
                                r = g = b = gry;
                                r = r + (sepiad * 2);
                                g = g + sepiad;

                                if (r > 255) 
                                {
                                    r = 255;
                                }
                                if (g > 255) 
                                {
                                    g = 255;
                                }
                                if (b > 255) 
                                {
                                    b = 255;
                                }

                                b -= sepiai;
                                if (b < 0) 
                                {
                                    b = 0;
                                }
                                if (b > 255) 
                                {
                                    b = 255;
                                }

                                Color newColor = new Color(r, g, b);
                                image.setRGB(j, i, newColor.getRGB());
                            }
                        }

                        //  out.print(application.get);
                        String fn = file + "";
                        StringBuffer sb = new StringBuffer(fn);

                        int idx = sb.lastIndexOf(".");

                        sb.replace(idx, idx, "_sapia");
                        String fin = sb.substring(sb.lastIndexOf("/") + 1);

                        //  out.print(fin);
                        File ouptut = new File("D:\\imagezapper\\web\\upload\\" + fin);
                    //  File f= new Fileouptut.getAbsoluteFile();
                       
                        // File ouptut = new File();
                        ImageIO.write(image, "jpg", ouptut);
                        session.setAttribute("photo", fin);
                        session.setAttribute("photo_tmp1", fin);
                        session.setAttribute("photo_original", fin);
                %>
                <img src="upload/<%=fin%>" height="200" width="300"/>
                <br/><p>Sapia</p>
                <%
                    } 
                    catch (Exception e) 
                    {
                        out.print(e);
                    }
                } 
                else 
                {
                    java.net.URL u = new java.net.URL(file + "");

                    String fn = file + "";
                    StringBuffer sb = new StringBuffer(fn);
                    try 
                    {
                        //File input = new File(u);
                        image = ImageIO.read(u);
                        width = image.getWidth();
                        height = image.getHeight();
                        int idx = sb.lastIndexOf(".");

                        sb.replace(idx, idx, "_grayscale");
                        String fin = sb.substring(sb.lastIndexOf("/") + 1);

                        //  out.print(fin);
                        for (int i = 0; i < height; i++) 
                        {
                            for (int j = 0; j < width; j++) 
                            {
                                Color c = new Color(image.getRGB(j, i));
                                int red = (int) (c.getRed() * 0.299);
                                int green = (int) (c.getGreen() * 0.587);
                                int blue = (int) (c.getBlue() * 0.114);
                                Color newColor = new Color(red + green + blue, red + green + blue, red + green + blue);
                                image.setRGB(j, i, newColor.getRGB());
                            }
                        }
                        File ouptut = new File("D:\\imagezapper\\web\\upload\\" + fin);
                        //  File f= new Fileouptut.getAbsoluteFile();
                        
                        ImageIO.write(image, "jpg", ouptut);
                        session.setAttribute("photo", fin);
                        session.setAttribute("photo_original", fin);
                       
                %>
                <img src="upload/<%=fin%>" height="200" width="300"/>
                <br/><p>Grayscale</p>
                <%
                            } 
                            catch (Exception e)
                            {
                            }

                        }
                    }
            }
            else
            {
                response.sendRedirect("fileup.jsp");
            }
                %>


            </td>
                 </tr>
                <tr>
                    <td>
                       <a href="download.jsp" > <input type="button" value="Download"/></a>
                       <%--            <jsp:include page="button.jsp"/>  --%>
                    </td>
                </tr>
        </table>
    </body>
</html>