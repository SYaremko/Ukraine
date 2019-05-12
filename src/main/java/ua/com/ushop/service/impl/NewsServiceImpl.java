package ua.com.ushop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.ushop.dao.NewsDAO;
import ua.com.ushop.entity.News;
import ua.com.ushop.service.NewsService;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsDAO newsDAO;

    @Override
    public List<News> findAll() {
        return newsDAO.findAll();
    }

    @Override
    public void save(News news) {
        newsDAO.save(news);
    }

    @Override
    public News findById(int id) {
        return newsDAO.findOne(id);
    }

    @Override
    public void update(News news) {
          newsDAO.save(news);
    }

    @Override
    public void deleteById(int id) {
        newsDAO.delete(id);
    }
}
