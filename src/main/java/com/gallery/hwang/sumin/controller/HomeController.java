package com.gallery.hwang.sumin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping(value = {"/","/home"})
    public String homepage() {

        return "home";
    }
}
