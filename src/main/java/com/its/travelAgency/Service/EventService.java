package com.its.travelAgency.Service;

import com.its.travelAgency.DTO.EventDTO;
import com.its.travelAgency.Repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class EventService {
    @Autowired
    private EventRepository eventRepository;

    public void save(EventDTO eventDTO) throws IOException {
        MultipartFile eventImage = eventDTO.getEventImage();
        String eventImageName = eventImage.getOriginalFilename();
        eventImageName = System.currentTimeMillis() + "-" + eventImageName;
        String savePath = "D:\\spring_img\\" + eventImageName;
        if(!eventImage.isEmpty()){
            eventDTO.setEventImageName(eventImageName);
            eventImage.transferTo(new File(savePath));
        }
        System.out.println("savePath = " + savePath);
        eventRepository.save(eventDTO);
    }

    public List<EventDTO> findAll() {
        return eventRepository.findAll();
    }

    public EventDTO findById(long id) {
        return eventRepository.findById(id);

    }

//    public ProductDTO findById(Long id) {
//        System.out.println("ProductService.findById");
//        return productRepository.findById(id);
//    }
}
