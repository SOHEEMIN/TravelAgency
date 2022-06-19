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

    //회원가입 페이지로 이동
    @GetMapping("/saveFile")
    public String saveFileForm(){
        return "/memberPage/saveFile";
    }
    //회원가입 처리
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
    //회원가입시 ID 중복체크
    @PostMapping("/duplicate-check")
    public @ResponseBody String duplicateCheck(@RequestParam("memberId") String memberId) {
        String checkResult = memberService.duplicateCheck(memberId);
        return checkResult;
    }
    //로그인 페이지로 이동
    @GetMapping("/login")
    public String loginForm() {
        return "/memberPage/login";
    }
    //로그인 처리
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session){
        MemberDTO loginMember = memberService.login(memberDTO);
        if(loginMember!=null){
            model.addAttribute("loginMember", loginMember);
            session.setAttribute("loginMemberId", loginMember.getMemberId());
            session.setAttribute("loginId", loginMember.getM_id());
            System.out.println("로그인"+loginMember);
            return "/index";

        }else {
            return "/memberPage/login";
        }
    }
    //로그아웃 처리
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "index";
    }
    // 회원 상세정보 화면 요청
    @GetMapping("/detail")
    public String findById(HttpSession session, Model model){
        Long m_id = (Long) session.getAttribute("loginId");
        MemberDTO memberDTO = memberService.findById(m_id);
        model.addAttribute("member",memberDTO);
        return "/memberPage/detail";
    }

    // 회원 리스트 화면 요청
    @GetMapping("/list")
    public String list(Model model) {
        System.out.println("MemberController.list");
        List<MemberDTO> memberDTOList = memberService.list();
        model.addAttribute("memberList", memberDTOList);
        return "/memberPage/admin";
    }
    //회원삭제
    @GetMapping("/delete")
    public String delete (@RequestParam("m_id")long m_id){
        memberService.delete(m_id);
        return "redirect:/member/list";
    }
    @GetMapping("/deleteSelf")  // 회원 탈퇴 처리
    public String delete(@RequestParam("m_id") Long m_id, HttpSession session) {
        memberService.delete(m_id);
        session.invalidate();
        return "index";
    }
}
