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
    public List<MemberDTO> findAll(long m_id) {
        return memberRepository.findAll(m_id);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO loginMember = memberRepository.login(memberDTO);
        return loginMember;
    }
}
