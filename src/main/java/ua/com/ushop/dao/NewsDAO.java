package ua.com.ushop.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.ushop.entity.News;


public interface NewsDAO extends JpaRepository<News,Integer> {
}
