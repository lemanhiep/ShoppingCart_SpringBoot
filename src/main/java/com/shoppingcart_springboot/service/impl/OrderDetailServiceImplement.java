package com.shoppingcart_springboot.service.impl;


import com.shoppingcart_springboot.dao.OrderDetailDAO;
import com.shoppingcart_springboot.entity.OrderDetail;
import com.shoppingcart_springboot.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderDetailServiceImplement implements OrderDetailService {
    @Autowired
    OrderDetailDAO oderDetailDAO;

    @Override
    public <S extends OrderDetail> S save(S entity) {
        return oderDetailDAO.save(entity);
    }

    @Override
    public <S extends OrderDetail> Optional<S> findOne(Example<S> example) {
        return oderDetailDAO.findOne(example);
    }

    @Override
    public Page<OrderDetail> findAll(Pageable pageable) {
        return oderDetailDAO.findAll(pageable);
    }

    @Override
    public List<OrderDetail> findAll() {
        return oderDetailDAO.findAll();
    }

    @Override
    public List<OrderDetail> findAll(Sort sort) {
        return oderDetailDAO.findAll(sort);
    }


    @Override
    public Optional<OrderDetail> findById(Long id) {
        return oderDetailDAO.findById(id);
    }

    @Override
    public <S extends OrderDetail> List<S> saveAll(Iterable<S> entities) {
        return oderDetailDAO.saveAll(entities);
    }

    @Override
    public void flush() {
        oderDetailDAO.flush();
    }

    @Override
    public <S extends OrderDetail> S saveAndFlush(S entity) {
        return oderDetailDAO.saveAndFlush(entity);
    }

    @Override
    public boolean existsById(Long id) {
        return oderDetailDAO.existsById(id);
    }

    @Override
    public <S extends OrderDetail> List<S> saveAllAndFlush(Iterable<S> entities) {
        return oderDetailDAO.saveAllAndFlush(entities);
    }

    @Override
    public <S extends OrderDetail> Page<S> findAll(Example<S> example, Pageable pageable) {
        return oderDetailDAO.findAll(example, pageable);
    }

    @Override
    public <S extends OrderDetail> long count(Example<S> example) {
        return oderDetailDAO.count(example);
    }

    @Override
    public <S extends OrderDetail> boolean exists(Example<S> example) {
        return oderDetailDAO.exists(example);
    }

    @Override
    public void deleteAllInBatch(Iterable<OrderDetail> entities) {
        oderDetailDAO.deleteAllInBatch(entities);
    }

    @Override
    public long count() {
        return oderDetailDAO.count();
    }

    @Override
    public void deleteById(Long id) {
        oderDetailDAO.deleteById(id);
    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> ids) {
        oderDetailDAO.deleteAllByIdInBatch(ids);
    }

    @Override
    public void delete(OrderDetail entity) {
        oderDetailDAO.delete(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends Long> ids) {
        oderDetailDAO.deleteAllById(ids);
    }

    @Override
    public void deleteAllInBatch() {
        oderDetailDAO.deleteAllInBatch();
    }

    @Override
    public void deleteAll(Iterable<? extends OrderDetail> entities) {
        oderDetailDAO.deleteAll(entities);
    }

    @Override
    public void deleteAll() {
        oderDetailDAO.deleteAll();
    }

    @Override
    public OrderDetail getById(Long id) {
        return oderDetailDAO.getById(id);
    }

    @Override
    public <S extends OrderDetail> List<S> findAll(Example<S> example) {
        return oderDetailDAO.findAll(example);
    }

    @Override
    public <S extends OrderDetail> List<S> findAll(Example<S> example, Sort sort) {
        return oderDetailDAO.findAll(example, sort);
    }
}
