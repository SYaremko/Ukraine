package ua.com.ushop.service;


import ua.com.ushop.entity.News;

import java.util.List;

public interface NewsService {

    List<News> findAll();

    void save(News news);

    News findById(int id);

    void update(News news);

    void deleteById(int id);
}
