package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EventDTO {
    private long id;
    private long o_id;
    private String eventName;
    private String eventContents;
    private int eventPrice;
    private int eventStock;
    private MultipartFile eventImage;
    private String eventImageName;

}
