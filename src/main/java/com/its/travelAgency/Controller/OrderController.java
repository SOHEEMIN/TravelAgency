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

    //주문 처리
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
    //주문 목록
    @GetMapping("/findAll")
    public String findAll(@RequestParam("memberId")String memberId, Model model){
        List<OrderDTO> orderDTOList = orderService.findAll(memberId);
        model.addAttribute("orderList", orderDTOList);
        return "/bookingPage/detail";

    }

}



