package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class MemberController {
    @Autowired
    public MemberService memberService;

    @GetMapping("/save")
    public String save() {
        return "memberSave";
    }

    @PostMapping("/save")
    public String save(MemberDTO memberDTO){
        boolean result = memberService.save(memberDTO);
        if(result) {
            System.out.println("학생등록 성공");
            return "index";
        } else {
            System.out.println("학생등록 실패");
            return "save";
        }
    }

    @GetMapping("/login")
    public String login() {
        return "memberLogin";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO){
        memberService.login(memberDTO);
        return "memberMain";
    }

    @GetMapping("/findAll")
    public String members(Model model) {
        List<MemberDTO> memberList = memberService.members();
        model.addAttribute("memberList", memberList);
        return "memberList";
    }

}
