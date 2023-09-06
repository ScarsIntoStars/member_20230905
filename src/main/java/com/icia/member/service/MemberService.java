package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.lang.reflect.Member;
import java.util.List;

@Service
public class MemberService {

    @Autowired
    public MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if(result > 0) {
            return true;
        } else {
            return false;
        }
    }


    public boolean login(MemberDTO memberDTO) {
        MemberDTO dto = memberRepository.login(memberDTO);
//        System.out.println(memberDTO.getMemberEmail());
//        System.out.println(memberDTO.getMemberPassword());
//        if(memberDTO.getMemberEmail().equals(null)) {
        if (dto != null) {
            return true;
        } else {
            return false;
        }
        /*
         * 1. 이메일, 비밀번호 두 값 모두 일치하는 db 조회결과를 가져옴(조회결과가 있으면 로그인 성공)
         * 2. 이메일로 DB에서 조회해서 서비스에서 비밀번호를 서로 비교하여 일치하면 로그인 성공
         * 지금은 로그인의 개념만 살펴보는 중. 요즘은 카카오api를 이용해서 로그인을 많이 함
         * */

    }
    public List<MemberDTO> members() {
        return memberRepository.members();
    }

    public MemberDTO update(Long id) {
        MemberDTO memberDTO = memberRepository.update(id);
        return memberDTO;
    }
}
