package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EventDTO {
    private long id; //이벤트 번호
    private long o_id; //주문 번호
    private String eventName; //이벤트 이름
    private String eventContents; //이벤트 내용
    private int eventPrice; //이벤트 가격
    private int eventStock; //이벤트 수량
    private MultipartFile eventImage; //이벤트 사진
    private String eventImageName; //이벤트 사진 이름

}
