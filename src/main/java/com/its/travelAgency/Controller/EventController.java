package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.EventDTO;
import com.its.travelAgency.DTO.MemberDTO;
import com.its.travelAgency.Service.EventService;
import com.its.travelAgency.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/event")
public class EventController {
    @Autowired
    private EventService eventService;
    @Autowired
    private MemberService memberService;

    //이벤트 글쓰기 페이지로 이동
    @GetMapping("/saveGoods")
    public String event(){
        return "/EventPage/saveGoods";
    }
    //이벤트 글 저장
    @PostMapping("/save")
    public String save(@ModelAttribute EventDTO eventDTO) throws IOException{
        eventService.save(eventDTO);
        System.out.println("EventController.save");
        System.out.println("eventDTO = " + eventDTO);
        return "redirect:/event/list";
    }
    //이벤트 글 목록 출력
    @GetMapping("/list")
    public String list(Model model){
        List<EventDTO>eventDTOList = eventService.findAll();
        model.addAttribute("eventList", eventDTOList);
        return "/EventPage/list";
    }
    //이벤트 상세보기
    @GetMapping("/detail")
    public String detail(@RequestParam("id")long id, Model model){
        EventDTO eventDTO = eventService.findById(id);
        model.addAttribute("event", eventDTO);
        return "/EventPage/detail";
    }
    // 이벤트상품 삭제
    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id) {
        eventService.delete(id);
        return "redirect:/event/list";
    }


}
