package com.tp.dao;

import com.tp.model.User;
import java.util.HashMap;
import java.util.Map;

public class UserDao {

    private static Map<String, User> users = new HashMap<>();

    public boolean addUser(User user) {
        if (users.containsKey(user.getEmail())) {
            return false;
        }
        
        users.put(user.getEmail(), user);
        return true;
    }

    public User getUserByEmail(String email) {
        return users.get(email);
    }

    public boolean validate(String email, String password) {

        User user = users.get(email);

        if (user == null) {
            return false;
        }

        return user.getPassword().equals(password);
    }
}