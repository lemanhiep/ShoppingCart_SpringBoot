package com.shoppingcart_springboot.dao;

import com.shoppingcart_springboot.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductDAO extends JpaRepository<Product, Integer> {
    //lab6.4
    List<Product> findByPriceBetween(double minPrice, double maxPrice);

    //lab6.2
    @Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
    Page<Product> findByKeywords(String keywords, Pageable pageable);

    //lab6.5
    Page<Product> findAllByNameLike(String keywords, Pageable pageable);

    @Query("SELECT e FROM Product e ORDER BY e.sale ASC")
    Page<Product> findAllBySaleASC(Pageable pageable);

    @Query("SELECT e FROM Product e ORDER BY e.sale DESC")
    Page<Product> findAllBySaleDESC(Pageable pageable);

    @Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
    Page<Product> findByPrice(float minPrice, float maxPrice, Pageable pageable);
}
