package ua.com.ushop.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import ua.com.ushop.entity.Cart;
import ua.com.ushop.entity.Products;
import ua.com.ushop.entity.User;
import ua.com.ushop.service.CartServise;
import ua.com.ushop.service.ProductsService;
import ua.com.ushop.service.UserService;

import java.security.Principal;

@RestController
public class RestCont {
    @Autowired
    UserService userService;
    @Autowired
    ProductsService productsService;
    @Autowired
    CartServise cartServise;

    @PostMapping("/addToCart")
    public void addTOcart(@RequestBody Products products, Principal principal) {
        System.out.println(products);
        System.out.println(principal);
        Products byId = productsService.findById(products.getId());
        User user = userService.findUserByUsername(principal.getName());
        //....add to cart somehow

        Cart cart = new Cart();
        cart.setProducts(byId);
        cart.setUsers(user);

        cartServise.saveOneCart(cart);
    }
}

