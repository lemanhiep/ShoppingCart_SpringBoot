package com.shoppingcart_springboot.admin_controller;


import com.shoppingcart_springboot.dao.AccountDAO;
import com.shoppingcart_springboot.entity.Account;
import com.shoppingcart_springboot.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("indexAD")
public class UserController {

    //1. tiêm vào
    @Autowired
    CookieService cookieService;
    @Autowired
    ParamService paramService;
    @Autowired
    SessionService sessionService;
    @Autowired
    ShoppingCartService shoppingCartService;
    @Autowired
    com.shoppingcart_springboot.dao.AccountDAO AccountDAO;
    @Autowired
    com.shoppingcart_springboot.service.AccountService AccountService;


    @GetMapping("Account")
    public String showlogin(Model model, @RequestParam("show") Optional<Integer> show) {
        Account item = new Account();
        model.addAttribute("item", item);
        List<Account> items = AccountDAO.findAll();
        model.addAttribute("items", items);
        List<Account> ls = AccountService.findAll();
        model.addAttribute("list_product", ls);
        PageRequest pageable = PageRequest.of(show.orElse(0), 2);
        Page<Account> page = AccountService.findAll(pageable);
        model.addAttribute("list_product", page);
        return "/Admin/QuanLyNguoiDungAD"; //3. view trang login lên
    }

    @PostMapping("Account")
    public String searchAndPage(Model model,
                                @RequestParam("keywords") Optional<String> kw,
                                @RequestParam("show") Optional<Integer> p) {
        String kwords = kw.orElse(sessionService.get("keywords", ""));
        sessionService.set("keywords", kwords);
        Pageable pageable = PageRequest.of(p.orElse(0), 2);
        Page<Account> page = AccountDAO.findAllByNameLike("%" + kwords + "%", pageable);
        model.addAttribute("list_product", page);
        return "/Admin/QuanLyNguoiDungAD";
    }

    // hàm 3
    @RequestMapping("/createAccount")
    public String create(Account item) {
        AccountDAO.save(item);
        return "redirect:/indexAD/Account";
    }

    // hàm 4
    @RequestMapping("/updateAccount")
    public String update(Account item) {
        AccountDAO.save(item);
        return "redirect:/indexAD/editAccount/" + item.getUsername();
    }

    // hàm 5
    @RequestMapping("/deleteAccount/{id}")
    public String delete(@PathVariable("id") String id) {
        AccountDAO.deleteById(id);
        return "redirect:/indexAD/Account";
    }


    @GetMapping("editAccount/{username}")
    public String edit(Model model, @PathVariable("username") String username) {
        Account item = AccountDAO.findById(username).get();
        model.addAttribute("item", item);
        List<Account> items = AccountDAO.findAll();
        model.addAttribute("items", items);
        return "/Admin/QuanLyNguoiDungAD";
    }
}
