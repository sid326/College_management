
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author siddhant
 */
public class Emailsender1 {
    public static boolean sendMail(String from,String password,String msg,String to[])
    {
        System.out.println(to[0]);
        System.out.println(to[1]);
       String host="smtp.gmail.com";
        Properties props=System.getProperties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", password);
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.auth", "true");
        System.out.println("sid1");
        Session s=Session.getDefaultInstance(props,null);
        MimeMessage mm=new MimeMessage(s);
        try{
        mm.setFrom(new InternetAddress(from));
        InternetAddress[] toAdd=new InternetAddress[to.length];
        for(int i=0;i<to.length;i++)
        {
            toAdd[i]=new InternetAddress(to[i]);
            System.out.println("sid2");
        }
        for (int i=0;i< toAdd.length;i++)
        {
            mm.setRecipient(Message.RecipientType.TO, toAdd[i]);
           System.out.println("sid3");
            
        }
        mm.setSubject("mail to verify");
        mm.setText(msg);
        Transport t=s.getTransport("smtp");
        System.out.println("sid5");
        t.connect(host,from,password);
        System.out.println("sid6");
        t.sendMessage(mm, mm.getAllRecipients());
        t.close();
        return true;
        }catch(Exception e)
        {
            System.out.println(e);
        }
        return false;
    }
}
