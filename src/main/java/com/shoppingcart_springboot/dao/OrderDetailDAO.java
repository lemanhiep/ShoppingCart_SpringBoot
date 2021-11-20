package com.shoppingcart_springboot.dao;


import com.shoppingcart_springboot.entity.OrderDetail;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {

    @Query("SELECT o FROM OrderDetail o WHERE o.fullname LIKE ?1")
    Page<OrderDetail> findAllByNameLike(String keywords, Pageable pageable);
}
