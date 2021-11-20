package com.shoppingcart_springboot.service;

import com.shoppingcart_springboot.entity.OrderDetail;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;

import com.shoppingcart_springboot.entity.*;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

public interface OrderDetailService {
    <S extends OrderDetail> List<S> findAll(Example<S> example, Sort sort);

    <S extends OrderDetail> List<S> findAll(Example<S> example);

    OrderDetail getById(Long id);

    void deleteAll();

    void deleteAll(Iterable<? extends OrderDetail> entities);

    void deleteAllInBatch();

    void deleteAllById(Iterable<? extends Long> ids);

    void delete(OrderDetail entity);

    void deleteAllByIdInBatch(Iterable<Long> ids);

    void deleteById(Long id);

    long count();

    void deleteAllInBatch(Iterable<OrderDetail> entities);

    <S extends OrderDetail> boolean exists(Example<S> example);

    <S extends OrderDetail> long count(Example<S> example);

    <S extends OrderDetail> Page<S> findAll(Example<S> example, Pageable pageable);

    <S extends OrderDetail> List<S> saveAllAndFlush(Iterable<S> entities);

    boolean existsById(Long id);

    <S extends OrderDetail> S saveAndFlush(S entity);

    void flush();

    <S extends OrderDetail> List<S> saveAll(Iterable<S> entities);

    Optional<OrderDetail> findById(Long id);


    List<OrderDetail> findAll(Sort sort);

    List<OrderDetail> findAll();

    Page<OrderDetail> findAll(Pageable pageable);

    <S extends OrderDetail> Optional<S> findOne(Example<S> example);

    <S extends OrderDetail> S save(S entity);
}
