package ua.com.ushop.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.com.ushop.dao.DAOproducts;
import ua.com.ushop.entity.Products;
import ua.com.ushop.service.ProductsService;

import java.util.List;
@Service
@Transactional
public class ProductsServiceImpl implements ProductsService{
   @Autowired
    private DAOproducts daoProducts;



    @Override
    public List<Products> finDAll(int visib) {
        return daoProducts.findall(visib);
    }

    @Override
    public List<Products> findAll() {
        return daoProducts.findAll();
    }

    @Override
    public void save(Products products) {
        daoProducts.save(products);
    }


    @Override
    public Products findById(int id) {
        return daoProducts.findOne(id);
    }

    @Override
    public void update(Products products) {
        daoProducts.save(products);
    }

    @Override
    public void deleteById(int id) {
        daoProducts.delete(id);
    }
}
