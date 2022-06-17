package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.*;
import com.its.travelAgency.Service.CartService;
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

    @GetMapping("/save")
    public String save(@ModelAttribute CartDTO cartDTO) {
        System.out.println("CartController.save");

        cartService.save(cartDTO);
        return "redirect:/cart/findAll";
    }

    @GetMapping("/findAll")
    public String findAll(Model model, @ModelAttribute CartDTO cartDTO, HttpSession session) {
        CartDTO cartDTO1 = cartService.findByOne(cartDTO);
        List<CartDTO> cartDTOList = cartService.findAll();
        model.addAttribute("cartList", cartDTOList);
        if(cartDTO1!=null){
            model.addAttribute("cartDTO1", cartDTO1);
            session.setAttribute("cartI_id", cartDTO.getI_id());
            session.setAttribute("cart_title", cartDTO.getItemTitle());
            session.setAttribute("cart_memberId", cartDTO.getMemberId());
            session.setAttribute("cart_bookingStartDate", cartDTO.getBookingStartDate());
            session.setAttribute("cart_hotel", cartDTO.getHotel());
            session.setAttribute("cart_tour", cartDTO.getTour());
            session.setAttribute("cart_price", cartDTO.getPrice());
            System.out.println("카트1DTO"+cartDTO1);
            return "/portoPage/firstPorto";
        }
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

    @GetMapping("/duplicateCheck")
    public @ResponseBody String duplicateCheck(@RequestParam("i_id") String i_id, @RequestParam("memberId") String memberId) {

        System.out.println("i_id = " + i_id);
        System.out.println("memberId = " + memberId);

        CartDTO cartDTO = new CartDTO();
        cartDTO.setI_id(i_id);
        cartDTO.setMemberId(memberId);

        System.out.println(cartDTO);

        return cartService.duplicateCheck(cartDTO);
    }
}
