package com.zhangjin.uploaddownload.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    @RequestMapping(value = "/index")
    public String first() {
        return "jsp/01";
    }
}
