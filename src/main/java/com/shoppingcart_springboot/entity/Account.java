package com.shoppingcart_springboot.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;


@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Accounts")
public class Account implements Serializable {

    @Id
    @NotEmpty(message = "Username not emty")
    private String username;
    @NotEmpty(message = "Password not empty")
    @Size(min = 3, message = "Password height 3")
    private String password;
    @NotEmpty(message = "Fullname not emty")
    private String fullname;
    @NotEmpty(message = "Email not emty")
    private String email;
    private String photo;
    private boolean admin = false;
    private boolean activated = true;
    @JsonIgnore
    @OneToMany(mappedBy = "account")
    List<Order> orders;
}
