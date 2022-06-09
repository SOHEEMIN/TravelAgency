package com.its.travelAgency.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String index() {
        return "index";
    }
    @GetMapping("/item/firstPorto")
    public String firstPorto () {
        return "/portoPage/firstPorto";
    }
}
