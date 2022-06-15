package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.CartDTO;
import com.its.travelAgency.DTO.CommentDTO;
import com.its.travelAgency.DTO.OrderDTO;
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
        return "redirect:/booking/booking?o_id="+orderDTO.getO_id();
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
        return "bookingPage/booking";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute OrderDTO orderDTO){
        orderService.update(orderDTO);
        return "redirect:/booking/booking?o_id="+orderDTO.getCart_id();
    }
}

//    @PostMapping("/update")
//    public String update(@ModelAttribute BoardDTO boardDTO){
//        boardService.update(boardDTO);
//        return "redirect:/board/detail?b_id="+boardDTO.getB_id();
//    }


