package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class JoinDTO {
    //cart_table, order_table의 joinDTO

    private long o_id; //주문 번호
    private String memberId; //멤버 아이디
    private long cart_id; //카트 번호
    private int price; //가격
    private String orderCreatedDate; //주문일자
    private String i_id; //상품아이디
    private String itemTitle; //상품이름
    private String bookingStartDate; //예약 출발일
    private String hotel; //예약 호텔
    private String tour; //예약 투어
}
