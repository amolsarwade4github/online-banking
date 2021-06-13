package com.bank.services;

import com.bank.dao.UserDao;
import com.bank.dao.UserDaoImpl;
import com.bank.entities.User;

/**
 * @author Amol.Sarwade
 */
public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();

    public int createUser(User user) {
        return userDao.save(user);
    }

}
