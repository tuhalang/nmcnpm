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

public class MailSMTP implements ISendMail {

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
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(prop.getProperty("username"), prop.getProperty("password"));
				}
			});

		} catch (

		IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return session;
	};

	@Override
	public void send(Session session, String emailFrom, String emailTo, String content, String subject) {
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

	};

}
