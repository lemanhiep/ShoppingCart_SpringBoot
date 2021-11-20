package com.shoppingcart_springboot.service.impl;



import com.shoppingcart_springboot.bean.MailInfo;
import com.shoppingcart_springboot.service.MailerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class MailerServiceImpl implements MailerService {
    @Autowired
    JavaMailSender sender;

    @Override
    public void send(MailInfo mail) throws MessagingException {
        MimeMessage message = sender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
        helper.setFrom(mail.getFrom());
        helper.setTo(mail.getTo());
        helper.setSubject(mail.getSubject());
        helper.setText(mail.getBody(), true);
        helper.setReplyTo(mail.getFrom());

        String[] cc = mail.getCc();
        if(cc != null && cc.length > 0) {
            helper.setCc(cc);
        }
        String[] bcc = mail.getBcc();
        if(bcc != null && bcc.length > 0) {
            helper.setBcc(bcc);
        }
        String[] attachments = mail.getAttachments();
        if(attachments != null && attachments.length > 0) {
            for(String path: attachments) {
                File file = new File(path);
                helper.addAttachment(file.getName(), file);
            }
        }
        sender.send(message);
    }

//	@Override
//	public void send(String to, String subject, String body) throws MessagingException {
//		this.send(new MailInfo(to, subject, body));
//	}

    @Override
    public void send(String to, String subject) throws MessagingException {
        this.send(new MailInfo(to, subject));
    }

    List<MailInfo> queue = new ArrayList<>();

    @Override
    public void queue(MailInfo mail) {
        queue.add(mail);
    }
//@Override
//public void queue(String to, String subject, String body) {
//	queue(new MailInfo(to, subject, body));
//}

//    @Override
//    public void queue(String to, String subject) {
//        queue(new MailInfo(to, subject));
//    }

    @Scheduled(fixedDelay = 5000)
    public void run() {
        while(!queue.isEmpty()) {
            MailInfo mail = queue.remove(0);
            try {
                send(mail);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
