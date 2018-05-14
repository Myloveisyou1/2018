package com.example.activemqserver.producer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsMessagingTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import javax.jms.Queue;
import java.util.Random;

/**
 * @Descript: 生产者
 * @Author: liuyingjie
 * @Date: create in 2018/5/11 0011 11:08
 */
@Component
public class Producer {

    @Autowired
    private JmsMessagingTemplate jmsMessagingTemplate;

    @Autowired
    private Queue queue;

    int i = 0;

    @Scheduled(fixedDelay = 3000)
    // 每3s执行1次
    public void send() {
        if(i <= 3) {
            this.jmsMessagingTemplate.convertAndSend(this.queue, "hi,activeMQ"+new Random().nextInt(100));
            i++;
        }

    }
    /*@Scheduled(fixedDelay = 1000)
    public void sendMsg() {
        this.jmsMessagingTemplate.convertAndSend(queue,"我是生产者2生产的"+new Random().nextInt(100));
    }*/
}
