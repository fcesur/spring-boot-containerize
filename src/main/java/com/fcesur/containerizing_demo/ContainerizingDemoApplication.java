package com.fcesur.containerizing_demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
public class ContainerizingDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(ContainerizingDemoApplication.class, args);
    }

    @GetMapping
    public ResponseEntity<String> isAlive() {
        return ResponseEntity.ok("alive");
    }
}
