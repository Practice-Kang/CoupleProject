package com.gallery.hwang.sumin.service;

import com.gallery.hwang.sumin.domain.MemberVO;
import com.gallery.hwang.sumin.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
    @Autowired
    MemberMapper memberMapper;
    @Autowired
    PasswordEncoder passwordEncoder;

    public MemberVO getMemberByMemberID(String memberID) {
        return memberMapper.getUserAccount(memberID);
    }

    public void createMember(MemberVO memberVO) {
        memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
        memberMapper.insertMember(memberVO);
    }
}
