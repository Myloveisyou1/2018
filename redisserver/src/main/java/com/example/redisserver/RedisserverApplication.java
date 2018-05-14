package com.example.redisserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.feign.EnableFeignClients;

@SpringBootApplication
public class RedisserverApplication {

	public static void main(String[] args) {
		SpringApplication.run(RedisserverApplication.class, args);
	}
}
