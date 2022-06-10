package com.its.travelAgency.Repository;

import com.its.travelAgency.DTO.CartDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CartRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public void save(CartDTO cartDTO) {
        System.out.println("CartRepository.save");
        System.out.println("cartDTO = " + cartDTO);
        sql.insert("Cart.save", cartDTO);
    }

    public List<CartDTO> findAll() {
        return sql.selectList("Cart.findAll");
    }
}
