package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDTO {
    private Long m_id; //회원 번호
    private String memberId; //회원아이디
    private String memberPassword; //회원 비밀번호
    private String memberName; //회원 이름
    private String memberBirth; //회원 생일
    private String memberEmail; //회원 이메일
    private String memberPhone; //회원 핸드폰번호
}
