package com.spweb.msd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.spweb")
public class MsdApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsdApplication.class, args);

	}

}
