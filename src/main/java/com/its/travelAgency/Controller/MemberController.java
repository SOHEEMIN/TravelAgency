package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.MemberDTO;
import com.its.travelAgency.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/saveFile")
    public String saveFileForm(){
        return "/memberPage/saveFile";
    }
    @PostMapping("/saveFile")
    public String saveFile(@ModelAttribute MemberDTO memberDTO){
        boolean saveResult = memberService.saveFile(memberDTO);
        if(saveResult){
            System.out.println("회원가입성공");
            return "memberPage/login";
        } else {
            System.out.println("회원가입실패");
            return "memberPage/index";
        }
    }
    @PostMapping("/duplicate-check")
    public @ResponseBody String duplicateCheck(@RequestParam("memberId") String memberId) {
        String checkResult = memberService.duplicateCheck(memberId);
        return checkResult;
    }
}
