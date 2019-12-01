package com.nmcnpm.mail;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class MailSystem {

    private static final BlockingQueue<Runnable> blockingQueue = new ArrayBlockingQueue<>(50);
    private static final ThreadPoolExecutor executor = new ThreadPoolExecutor(20, 40, 60000, TimeUnit.MILLISECONDS, blockingQueue);

    public static void execute(SendMail mail) {
        Runnable task=new Runnable() {

            @Override
            public void run() {
                try{
                    mail.send();
                }catch (RuntimeException e) {
                    e.printStackTrace();
                }
            }
        };
        executor.execute(task);
    }

    public static void shutdown() {
        executor.shutdown();
    }
}