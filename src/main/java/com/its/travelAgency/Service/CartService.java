package com.its.travelAgency.Service;

import com.its.travelAgency.DTO.BoardDTO;
import com.its.travelAgency.DTO.CartDTO;
import com.its.travelAgency.DTO.JoinDTO;
import com.its.travelAgency.DTO.MemberDTO;
import com.its.travelAgency.Repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService {
    @Autowired
    private CartRepository cartRepository;

    //    public void save(CartDTO cartDTO) {
//        cartRepository.save(cartDTO);
//    }
    public void save(CartDTO cartDTO) {
        System.out.println("CartService.save");

        cartRepository.save(cartDTO);
    }

    public List<CartDTO> findAll() {
        List<CartDTO> cartDTOList = cartRepository.findAll();
        return cartDTOList;
    }

    public void delete(long cart_id) {
        cartRepository.delete(cart_id);
    }

    public CartDTO findById(long cart_id) {
        return cartRepository.findById(cart_id);
    }

    public CartDTO findByOne(CartDTO cartDTO) {
        CartDTO cartDTO1 = cartRepository.findByOne(cartDTO);
        return cartDTO1;
    }

    public String duplicateCheck(CartDTO cartDTO) {
        CartDTO cartDTO1 = new CartDTO();
        cartDTO1 = cartRepository.duplicateCheck(cartDTO);
        if (cartDTO1 != null) {
            return "no";
        } else {
            return "ok";
        }
    }
//    public MemberDTO login(MemberDTO memberDTO) {
//        MemberDTO loginMember = memberRepository.login(memberDTO);
//        return loginMember;
//    }
}
