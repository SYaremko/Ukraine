package ua.com.ushop.service;

import ua.com.ushop.entity.Products;

import java.util.List;

public interface ProductsService {

     List<Products> finDAll(int visib);

     List<Products> findAll();

     void save(Products products);

     Products findById(int id);

     void update(Products products);

     void deleteById(int id);
}
