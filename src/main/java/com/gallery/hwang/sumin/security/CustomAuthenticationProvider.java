package com.gallery.hwang.sumin.security;

import com.gallery.hwang.sumin.domain.MemberVO;
import com.gallery.hwang.sumin.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {

    @Autowired
    private MemberService memberService;

    @Autowired
    private PasswordEncoder passwordEncoder; //BCryptPasswordEncoder Class Autowired.

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String memberID = authentication.getName();
        String password = (String)authentication.getCredentials();

        MemberVO memberVO = memberService.getMemberByMemberID(memberID);
        if (!passwordEncoder.matches(password, memberVO.getPassword()))
            throw new BadCredentialsException("비밀번호가 일치하지 않습니다.");

        memberVO.setPassword(null);
        List<GrantedAuthority> roles = new ArrayList<>();
        roles.add(new SimpleGrantedAuthority("KMC"));
        return new UsernamePasswordAuthenticationToken(memberVO, password, roles);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return true;
    }
}