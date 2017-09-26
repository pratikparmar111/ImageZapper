<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Properties"%>                                                            
<%@page import="javax.mail.Session"%>                                                               
<%@page import="javax.mail.Authenticator"%>                                                    
<%@page import="javax.mail.PasswordAuthentication"%>                                   
<%@page import="javax.mail.Message"%>                                                              
<%@page import="javax.mail.internet.MimeMessage"%>                                       
<%@page import="javax.mail.internet.InternetAddress"%>                              
<%@page import="javax.mail.Transport"%> 
<%@page import="javax.net.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%

                Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		
 
		Session session1 = Session.getDefaultInstance(props,new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("imagezapper@gmail.com","maliktejas");
				}
			});
 
		try {
 
			Message message = new MimeMessage(session1);
                       
			message.setFrom(new InternetAddress("imagezapper@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(request.getParameter("mail")));
			message.setSubject("Verifivation");
                        
			message.setText("http://localhost:8080/imagezapper/forgotpasswordrecovery.jsp?mail="+request.getParameter("mail"));
                        
			Transport.send(message);
                        
			System.out.println("Done");
                        response.sendRedirect("passwordrecovery.jsp");
 
		}
                catch (Exception e) 
                {
			out.print(e);
		}
       %>

    </body>
</html>
