package ua.com.ushop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.com.ushop.entity.News;
import ua.com.ushop.entity.Products;
import ua.com.ushop.entity.User;
import ua.com.ushop.service.NewsService;
import ua.com.ushop.service.ProductsService;
import ua.com.ushop.service.UserService;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.time.DateTimeException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class AdminNewsCont {

    @Autowired
    NewsService newsService;

    @GetMapping("/news")
    public String news(Model model) {
        List<News> news = newsService.findAll();
        model.addAttribute("news", news);
        return "news";
    }
    @GetMapping("addNews")
    public String AddProduct() {
        return "addNews";
    }


    @GetMapping("/deleteNews-{id}")
    public String deleteProducts(@PathVariable int id) {
        newsService.deleteById(id);
        return "redirect:news";
    }



    /*@GetMapping("/editNews-{id}")
    public String editNew(@PathVariable int id,
                               Model model) {


        News news = newsService.findById(id);
        model.addAttribute("editNews", news);
        model.addAttribute("edit", true);

        return "editNews";
    }

    @PostMapping("/editNews-{id}")
    public String updateNewS(@Valid News news, BindingResult result,
                                  @PathVariable int id) {
        if (result.hasErrors()) {
            return "editNews";
        }
        newsService.save(news);

        return "redirect:/news";
    }*/

}
