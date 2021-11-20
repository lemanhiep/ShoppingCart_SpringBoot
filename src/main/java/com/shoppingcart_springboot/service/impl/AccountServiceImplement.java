package com.shoppingcart_springboot.service.impl;


import com.shoppingcart_springboot.dao.AccountDAO;
import com.shoppingcart_springboot.entity.Account;
import com.shoppingcart_springboot.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AccountServiceImplement implements AccountService {
    //tiêm dữ liệu vào service
    @Autowired
    AccountDAO accountDAO;

    @Override
    public Account save(Account entity) {
        return accountDAO.save(entity);
    }

    @Override
    public List<Account> saveAll(List<Account> entity) {
        return (List<Account>)accountDAO.saveAll(entity);
    }

    @Override
    public Optional<Account> findById(String id) {
        return accountDAO.findById(id);
    }

    @Override
    public boolean existsById(String id) {
        return accountDAO.existsById(id);
    }

    @Override
    public List<Account> findAll() {
        return (List<Account>)accountDAO.findAll();
    }

    @Override
    public List<Account> findAllById(List<String> ids) {
        return (List<Account>)accountDAO.findAllById(ids);
    }

    @Override
    public long count() {
        return accountDAO.count();
    }

    @Override
    public void deleteById(String id) {
        accountDAO.deleteById(id);
    }

    @Override
    public void delete(Account entity) {
        accountDAO.delete(entity);
    }

    @Override
    public void deleteAllById(List<String> ids) {
        accountDAO.deleteAllById(ids);
    }

    @Override
    public void deleteAll(List<Account> entity) {
        accountDAO.deleteAll(entity);
    }

    @Override
    public void deleteAll() {
        accountDAO.deleteAll();
    }

    @Override
    public boolean checkLogin(String username, String password) {
        Optional<Account> optionalAccount = findById(username);
        if(optionalAccount.isPresent()&& optionalAccount.get().getPassword().equals(password)) {
            return true;
        }
        return false;
    }


    @Override
    public Page<Account> findAll(Pageable pageable) {
        return accountDAO.findAll(pageable);
    }
}
