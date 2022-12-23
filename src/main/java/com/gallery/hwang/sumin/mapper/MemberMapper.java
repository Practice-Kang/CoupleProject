package com.gallery.hwang.sumin.mapper;

import com.gallery.hwang.sumin.domain.MemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemberMapper {
    MemberVO getUserAccount(String memberID);
    void insertMember(MemberVO memberVO);
}
