package ua.com.ushop.dao;


import org.hibernate.annotations.Parent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.ushop.entity.Products;

import java.util.List;


public interface DAOproducts extends JpaRepository<Products,Integer> {
   @Query("from Products p where visible=:vis " )
    List<Products> findall(@Param("vis") int visible_);
}
