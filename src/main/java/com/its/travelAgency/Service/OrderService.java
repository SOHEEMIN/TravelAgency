package com.its.travelAgency.Service;

import com.its.travelAgency.DTO.CartDTO;
import com.its.travelAgency.DTO.OrderDTO;
import com.its.travelAgency.Repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;

    public OrderDTO save(OrderDTO orderDTO) {
        return orderRepository.save(orderDTO);
    }

    public List<OrderDTO> booking() {
        List<OrderDTO> orderDTOList = orderRepository.booking();
        return orderDTOList;
    }

    public OrderDTO findById(long o_id) {
        return orderRepository.findById(o_id);
    }

    public void update(OrderDTO orderDTO) {
        orderRepository.update(orderDTO);
    }
}
