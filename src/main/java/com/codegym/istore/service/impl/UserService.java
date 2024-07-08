package com.codegym.istore.service.impl;

import com.codegym.istore.model.User;
import com.codegym.istore.repository.IUserRepository;
import com.codegym.istore.repository.impl.UserRepository;
import com.codegym.istore.service.IUserService;

public class UserService implements IUserService {
    private static final IUserRepository userRepository = new UserRepository();
    @Override
    public User login(String username, String password) {
        return userRepository.login(username, password);
    }

    @Override
    public User checkAccountExist(String username) {
        return null;
    }

    @Override
    public void register(String username, String password) {

    }
}
