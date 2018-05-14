package com.example.activemqconsumer.consumer;

import com.example.activemqconsumer.utils.MailUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

/**
 * @Descript:
 * @Author: liuyingjie
 * @Date: create in 2018/5/11 0011 16:42
 */
@Component
public class Consumer {

    @Autowired
    JavaMailSender javaMailSender;

    @JmsListener(destination = "HelloWord")
    public void receiveMessage(String msg){


        String to = "376775994@qq.com,1193418905@qq.com";
        String content = "测试邮件。。。。。。。。";
        String theme = "图片";
        //new MailUtils().sendFileMail(to,content,theme,"C:\\Users\\Administrator\\Desktop\\cus_reason.xlsx",javaMailSender);
        //new MailUtils().sendTextMail(to,content,theme,javaMailSender);
        //new MailUtils().sendBatchMail(list,theme,content,"C:\\Users\\Administrator\\Desktop\\cus_reason.xlsx",javaMailSender);

        //new MailUtils().sendInlineResourceMail(to,theme,"<html><body>日落<img src='cid:rscId001' ></body></html>","E:\\日落.png","rscId001",javaMailSender);
        new MailUtils().sendTextMail(to,theme,content,javaMailSender);

        System.out.println("msg="+msg);
    }
}
