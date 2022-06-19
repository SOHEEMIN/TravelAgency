package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDTO {
    private long o_id; //주문번호
    private String memberId; //회원 아이디
    private int price; //가격
    private String orderCreatedDate; //주문일자
    private String i_id; //상품번호
}
