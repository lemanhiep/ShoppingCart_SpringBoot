package com.shoppingcart_springboot.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.shoppingcart_springboot.entity.Account;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Orders")
public class Order implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    String address;
    @Column(name = "Createdate")
    Date createDate= new Date();
    int phone;
    String email;
    @ManyToOne
    @JoinColumn(name = "Username")
    Account account;

    @JsonIgnore
    @OneToMany(mappedBy = "order")
    List<OrderDetail> orderDetails;
}
