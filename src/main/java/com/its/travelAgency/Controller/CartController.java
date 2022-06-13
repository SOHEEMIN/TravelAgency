package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.CartDTO;
import com.its.travelAgency.Service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;

    @PostMapping("/save")
    public String save(@ModelAttribute CartDTO cartDTO){
        cartService.save(cartDTO);
        return "redirect:/cart/findAll";
    }

    @GetMapping("/findAll")
    public String findAll(Model model){
        List<CartDTO> cartDTOList = cartService.findAll();
        model.addAttribute("cartList", cartDTOList);
        for (CartDTO c: cartDTOList){
            System.out.println("for문 동작");
            System.out.println(c);
        }
        return "cartPage/findAll";
    }


}
