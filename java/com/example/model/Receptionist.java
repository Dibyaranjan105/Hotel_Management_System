package com.example.model;

public class Receptionist {
    private String username;
    private String password;

    public Receptionist(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
}
