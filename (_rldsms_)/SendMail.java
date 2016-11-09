/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cms;
import java.io.*;
import java.util.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.*;

/**
 *
 * @author siddhant
 */
public class SendMail {
    
   static String  mail_to;
   static  String result;
   static  String msg_send;
    
    public SendMail(String email,String msg){
        mail_to=email;
        
        msg_send=msg;
    }
    
    public int sms(){
        String from = "siddhant.siddhant2@gmail.com";
        String password ="sssssss";
        String host = "localhost";
        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.host", host);
        Session mailSession = Session.getDefaultInstance(properties);
         try{
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(mail_to));
      // Set Subject: header field
      message.setSubject("Email-verification");
      // Now set the actual message
      message.setText(msg_send);
      Transport.send(message);
      result = "Sent message successfully....";
   }catch (MessagingException e) {
      System.out.println(e);
      result = "Error: unable to send message....";
   }
         System.out.println(
         "<html>\n" +
"<head>\n" +
"<title>Send Email using JSP</title>\n" +
"</head>\n" +
"<body>\n" +
"<center>\n" +
"<h1>Send Email using JSP</h1>\n" +
"</center>\n" +
"<p align=\"center\">\n" +
"\n" +
"   \n" +
"\n" +
"</p>\n" +
"</body>\n" +
"</html>"
         );
         System.out.println("Result:"  + result + "\n");
         return 0;
        
}
    
}
