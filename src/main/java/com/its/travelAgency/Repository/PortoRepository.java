package com.its.travelAgency.Repository;

import com.its.travelAgency.DTO.BoardDTO;
import com.its.travelAgency.DTO.PortoDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PortoRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public void saveFile(PortoDTO portoDTO) {
        System.out.println("portoDTO = " + portoDTO);
        sql.insert("Porto.saveFile", portoDTO);
    }

    public List<PortoDTO> findAll(long i_id) {
        return sql.selectList("Porto.findAll");
    }
}
