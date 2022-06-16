package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.*;
import com.its.travelAgency.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/booking")
public class OrderController {

    @Autowired
    private OrderService orderService;

//    @PostMapping("/save")
//    public String save(@ModelAttribute OrderDTO orderDTO){
//        OrderDTO orderDTO1 = orderService.save(orderDTO);
//        System.out.println(orderDTO1);
//        return "redirect:/booking/booked?o_id="+orderDTO1.getO_id();
//    }

    @PostMapping("/booked")
    public String booked(@ModelAttribute OrderDTO orderDTO, Long o_id, Model model){
        System.out.println("booked 호출");
        OrderDTO orderDTO1 = orderService.save(orderDTO);
        System.out.println("booked DTO:"+orderDTO);
        o_id = orderDTO.getO_id();
        System.out.println("Long o_id:"+o_id);
        JoinDTO joinDTO = orderService.booked(o_id);
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



