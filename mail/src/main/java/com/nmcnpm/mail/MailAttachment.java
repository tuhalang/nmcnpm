package com.nmcnpm.mail;

import java.util.Date;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailAttachment extends SendMail {

    private Multipart multipart;
    private String subject;

    public MailAttachment(String emailFrom, String emailTo, Multipart multipart, String subject) {
        super(emailFrom, emailTo);
        this.multipart = multipart;
        this.subject = subject;
    }

    public void send() {
        startSend(config(), emailFrom, emailTo, multipart, subject);
    }

    public void startSend(Session session, String emailFrom, String emailTo, Multipart multipart, String subject) {
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(emailFrom));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
            message.setContent(multipart);
            message.setSubject(subject);
            message.setSentDate(new Date());
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
