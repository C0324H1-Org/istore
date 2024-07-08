package com.codegym.istore.repository.impl;

import com.codegym.istore.connection.DBConnection;
import com.codegym.istore.model.Gender;
import com.codegym.istore.model.User;
import com.codegym.istore.repository.IUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRepository implements IUserRepository {
    Connection conn = DBConnection.getConnection();
    PreparedStatement ps = null;
    ResultSet rs = null;
    private static final String LOGIN = "select * from user where user_name = ? and password = ?";
    private static final String CHECK_ACCOUNT_EXITS = "select * from Account where user_name = ?";
    private static final String REGISTER_ACCOUNT = "insert into Account(user_name, password, id_sell, id_admin) values(?,?,0,0)";
    @Override
    public User login(String username, String password) {
        try{
            ps = conn.prepareStatement(LOGIN);
            ps.setString(1, username);
            ps.setString(2, password);

            rs = ps.executeQuery();

            while(rs.next()){
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        Gender.valueOf(rs.getString(5)),
                        rs.getDate(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9)
                );
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public User checkAccountExist(String username) {
        return null;
    }

    @Override
    public void register(String username, String password) {

    }
}
