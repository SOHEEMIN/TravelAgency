package com.its.travelAgency.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDTO {
    private Long b_id; //게시글 번호
    private String boardTitle; //게시글 제목
    private String memberId; //회원 아이디
    private String boardContents; //게시글 내용
    private int boardHits; //게시글 조회수
    private String boardCreatedDate; //게시글 작성시간
    private MultipartFile boardFile; //게시글 이미지 파일
    private String boardFileName; //게시글 이미지 파일 이름

}
