package ua.com.ushop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.com.ushop.dao.UserDAO;
import ua.com.ushop.entity.User;
import ua.com.ushop.service.UserService;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;
    @Autowired
    PasswordEncoder passwordEncoder;

    public void save(User user) {
       String encodePassword= passwordEncoder.encode(user.getPassword());
    user.setPassword(encodePassword);
    userDAO.save(user);
    }
    public User findUserByUsername(String username) {
        return userDAO.findByUserName_(username);
    }

    public User findUserByEmail(String email) { return userDAO.findByEmail_(email); }

    public List<User> findAllUsers() {
        return userDAO.findAll();
    }

    public User findById(int id) {
        return userDAO.findOne(id);
    }

    public void deleteById(int id) { userDAO.delete(id); }

    @Override
    public void update(User user) {
        userDAO.save(user);
    }


    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User account = userDAO.findByUserName_(username);

       /* if (account == null) {
            throw new UsernameNotFoundException("User " //
                    + username + " was not found in the database");


        }*/
        return account;

    }}