package ua.com.ushop.service;

import org.springframework.stereotype.Service;
import ua.com.ushop.entity.Cart;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface CartServise {

    void saveOneCart(Cart cart);

    void save(List<Cart> cart);

    List<Cart> findAll();

    List<Cart> fetchProduct();

    void delete(int id);
}
