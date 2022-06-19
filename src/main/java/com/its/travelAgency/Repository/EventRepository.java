package com.its.travelAgency.Repository;

import com.its.travelAgency.DTO.EventDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EventRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public void save(EventDTO eventDTO){
        System.out.println("EventRepository.save");
        System.out.println("eventDTO = " + eventDTO);
        sql.insert("Event.save", eventDTO);
    }

    public List<EventDTO> findAll() {
        return sql.selectList("Event.findAll");
    }

    public EventDTO findById(long id) {
        return sql.selectOne("Event.findById", id);

    }

    public void delete(Long id) {
        sql.delete("Event.delete", id);
    }

}
