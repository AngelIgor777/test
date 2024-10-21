package org.example.demospringdocker1.controllers;

import lombok.RequiredArgsConstructor;
import org.example.demospringdocker1.entity.User;
import org.example.demospringdocker1.repository.UserRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@RequiredArgsConstructor
public class TestController {

    private final UserRepository userRepository;

    public TestController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    @PostMapping
    public String test() {

        User igorek = new User();
        userRepository.save(igorek);
        return "success";
    }
}
