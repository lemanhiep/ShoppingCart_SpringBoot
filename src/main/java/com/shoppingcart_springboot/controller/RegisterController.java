package com.shoppingcart_springboot.controller;



import com.shoppingcart_springboot.entity.Account;
import com.shoppingcart_springboot.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequestMapping("index")
public class RegisterController {

    // 1. tiêm vào
    @Autowired
    CookieService cookieService;
    @Autowired
    ParamService paramService;
    @Autowired
    SessionService sessionService;
    @Autowired
    ShoppingCartService cart;
    @Autowired
    AccountService accountService;

    @GetMapping("register")
    public String register(Model model) {
        model.addAttribute("cart", cart);
        model.addAttribute("getcount", cart.getCount());
        model.addAttribute("getamount", cart.getAmount());
        model.addAttribute("getsale", cart.getAmountSale());
        model.addAttribute("register", new Account());
        return "/login/register";
    }

    @PostMapping("register")
    public String register2(@Validated @ModelAttribute("register") Account user, BindingResult result, Model model,
                            MultipartFile multipartFile) throws IOException {
        if (result.hasErrors()) {
            return "/login/register";
        }
        accountService.save(user);
        model.addAttribute("register", new Account());
        return "redirect:/index/login";
    }
}
