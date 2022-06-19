package com.its.travelAgency.DTO;

import lombok.Data;

@Data
public class CommentDTO {
    private Long c_id; //댓글 번호
    private Long b_id; //게시글 아이디
    private String memberId; //회원 아이디
    private String commentContents;  //댓글 내용
    private String commentCreatedDate; //댓글 작성일
}

