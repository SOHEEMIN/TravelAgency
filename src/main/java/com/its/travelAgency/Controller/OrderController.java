package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.*;
import com.its.travelAgency.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/booking")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/save")
    public String save(@ModelAttribute OrderDTO orderDTO){
        OrderDTO orderDTO1 = orderService.save(orderDTO);
        System.out.println(orderDTO1);
        return "redirect:/booking/booked?cart_id="+orderDTO1.getCart_id();
    }

    @GetMapping("/booking")
    public String findById(@RequestParam("o_id")long o_id, Model model){
//        model.addAttribute("order", orderService.findById(o_id));
        System.out.println(o_id);
        OrderDTO orderDTO = orderService.findById(o_id);
        System.out.println(orderDTO);
        model.addAttribute("order",orderDTO);
        List<OrderDTO> orderDTOList = orderService.booking();
        model.addAttribute("OrderList", orderDTOList);
        return "/bookingPage/booking";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute OrderDTO orderDTO){
        orderService.update(orderDTO);
        return "redirect:/booking/booking?o_id="+orderDTO.getCart_id();
    }
    @GetMapping("/booked")
    public String booked(@RequestParam("cart_id")long cart_id, Model model){
        JoinDTO joinDTO = orderService.booked(cart_id);
        model.addAttribute("join", joinDTO);
        return "/bookingPage/booked";
    }
    @GetMapping("/findAll")
    public String findAll(@RequestParam("memberId")String memberId, Model model){
        List<OrderDTO> orderDTOList = orderService.findAll(memberId);
        model.addAttribute("orderList", orderDTOList);
        return "/bookingPage/detail";

    }

//    @GetMapping("/findAll")
//    public String findAll(Model model) {
//        long m_id = 0;
//        List<MemberDTO> memberDTOList = memberService.findAll(m_id);
//        model.addAttribute("memberList", memberDTOList);
//        return "/memberPage/admin";
//    }

}



