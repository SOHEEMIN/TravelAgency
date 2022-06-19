package com.its.travelAgency.Service;

import com.its.travelAgency.DTO.MemberDTO;
import com.its.travelAgency.Repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    public boolean saveFile(MemberDTO memberDTO) {
        int saveResult = memberRepository.save(memberDTO);
        if (saveResult > 0) {
            return true;
        } else {
            return false;
        }

    }

    public String duplicateCheck(String memberId) {
        String checkResult = memberRepository.duplicateCheck(memberId);
        if(checkResult==null){
            return "ok";
        }else {
            return "no";
        }
    }
    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO loginMember = memberRepository.login(memberDTO);
        return loginMember;
    }

    public MemberDTO findById(Long m_id) {
        MemberDTO memberDTO = memberRepository.findById(m_id);
        return memberDTO;
    }

    public void delete(long m_id) {
        memberRepository.delete(m_id);
    }
    public List<MemberDTO> list() {
        System.out.println("MemberService.list");
        return memberRepository.list();
    }
}
