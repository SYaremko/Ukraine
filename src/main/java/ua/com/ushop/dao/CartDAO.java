package ua.com.ushop.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ua.com.ushop.entity.Cart;
import java.util.List;


public interface CartDAO extends JpaRepository <Cart, Integer> {

    @Query("from Cart c join fetch c.products")
    public List<Cart> fetchProduct();
}

