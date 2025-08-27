package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.service.HelloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/users")
public class HelloController {

    @Autowired
    private HelloService helloService;

    @GetMapping
    public List<User> GetAllUsers() {
        return helloService.GetAllUsers();
    }

    @PostMapping
    public String AddUser(@RequestBody User user) {
        return helloService.CreateUser(user);
    }

    @PutMapping("/{id}")
    public String updateUser(@PathVariable("id") int userId, @RequestBody User user) {
        return helloService.updateUser(userId, user);
    }

    @DeleteMapping("/{id}")
    public String deleteUser(@PathVariable("id") int userId) {
        return helloService.deleteUser(userId);
    }
}