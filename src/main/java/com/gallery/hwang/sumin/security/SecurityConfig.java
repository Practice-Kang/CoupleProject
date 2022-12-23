package com.gallery.hwang.sumin.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(); //시큐리티가 제공하는 비밀번호인코더 빈등록
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

        http
                .csrf().disable(); // csrf 토큰을 발급받아야 post요청을 보낼때 인가됨, 어디 이상한곳에서 post요청 보낼시 토큰없어서 400번대에러 뱉음

        http
                .authorizeRequests()  //인증절차에 대한 설정진행
                .antMatchers( "/member/**").permitAll()  //누구나 접근가능
                .anyRequest().authenticated();  //그외 페이지는 전부 인증요구

        http
                .formLogin()  //보안 검증은 formLogin방식으로 진행
                .loginPage("/member/login")
                .loginProcessingUrl("/member/login_proc")  //로그인 form의 Action URL
                .usernameParameter("memberID")
                .passwordParameter("password")
                .defaultSuccessUrl("/home")
                .failureUrl("/login?error_code=2");
        http
                .logout() // 로그아웃 기능 작동함 ,
                .logoutUrl("/member/logout") // 로그아웃 처리 URL, default: /logout, 원칙적으로 post 방식만 지원, 하지만 a link로 logout요청시 404에러 발생하기 때문에 컨트롤러에 get방식으로 logout구현
                .logoutSuccessUrl("/home") // 로그아웃 성공 후 이동페이지
                .invalidateHttpSession(true);

        return http.build();
    }
}