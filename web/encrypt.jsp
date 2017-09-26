<%-- 
    Document   : encrypt
    Created on : Jan 11, 2015, 9:56:10 AM
    Author     : Tejas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
 
		    KeyGenerator keygenerator = KeyGenerator.getInstance("DES");
		    SecretKey myDesKey = keygenerator.generateKey();
 
		    Cipher desCipher;
 
		    // Create the cipher 
		    desCipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
 
		    // Initialize the cipher for encryption
		    desCipher.init(Cipher.ENCRYPT_MODE, myDesKey);
 
		    //sensitive information
		    byte[] text = "No body can see me".getBytes();
 
		    out.print("Text [Byte Format] : " + text);
                    %>
                    <br/>
                    <%
		    out.print("Text : " + new String(text));
                    %>
                    <br/>
                    <%
		    // Encrypt the text
		    byte[] textEncrypted = desCipher.doFinal(text);
 
		    out.print("Text Encryted : " + textEncrypted);
                    %>
                    <br/>
                    <%
                     
                    out.print(myDesKey);
 
                    String s=myDesKey+"";
                    int i=s.indexOf("@");
                    String s1=s.substring(i+1);
                    %>
                    <br/>
                    <%
                    out.print(s1);
                    %>
                    <br/>
                    <%
                    
                    String d1="com.sun.crypto.provider.DESKey@"+s1;
                    
                    KeyGenerator keygenerator1 = KeyGenerator.getInstance(d1);
		    SecretKey myDesKey1 = keygenerator1.generateKey();
                    
                    
		    // Initialize the same cipher for decryption
		    desCipher.init(Cipher.DECRYPT_MODE,myDesKey1);
 
		    // Decrypt the text
		    byte[] textDecrypted = desCipher.doFinal(textEncrypted);
                    
		    out.print("Text Decryted : " + new String(textDecrypted));
                   
                    
		}catch(Exception e){
			e.printStackTrace();
		}
            
%>
    </body>
</html>
