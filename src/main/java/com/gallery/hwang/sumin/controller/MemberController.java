package com.gallery.hwang.sumin.controller;

import com.gallery.hwang.sumin.domain.MemberVO;
import com.gallery.hwang.sumin.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value = "/member")
@Controller
public class MemberController {
    @Autowired
    MemberService memberService;

    @GetMapping(value = "/login")
    public String getLogin() {

        return "login";
    }

    @GetMapping(value = "/signup")
    public String getSignUp() {

        return "signup";
    }

    @PostMapping(value = "/signup")
    public String postSignUp(MemberVO memberVO) {
        memberService.createMember(memberVO);
        return "redirect:/home";
    }

}
