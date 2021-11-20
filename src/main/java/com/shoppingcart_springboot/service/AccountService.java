package com.shoppingcart_springboot.service;


import com.shoppingcart_springboot.entity.Account;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface AccountService {
    Map<String, Account>    maps = new HashMap<>();
    void deleteAll();

    void deleteAll(List<Account> entities);

    void deleteAllById(List<String> ids);

    void delete(Account entity);

    void deleteById(String id);

    long count();

    List<Account> findAllById(List<String> ids);

    List<Account> findAll();

    boolean existsById(String id);

    Optional<Account> findById(String id);

    List<Account> saveAll(List<Account> entities);

    Account save(Account entity);

    boolean checkLogin(String username, String password);

    Page<Account> findAll(Pageable pageable);
}
