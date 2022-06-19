package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDTO {
    private Long cart_id; //장바구니 번호
    private String i_id; //상품 번호
    private String itemTitle; //상품 이름
    private String memberId; //회원 아이디
    private String bookingStartDate; //예약 출발일자
    private String hotel; //예약 호텔
    private String tour; //예약 투어
    private int price; //예약 가격
}
