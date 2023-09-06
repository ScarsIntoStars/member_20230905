package com.icia.member.repository;

import com.icia.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class MemberRepository {

    @Autowired
    public SqlSessionTemplate sql;
    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.save", memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
//        System.out.println(memberDTO.getMemberEmail());
//        System.out.println(memberDTO.getMemberPassword());
        return sql.selectOne("Member.login", memberDTO);
    }

    public List members() {
        return sql.selectList("Member.findAll");
    }
}
