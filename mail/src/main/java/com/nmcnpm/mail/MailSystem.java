package com.nmcnpm.mail;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@ SuppressWarnings("unused")
public class MailSystem {
	private static ExecutorService executor=Executors.newSingleThreadExecutor();
	public static void execute(ISendMail mail) {
		Runnable task=new Runnable() {
			
			@Override
			public void run() {
				try{
					mail.send();
				}catch (RuntimeException e) {
					// TODO: handle exception
				}
				
			}
		};
		executor.execute(task);
		
	}
public static void shutdown() {
	executor.shutdown();
}
	public static void main(String[] args) {
		String email="huydong.hoanam@gmail.com";
		String content="Hbbbub";
		String subject="ub";
		for(int i=0;i<20;i++){
		MailSMTP mail= new MailSMTP(email, email, content, subject);
		MailSystem.execute(mail);
		}
	}
	}


