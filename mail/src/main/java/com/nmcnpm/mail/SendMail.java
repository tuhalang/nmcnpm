package com.nmcnpm.mail;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

public abstract class SendMail {
    
    protected String emailFrom;
    protected String emailTo;
    
    public SendMail(String emailFrom, String emailTo){
        this.emailFrom = emailFrom;
        this.emailTo = emailTo;
    }

    protected Session config(){
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
                    return new PasswordAuthentication(prop.getProperty("mail.username"), prop.getProperty("mail.password"));
                }
            });

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return session;
    }

    public abstract void send();
}
