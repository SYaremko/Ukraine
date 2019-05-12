package ua.com.ushop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import ua.com.ushop.entity.Cart;
import ua.com.ushop.entity.News;
import ua.com.ushop.entity.Products;
import ua.com.ushop.entity.User;
import ua.com.ushop.service.CartServise;
import ua.com.ushop.service.NewsService;
import ua.com.ushop.service.ProductsService;
import ua.com.ushop.service.UserService;
import ua.com.ushop.validator.UserValidator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MainCont {

    @Autowired
    UserService userService;
    @Autowired
    ProductsService productsService;
    @Autowired
    CartServise cartServise;
    @Autowired
    NewsService newsService;

    /* @ModelAttribute("registUser")
     public User user() {
         return new User();
     }*/

    @RequestMapping("/")
    public String toForm_main(Model model) {
        List<Products> products = productsService.finDAll(1);
        List<News> news = newsService.findAll();
        model.addAttribute("allProducts", products);
        model.addAttribute("news", news);
        return "index_0";
    }
    @RequestMapping("/main")
    public String mainn(Model model) {
        List<Products> products = productsService.finDAll(1);
        List<News> news = newsService.findAll();
        model.addAttribute("allProducts", products);
        model.addAttribute("news", news);
        return "main";
    }

    @RequestMapping("/index")
    public String main(Model model) {
        List<Products> products = productsService.finDAll(1);
        List<News> news = newsService.findAll();
        model.addAttribute("allProducts", products);
        model.addAttribute("news", news);
        return "index";
    }
 /*   @RequestMapping("/details")
    public String details() {

        return "ourDetails";
    }*/


   /* @GetMapping("/detProduct-{id}")
    public String detPost(@PathVariable int id,
                          Model model) {
        Products products = productsService.findById(id);
        model.addAttribute("details", products);
        return "detailsProduct";
    }*/


    /*REGISTRATION*/
    @GetMapping("/reg")
    public String regs(Model model) {
        model.addAttribute("registUser", new User());
        return "registration";
    }



    @Autowired
    UserValidator userValidator;

    @InitBinder
    public void bind(WebDataBinder binder) {
        binder.addValidators(userValidator);
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("registUser") @Valid User user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "registration";
        }
        userService.save(user);
        model.addAttribute("success", user.getFirstName());
        return "login";
    }


    /*LOGIN*/
    @GetMapping("/toLogin")
    public String toLogin(Model model, String er) {
        if (er != null  /*|| er.isEmpty()*/) {
            model.addAttribute("error", "Login or password is incorrect.");
        }
        return "login";
    }
/**/
    @GetMapping("/logout")
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "index_0";
    }



}