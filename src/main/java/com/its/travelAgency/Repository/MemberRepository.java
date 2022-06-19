package com.its.travelAgency.Repository;

import com.its.travelAgency.DTO.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.save", memberDTO);

    }
    public String duplicateCheck(String memberId) {
        return sql.selectOne("Member.duplicateCheck", memberId);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login", memberDTO);
    }

    public MemberDTO findById(Long m_id) {
        return sql.selectOne("Member.detail",m_id);
    }
    public void delete(long m_id) {
        sql.delete("Member.delete", m_id);
    }
    public List<MemberDTO> list() {
        System.out.println("MemberRepository.list");
        return sql.selectList("Member.list");
    }
}
