package com.shoppingcart_springboot.entity;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Orderdetails")
public class OrderDetail implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    Double price;
    Integer quantity;
    String city;
    String country;
    String fullname;
    @ManyToOne
    @JoinColumn(name = "Productid")
   Product product;
    @ManyToOne
    @JoinColumn(name = "Orderid")
    Order order;
}
