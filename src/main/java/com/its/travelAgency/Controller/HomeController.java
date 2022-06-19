package com.its.travelAgency.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    //메인 페이지 출력
    @GetMapping("/")
    public String index() {
        return "index";
    }
    //포르투상품 페이지 출력
    @GetMapping("/item/firstPorto")
    public String firstPorto () {
        return "/portoPage/firstPorto";
    }
    //리스본상품 페이지 출력
    @GetMapping("/item/firstLisbon")
    public String firstLisbon () {
        return "/lisbonPage/firstLisbon";
    }
}
