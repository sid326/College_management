/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//import mail.Emailsender;
/**
 *
 * @author siddhant
 */
public class Email {
    public static void main(String ags[])
    {
        String[] to={"siddhants29@gmail.com,siddhant.siddhant2@gmail.com"};
       if(Emailsender1.sendMail("sid7326@gmail.com","", "hiiiiiiiii", to))
           System.out.println("sent");
       else
           System.out.println("not sent");
    }
}
