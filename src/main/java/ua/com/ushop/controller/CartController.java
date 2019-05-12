
package ua.com.ushop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ua.com.ushop.entity.Cart;
import ua.com.ushop.entity.Products;
import ua.com.ushop.entity.User;
import ua.com.ushop.service.CartServise;
import ua.com.ushop.service.ProductsService;
import ua.com.ushop.service.UserService;

import java.security.Principal;
import java.util.List;

@Controller
public class CartController {

    @Autowired
    CartServise cartServise;



    @GetMapping("/deleteCart-{id}")
    public String deleteProducts(@PathVariable int id) {
        cartServise.delete(id);
        return "redirect:/cart";
    }

    @RequestMapping("/cart")
    public String cartList(Model model) {
        List<Cart> carts = cartServise.fetchProduct();
        model.addAttribute("carts", carts);
        return "cart";
    }
}
