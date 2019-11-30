package com.nmcnpm.mail;

import java.util.Date;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSMTP extends SendMail {

    private String content;
    private String subject;

    public MailSMTP(String emailFrom, String emailTo, String content, String subject) {
        super(emailFrom, emailTo);
        this.content = content;
        this.subject = subject;
    }

    @Override
    public void send() {
        startSend(config(), emailFrom, emailTo, content, subject);

    }

    public void startSend(Session session, String emailFrom, String emailTo, String content, String subject) {
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(emailFrom));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
            message.setText(content);
            message.setSubject(subject);
            message.setSentDate(new Date());
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
;

}
