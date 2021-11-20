package com.shoppingcart_springboot.dao;


import com.shoppingcart_springboot.entity.Account;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AccountDAO extends JpaRepository<Account, String> {
    @Query("SELECT o FROM Account o WHERE o.username LIKE ?1")
    Page<Account> findAllByNameLike(String keywords, Pageable pageable);
}
