package com.shoppingcart_springboot.service;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;

import com.shoppingcart_springboot.entity.*;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

public interface OrderService {
    <S extends Order> List<S> findAll(Example<S> example, Sort sort);

    <S extends Order> List<S> findAll(Example<S> example);

    Order getById(Long id);

    void deleteAll();

    void deleteAll(Iterable<? extends Order> entities);

    void deleteAllInBatch();

    void deleteAllById(Iterable<? extends Long> ids);

    void delete(Order entity);

    void deleteAllByIdInBatch(Iterable<Long> ids);

    void deleteById(Long id);

    long count();

    void deleteAllInBatch(Iterable<Order> entities);

    <S extends Order> boolean exists(Example<S> example);

    <S extends Order> long count(Example<S> example);

    <S extends Order> Page<S> findAll(Example<S> example, Pageable pageable);

    <S extends Order> List<S> saveAllAndFlush(Iterable<S> entities);

    boolean existsById(Long id);

    <S extends Order> S saveAndFlush(S entity);

    void flush();

    <S extends Order> List<S> saveAll(Iterable<S> entities);

    Optional<Order> findById(Long id);

    List<Order> findAllById(Iterable<Long> ids);

    List<Order> findAll(Sort sort);

    List<Order> findAll();

    Page<Order> findAll(Pageable pageable);

    <S extends Order> Optional<S> findOne(Example<S> example);

    <S extends Order> S save(S entity);
}
