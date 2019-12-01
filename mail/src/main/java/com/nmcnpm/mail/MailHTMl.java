package com.nmcnpm.mail;

import java.util.Date;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailHTMl extends SendMail {

    private String htmlContent;
    private String subject;

    public MailHTMl(String emailFrom, String emailTo, String htmlContent, String subject) {
        super(emailFrom, emailTo);
        this.htmlContent = htmlContent;
        this.subject = subject;
    }

    @Override
    public void send() {
        startSend(config(), emailFrom, emailTo, htmlContent, subject);
    }

    public void startSend(Session session, String emailFrom, String emailTo, String htmlContent, String subject) {
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(emailFrom));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
            message.setContent(htmlContent, "text/html");
            message.setSubject(subject);
            message.setSentDate(new Date());
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }
    ;

}