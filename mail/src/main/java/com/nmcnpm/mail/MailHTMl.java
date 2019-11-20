package com.nmcnpm.mail;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailHTMl implements ISendMail {

    private String emailFrom;
    private String emailTo;
    private String htmlContent;
    private String subject;

    public MailHTMl(String emailFrom, String emailTo, String htmlContent, String subject) {
        super();
        this.emailFrom = emailFrom;
        this.emailTo = emailTo;
        this.htmlContent = htmlContent;
        this.subject = subject;
    }

    @Override
    public void send() {
        startSend(config(), emailFrom, emailTo, htmlContent, subject);

    }

    @Override
    public Session config() {
        Session session = null;
        Properties prop = new Properties();
        InputStream is = null;

        try {
            is = getClass().getResourceAsStream("/application.properties");

            prop.load(is);
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.starttls.enable", "true");
            session = Session.getInstance(prop, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(prop.getProperty("username"), prop.getProperty("password"));
                }
            });

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return session;
    }

    ;

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
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
;

}
