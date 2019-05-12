package ua.com.ushop.service;

import org.springframework.security.core.userdetails.UserDetailsService;
import ua.com.ushop.entity.User;

import java.util.List;

public interface UserService extends UserDetailsService{

    void save(User user);

    User findUserByUsername(String username);

    User findUserByEmail(String email);

    List<User> findAllUsers();

    User findById(int id);

    void deleteById(int id);

    void update(User user);

   }
