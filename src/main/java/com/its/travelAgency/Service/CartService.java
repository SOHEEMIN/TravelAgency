package com.its.travelAgency.Service;

import com.its.travelAgency.DTO.BoardDTO;
import com.its.travelAgency.DTO.CartDTO;
import com.its.travelAgency.Repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService {
    @Autowired
    private CartRepository cartRepository;

    public void save(CartDTO cartDTO) {
        cartRepository.save(cartDTO);
    }

    public List<CartDTO> findAll() {
        List<CartDTO> cartDTOList = cartRepository.findAll();
        return cartDTOList;
    }

    public void delete(long cart_id) {
        cartRepository.delete(cart_id);
    }

    public CartDTO findById(long id) {
        return cartRepository.findById(id);
    }

}
