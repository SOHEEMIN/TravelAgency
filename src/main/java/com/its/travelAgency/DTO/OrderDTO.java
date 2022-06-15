package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDTO {
    private long o_id;
    private String memberId;
    private long cart_id;
    private int price;
    private String orderCreatedDate;
}
