package com.shoppingcart_springboot.service.impl;

import com.shoppingcart_springboot.dao.OrderDAO;
import com.shoppingcart_springboot.entity.Order;
import com.shoppingcart_springboot.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderServiceImplement implements OrderService {

    @Autowired
    OrderDAO oderDAO;
    @Override
    public <S extends Order> S save(S entity) {
        return oderDAO.save(entity);
    }
    @Override
    public <S extends Order> Optional<S> findOne(Example<S> example) {
        return oderDAO.findOne(example);
    }
    @Override
    public Page<Order> findAll(Pageable pageable) {
        return oderDAO.findAll(pageable);
    }
    @Override
    public List<Order> findAll() {
        return oderDAO.findAll();
    }
    @Override
    public List<Order> findAll(Sort sort) {
        return oderDAO.findAll(sort);
    }
    @Override
    public List<Order> findAllById(Iterable<Long> ids) {
        return oderDAO.findAllById(ids);
    }
    @Override
    public Optional<Order> findById(Long id) {
        return oderDAO.findById(id);
    }
    @Override
    public <S extends Order> List<S> saveAll(Iterable<S> entities) {
        return oderDAO.saveAll(entities);
    }
    @Override
    public void flush() {
        oderDAO.flush();
    }
    @Override
    public <S extends Order> S saveAndFlush(S entity) {
        return oderDAO.saveAndFlush(entity);
    }
    @Override
    public boolean existsById(Long id) {
        return oderDAO.existsById(id);
    }
    @Override
    public <S extends Order> List<S> saveAllAndFlush(Iterable<S> entities) {
        return oderDAO.saveAllAndFlush(entities);
    }
    @Override
    public <S extends Order> Page<S> findAll(Example<S> example, Pageable pageable) {
        return oderDAO.findAll(example, pageable);
    }
    @Override
    public <S extends Order> long count(Example<S> example) {
        return oderDAO.count(example);
    }
    @Override
    public <S extends Order> boolean exists(Example<S> example) {
        return oderDAO.exists(example);
    }
    @Override
    public void deleteAllInBatch(Iterable<Order> entities) {
        oderDAO.deleteAllInBatch(entities);
    }
    @Override
    public long count() {
        return oderDAO.count();
    }
    @Override
    public void deleteById(Long id) {
        oderDAO.deleteById(id);
    }
    @Override
    public void deleteAllByIdInBatch(Iterable<Long> ids) {
        oderDAO.deleteAllByIdInBatch(ids);
    }
    @Override
    public void delete(Order entity) {
        oderDAO.delete(entity);
    }
    @Override
    public void deleteAllById(Iterable<? extends Long> ids) {
        oderDAO.deleteAllById(ids);
    }
    @Override
    public void deleteAllInBatch() {
        oderDAO.deleteAllInBatch();
    }
    @Override
    public void deleteAll(Iterable<? extends Order> entities) {
        oderDAO.deleteAll(entities);
    }
    @Override
    public void deleteAll() {
        oderDAO.deleteAll();
    }
    @Override
    public Order getById(Long id) {
        return oderDAO.getById(id);
    }
    @Override
    public <S extends Order> List<S> findAll(Example<S> example) {
        return oderDAO.findAll(example);
    }
    @Override
    public <S extends Order> List<S> findAll(Example<S> example, Sort sort) {
        return oderDAO.findAll(example, sort);
    }
}
