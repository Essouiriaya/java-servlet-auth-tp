package com.tp.dao;

import com.tp.model.User;
import java.util.HashMap;
import java.util.Map;


public class UserDao {
    private static Map<String, User> users = new HashMap<>();

    public boolean addUser(User user) {
        if(users.containsKey(user.getEmail())) return false;
        return true;
    }

    public User getUserByEmail(String email) {
        return users.get(email);
    }

    public boolean validate(String email, String password) {
        User user = users.get(email);
        return user != null && user.getPassword().equals(password);
    }
}