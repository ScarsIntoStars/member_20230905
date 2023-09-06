package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
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
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session, Model model){
     boolean result = memberService.login(memberDTO);
        if(result == true) {
            // 로그인 성공시 사용자의 이메일을 세션에 저장
            session.setAttribute("loginEmail", memberDTO.getMemberEmail());
            // 모델에 이메일 저장
            model.addAttribute("email", memberDTO.getMemberEmail());
            return "memberMain";
        } else {
            return "login";
        }
//        return "index";
    }

    @GetMapping("logout")
    public String logout(HttpSession session){
        // 해당 파라미터만 없앨 경우
        session.removeAttribute("loginEmail");
        // 세션 전체를 없앨 경우
        // sesstion.invalidate();
        return "redirect:/";
    }

    @GetMapping("/findAll")
    public String members(Model model) {
        List<MemberDTO> memberList = memberService.members();
        model.addAttribute("memberList", memberList);
        return "memberList";
    }

    @GetMapping("/update")
    public String update(@RequestParam("id") Long id, Model model) {
        MemberDTO memberDTO = memberService.update(id);
        model.addAttribute("memberDTO", memberDTO);
        return "memberDetail";
    }

}
