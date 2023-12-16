package com.example.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value="/login")
public class MemberController {
    @Autowired
    MemberService service;
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value="/loginOk",method=RequestMethod.POST)
    public String loginCheck(HttpSession session, MemberVO vo){
        String returnURL = "";
        if (session.getAttribute("login") != null ){
            session.removeAttribute("login");
        }
        MemberVO loginvo = service.getUser(vo);
        if ( loginvo != null ){ // 로그인 성공
            System.out.println("로그인 성공!");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/list";
        }else { // 로그인 실패
            System.out.println("로그인 실패!");
            System.out.println(vo.getUserid());
            //System.out.println(vo.getPassword());
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }


    // 로그아웃 하는 부분
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}

