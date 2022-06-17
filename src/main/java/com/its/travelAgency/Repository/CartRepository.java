package com.its.travelAgency.Repository;

import com.its.travelAgency.DTO.BoardDTO;
import com.its.travelAgency.DTO.CartDTO;
import com.its.travelAgency.DTO.JoinDTO;
import com.its.travelAgency.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Repository
public class CartRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public void save(CartDTO cartDTO) {
        System.out.println("CartRepository.save");

        sql.insert("Cart.save", cartDTO);
    }

    public CartDTO duplicateCheck(CartDTO cartDTO) {
        System.out.println("CartRepository.duplicateCheck");
        return sql.selectOne("Cart.duplicateCheck", cartDTO);
    }

    public List<CartDTO> findAll() {
        return sql.selectList("Cart.findAll");
    }

    public void delete(long cart_id) {
        sql.delete("Cart.delete", cart_id);
    }

    public CartDTO findById(long cart_id) {
        return sql.selectOne("Cart.findById", cart_id);
    }

    public CartDTO findByOne(CartDTO cartDTO) {
        return sql.selectOne("Cart.findByOne", cartDTO);
    }
//    public MemberDTO login(MemberDTO memberDTO) {
//        return sql.selectOne("Member.login", memberDTO);
//    }

}
