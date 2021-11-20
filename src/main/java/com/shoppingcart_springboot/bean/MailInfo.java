package com.shoppingcart_springboot.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailInfo {
    String from;
    String to;
    String[] cc;
    String[] bcc;
    String subject;
    String body;
    String[] attachments;

    public MailInfo(String to, String subject) {
        super();
        this.from = "Gui mail. <poly@fpt.edu.vn>";
        this.to = to;
        this.subject = "Dear. "+subject;
        this.body = "Thank you for buying our products ";
    }
}
