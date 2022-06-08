package com.its.travelAgency.Controller;

import com.its.travelAgency.DTO.PortoDTO;
import com.its.travelAgency.Service.PortoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/porto")
public class PortoController {
    @Autowired
    private PortoService portoService;

    @GetMapping("/findAll")
    public String findAll(Model model) {
        long i_id = 0;
        List<PortoDTO> portoDTOList = portoService.findAll(i_id);
        model.addAttribute("portoList", portoDTOList);
        return "/portoPage/pagingList";
    }
    @GetMapping("/saveFile")
    public String saveFileForm(HttpSession session){
        return "/portoPage/saveFile";
    }

    //파일첨부 글작성 처리
    @PostMapping("/saveFile")
    public String saveFile(@ModelAttribute PortoDTO portoDTO) throws IOException {
        portoService.saveFile(portoDTO);
        return "redirect:/porto/paging";
    }
    @GetMapping("/firstPorto")
    public String firstPorto(){
        return "/portoPage/firstPorto";
    }
}
