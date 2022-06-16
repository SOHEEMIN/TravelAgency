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
    private int price;
    private String orderCreatedDate;
    private String i_id;
}
