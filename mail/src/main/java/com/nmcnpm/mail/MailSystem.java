package com.nmcnpm.mail;

public class MailSystem implements Runnable {
	private ISendMail mail;
	private String emailFrom;
	private String emailTo;
	private String content;
	private String subject;

	public MailSystem(ISendMail mail) {
		this.mail = mail;
	}

	public void setEmail(String emailFrom, String emailTo, String content, String subject) {
		this.emailFrom = emailFrom;
		this.emailTo = emailTo;
		this.content = content;
		this.subject = subject;
	}

	@Override
	public void run() {
		mail.send(mail.config(), emailFrom, emailTo, content, subject);

	}
}
