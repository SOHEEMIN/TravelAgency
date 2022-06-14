package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.MemberDTO;
import com.its.travelAgency.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

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
    @GetMapping("/findAll")
    public String findAll(Model model) {
        long m_id = 0;
        List<MemberDTO> memberDTOList = memberService.findAll(m_id);
        model.addAttribute("memberList", memberDTOList);
        return "/memberPage/admin";
    }
    @GetMapping("/login")
    public String loginForm() {
        return "/memberPage/login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session){
        MemberDTO loginMember = memberService.login(memberDTO);
        if(loginMember!=null){
            model.addAttribute("loginMember", loginMember);
            session.setAttribute("loginMemberId", loginMember.getMemberId());
            session.setAttribute("loginId", loginMember.getM_id());
            return "/index";

        }else {
            return "/memberPage/login";
        }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "index";
    }
}
