package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PortoDTO {
    private Long i_id;
    private String itemTitle;
    private MultipartFile boardFile;
    private MultipartFile boardFile2;
    private String boardFileName;
    private String boardFileName2;
    private String memberId;
    private String itemContents;
    private String itemDate;
    private String bookingStartDate;
    private String bookingEndDate;
    private String itemHotel;
    private String itemTour;
    private int itemPrice;
}
