package com.nmcnpm.mail;

import javax.mail.Session;

public interface ISendMail {
	public Session config();

	public void send(Session session, String emailFrom, String emailTo, String content, String subject);
}
