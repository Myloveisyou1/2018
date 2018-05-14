package com.example.activemqserver;

import org.apache.activemq.command.ActiveMQQueue;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;

import javax.jms.Queue;

@SpringBootApplication
@EnableEurekaClient
public class ActivemqServerApplication {

	@Bean
	public Queue queue() {

		return new ActiveMQQueue("HelloWord");
	}

	public static void main(String[] args) {
		SpringApplication.run(ActivemqServerApplication.class, args);
	}
}
