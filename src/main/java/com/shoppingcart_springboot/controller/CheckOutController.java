package com.shoppingcart_springboot.controller;



import com.shoppingcart_springboot.bean.MailInfo;
import com.shoppingcart_springboot.dao.AccountDAO;
import com.shoppingcart_springboot.dao.OrderDAO;
import com.shoppingcart_springboot.dao.OrderDetailDAO;
import com.shoppingcart_springboot.dao.ProductDAO;
import com.shoppingcart_springboot.entity.Account;
import com.shoppingcart_springboot.entity.Item;
import com.shoppingcart_springboot.entity.Order;
import com.shoppingcart_springboot.entity.OrderDetail;
import com.shoppingcart_springboot.service.MailerService;
import com.shoppingcart_springboot.service.SessionService;
import com.shoppingcart_springboot.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("shopping-cart")
public class CheckOutController {

    @Autowired
    com.shoppingcart_springboot.dao.AccountDAO AccountDAO;
    @Autowired
    SessionService session;
    @Autowired
    ProductDAO productDAO;
    @Autowired
    ShoppingCartService cart;
    @Autowired
    OrderDAO orderDAO;
    @Autowired
    OrderDetailDAO orderDetailDAO;
    @Autowired
    MailerService mailer;

    @GetMapping("checkout")
    public String showcheck(Model model) {
        model.addAttribute("cart", cart);
        model.addAttribute("getcount", cart.getCount());
        model.addAttribute("getamount", cart.getAmount());
        model.addAttribute("getsale", cart.getAmountSale());
        MailInfo mailinfo = new MailInfo();
        model.addAttribute("mailinfo", mailinfo);
        return "/cart/checkout";
    }

    @PostMapping("checkout")
    public String checkout(@RequestParam("country")String country,
                           @RequestParam("fullname")String fullname,
                           @RequestParam("address")String address,
                           @RequestParam("city")String city,
                           @RequestParam("email")String email,
                           @RequestParam("phone")Integer phone,
                           Model model, MailInfo mailinfo) {
        String username = session.get("username");
        if(username == null) {
            return "redirect:/index/login";
        }
        Account Account = null;
        if (AccountDAO.findById(username).isPresent()) {
            Account = AccountDAO.findById(username).get();
            Order ord = new Order();
            ord.setAccount(Account);
            ord.setCreateDate(new Date());
            ord.setAddress(address);
            ord.setPhone(phone);
            ord.setEmail(email);
            List<OrderDetail> orderDT = new ArrayList<>();
            for(Item item : cart.getItems()) {
                OrderDetail od = new OrderDetail();
                od.setOrder(ord);
                productDAO.findById(item.getId()).ifPresent(p->{od.setProduct(p);});
                od.setPrice(item.getSale());
                od.setQuantity(item.getQty());
                od.setCity(city);
                od.setCountry(country);
                od.setFullname(fullname);
                orderDT.add(od);
            }
            ord.setOrderDetails(orderDT);
            orderDAO.save(ord);

            for(OrderDetail dt: orderDT) {
                orderDetailDAO.save(dt);
            }
            try {
                mailer.send(email, fullname);
                model.addAttribute("email", mailinfo);
                System.out.println("Send mail successfull!");
            } catch (Exception e) {
                // TODO: handle exception
                return e.getMessage();
            }
            cart.clear();
        }
        return "redirect:/cart/view";
    }
}
