package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.*;
import com.its.travelAgency.Service.CartService;
import com.its.travelAgency.Service.SaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private CartService cartService;
    @Autowired
    private SaveService saveService;


    @PostMapping("/save")
    public String save(@ModelAttribute CartDTO cartDTO, HttpSession session, Model model) {
        cartService.save(cartDTO);
//        saveService.save(cartDTO);
        CartDTO cartDTO1 = cartService.findByOne(cartDTO);
        List<CartDTO> cartDTOList = cartService.findAll();
        model.addAttribute("cartList", cartDTOList);
        if(cartDTO1!=null){
            model.addAttribute("cartDTO1", cartDTO1);
            session.setAttribute("cartI_id", cartDTO.getI_id());
            session.setAttribute("cart_title", cartDTO.getItemTitle());
            System.out.println("카트1DTO"+cartDTO1);
            return "/portoPage/firstPorto";
        }
        return "redirect:/cart/findAll";
    }

    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<CartDTO> cartDTOList = cartService.findAll();
        model.addAttribute("cartList", cartDTOList);
        return "cartPage/findAll";
    }


    @GetMapping("/delete")
    public String delete(@RequestParam("cart_id") long cart_id, Model model) {
        model.addAttribute("cart", cartService.findById(cart_id));
        cartService.delete(cart_id);
        return "redirect:/cart/findAll";
    }

    @GetMapping("/findById")
    public String findById(@RequestParam("cart_id")long cart_id, Model model, @ModelAttribute CartDTO cartDTO, HttpSession session){
        model.addAttribute("cart",cartService.findById(cart_id));
        System.out.println(cart_id);
        return "bookingPage/booking";
    }

//    @PostMapping("/login")
//    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session){
//        MemberDTO loginMember = memberService.login(memberDTO);
//        if(loginMember!=null){
//            model.addAttribute("loginMember", loginMember);
//            session.setAttribute("loginMemberId", loginMember.getMemberId());
//            session.setAttribute("loginId", loginMember.getM_id());
//            return "/index";
//
//        }else {
//            return "/memberPage/login";
//        }
//    }
}
