package com.example.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
    @Autowired
    MemberDAO memberDAO;
    public MemberVO getUser(MemberVO vo) {
        return memberDAO.getUser(vo);
    }
}
