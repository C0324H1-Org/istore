package com.codegym.istore.repository;

import com.codegym.istore.model.User;

public interface IUserRepository {
    User login(String username, String password);

    User checkAccountExist(String username);

    void register(String username, String password);
}
