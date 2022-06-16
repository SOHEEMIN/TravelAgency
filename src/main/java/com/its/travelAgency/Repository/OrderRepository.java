package com.its.travelAgency.Repository;

import com.its.travelAgency.DTO.CartDTO;
import com.its.travelAgency.DTO.JoinDTO;
import com.its.travelAgency.DTO.OrderDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OrderRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public OrderDTO save(OrderDTO orderDTO) {
        sql.insert("Order.save", orderDTO);
        return orderDTO;
    }

    public List<OrderDTO> booking() {
        return sql.selectList("Order.booking");
    }

    public OrderDTO findById(long o_id) {
        return sql.selectOne("Order.findById", o_id);
    }

    public void update(OrderDTO orderDTO) {
        sql.update("Order.update", orderDTO);
    }

    public JoinDTO booked(Long o_id) {
        return sql.selectOne("Order.booked", o_id);
    }

    public List<OrderDTO> findAll(String memberId) {
        return sql.selectList("Order.findAll", memberId);
    }
}
