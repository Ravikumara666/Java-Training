package com.example.demo.service;

import com.example.demo.model.User;
import com.example.demo.repository.Repo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HelloService {

    @Autowired
    private Repo repo;

    public String CreateUser(User user) {
        repo.save(user);
        return "User created successfully";
    }

    public List<User> GetAllUsers() {
        return repo.findAll();
    }

    public String updateUser(int userId, User users) {
        return repo.findById(userId).map(user -> {
            user.setUsername(users.getUsername());
            user.setPassword(users.getPassword());
            user.setEmail(users.getEmail());
            repo.save(user);
            return "User updated successfully";
        }).orElse("User not found");
    }

    public String deleteUser(int userId) {
        if (repo.existsById(userId)) {
            repo.deleteById(userId);
            return "User deleted successfully";
        }
        return "User not found";
    }
}