package ua.com.ushop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.com.ushop.entity.Products;
import ua.com.ushop.service.ProductsService;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class AdminProductCont {
    @Autowired
    ProductsService productsService;

    @GetMapping("addProduct")
    public String AddProduct() {
        return "addProduct";
    }

    @GetMapping("listProducts")
    public String listProducts(Model model) {
        List<Products> products = productsService.findAll();
        model.addAttribute("productsAll", products);
        return "listProducts";
    }

    @GetMapping("/editProducts-{id}")
    public String editProducts(@PathVariable int id,
                               Model model) {


        Products products = productsService.findById(id);
        model.addAttribute("editProduct", products);
        model.addAttribute("edit", true);

        return "editProducts";
    }

    @PostMapping("/editProducts-{id}")
    public String updateProductS(@Valid Products products, BindingResult result,
                              ModelMap model, @PathVariable int id) {
        if (result.hasErrors()) {
            return "editProducts";
        }
        productsService.update(products);
        model.addAttribute("success", "all ok");
        return "redirect:listProducts";
    }

    @GetMapping("/deleteProducts-{id}")
    public String deleteProducts(@PathVariable int id) {
        productsService.deleteById(id);
        return "redirect:listProducts";
    }
    @PostMapping("newProduct")
    public String newProduct(@RequestParam("title") String title,
                             @RequestParam("price") int price,
                             @RequestParam("mini_description") String mini_description,
                             @RequestParam("mini_features") String mini_features,
                             @RequestParam("visible") int visible,
                             @RequestParam("picture") MultipartFile multipartFile) throws IOException {


        String productPath = System.getProperty("user.home") + File.separator + "images" + File.separator;
        multipartFile.transferTo(new File(productPath + multipartFile.getOriginalFilename()));

        Products product = new Products();
        product.setTitle(title);
        product.setPrice(price);
        product.setMini_description(mini_description);
        product.setMini_features(mini_features);
        product.setVisible(visible);
        product.setPicture("\\picture\\" + multipartFile.getOriginalFilename());

        productsService.save(product);
        return "redirect:addProduct";
    }
}
