package ua.com.ushop.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.ushop.entity.User;

public interface UserDAO extends JpaRepository<User, Integer>{

    @Query("from User u where u.username=:username")
    public User findByUserName_(@Param("username") String username);

    @Query("from User u where u.email=:email")
    public User findByEmail_(@Param("email") String email);

}
