package com.bank.dao;

import com.bank.configuration.ConnectionProvider;
import com.bank.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * @author Amol.Sarwade
 */
public class UserDaoImpl implements UserDao {

    private Connection connection;

    public UserDaoImpl() {
        connection = ConnectionProvider.getConnection();
    }

    public int save(User user) {
        final String insertSql = "INSERT INTO user(email, username, password) VALUES(?,?,?,?)";
        try {
            PreparedStatement pstmt = connection.prepareStatement(insertSql);
            pstmt.setString(1, user.getEmail());
            pstmt.setString(2, user.getUsername());
            pstmt.setString(3, user.getPassword());

            return pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
}
