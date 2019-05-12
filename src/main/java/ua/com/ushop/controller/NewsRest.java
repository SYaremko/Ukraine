package ua.com.ushop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ua.com.ushop.dao.NewsDAO;
import ua.com.ushop.entity.News;
import ua.com.ushop.service.NewsService;


@RestController
@RequestMapping("/admin/")
public class NewsRest {

    @Autowired
    private NewsService newsService;

    @PostMapping("/saveNews")
    public News saveNews_1(@RequestBody News news){
        System.out.println(news);

        newsService.save(news);
        return news;

    }
}
