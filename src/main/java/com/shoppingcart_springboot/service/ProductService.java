package com.shoppingcart_springboot.service;

import com.shoppingcart_springboot.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public interface ProductService {

    void deleteAll();

    void deleteAll(List<Product> entities);

    void deleteAllById(List<Integer> ids);

    void delete(Product entity);

    void deleteById(Integer id);

    long count();

    List<Product> findAllById(List<Integer> ids);

    List<Product> findAll();

    boolean existsById(Integer id);

    Optional<Product> findById(Integer id);

    List<Product> saveAll(List<Product> entities);

    Page<Product> findAll(Pageable pageable);

    List<Product> findAll(Sort sort);

    Product save(Product entity);
}
