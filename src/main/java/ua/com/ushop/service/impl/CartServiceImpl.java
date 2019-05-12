package ua.com.ushop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.ushop.dao.CartDAO;
import ua.com.ushop.entity.Cart;
import ua.com.ushop.service.CartServise;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class CartServiceImpl implements CartServise {
    @Autowired
    private CartDAO cartDAO;

    @Override
    public void saveOneCart(Cart cart) {
cartDAO.save(cart);
    }

    @Override
    public void save(List<Cart> cart) {
        cartDAO.save(cart);
    }

    @Override
    public List<Cart> findAll() {
       return cartDAO.findAll();
    }

    @Override
    public List<Cart> fetchProduct() {
        return cartDAO.fetchProduct();
    }

    @Override
    public void delete(int id) {
        cartDAO.delete(id);
    }
}
