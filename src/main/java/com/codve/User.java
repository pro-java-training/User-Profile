package com.codve;

import lombok.Data;

import java.util.Hashtable;
import java.util.Map;

@Data
public class User {
    private long userId;
    private String username;
    private String firstName;
    private String lastName;
    private Map<String, Boolean> permissions = new Hashtable<>();
}
