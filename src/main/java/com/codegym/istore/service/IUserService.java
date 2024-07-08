package com.codegym.istore.service;

import com.codegym.istore.model.User;

public interface IUserService {
    User login(String username, String password);

    User checkAccountExist(String username);

    void register(String username, String password);
}
