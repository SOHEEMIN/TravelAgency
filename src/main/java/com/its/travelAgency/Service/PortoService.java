package com.its.travelAgency.Service;

import com.its.travelAgency.DTO.PortoDTO;
import com.its.travelAgency.Repository.PortoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class PortoService {
    @Autowired
    private PortoRepository portoRepository;

    public void saveFile(PortoDTO portoDTO) throws IOException {
        MultipartFile boardFile = portoDTO.getBoardFile();
        String boardFileName = boardFile.getOriginalFilename();
        boardFileName = System.currentTimeMillis() + "-" + boardFileName;
        portoDTO.setBoardFileName(boardFileName);
        String savePath = "D:\\spring_img\\" + boardFileName;
        if (!boardFile.isEmpty()) {
            boardFile.transferTo(new File(savePath));
        }
        portoRepository.saveFile(portoDTO);
    }

    public List<PortoDTO> findAll(long i_id) {
        return portoRepository.findAll(i_id);
    }
}
