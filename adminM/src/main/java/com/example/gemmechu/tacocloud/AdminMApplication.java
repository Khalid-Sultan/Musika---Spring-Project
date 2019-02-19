package com.example.gemmechu.tacocloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
@EnableAdminServer
@SpringBootApplication
public class AdminMApplication {

	public static void main(String[] args) {
		SpringApplication.run(AdminMApplication.class, args);
	}

}

