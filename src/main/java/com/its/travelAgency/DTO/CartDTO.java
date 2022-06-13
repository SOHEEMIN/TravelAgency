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
    private Long cart_id;
    private String i_id;
    private String itemTitle;
    private String memberId;
//    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String bookingStartDate;
    private String hotel;
    private String tour;
    private int price;
    private String totalPrice;
}
