package com.woowacourse.dsgram.web.controller;

import com.woowacourse.dsgram.service.UserService;
import com.woowacourse.dsgram.service.dto.user.LoginUserRequest;
import com.woowacourse.dsgram.web.argumentresolver.UserSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/signup")
    public String showSignUp() {
        return "signup";
    }

    @GetMapping("/login")
    public String showLogin() {
        return "login";
    }

    @GetMapping("/users/{userId}/edit")
    public String showUserEdit(@PathVariable long userId,
                               Model model,
                               @UserSession LoginUserRequest loginUserRequest) {
        model.addAttribute("user", userService.findUserInfoById(userId, loginUserRequest));
        return "account-edit";
    }

    @GetMapping("/logout")
    public String logout(HttpSession httpSession) {
        httpSession.removeAttribute(LoginUserRequest.SESSION_USER);
        return "redirect:/login";
    }

    @GetMapping("/oauth")
    public String test(@RequestParam String code, HttpSession httpSession) {
        httpSession.setAttribute(LoginUserRequest.SESSION_USER, userService.oauth(code));
        return "redirect:/login";
    }

    // TODO: 2019-08-20 my feed뿐만 아니라, 다른 user feed도 사용할 수 있도록 이름 바꾸기
    // TODO: 2019-08-20 real instagram은 뒤에 email을 붙임.... 우린 users/1/edit, myfeed/1 이렇게 될거같은데 바꿔야될듯ㅎㅎ^^;;;;;;;;
    @GetMapping("/myfeed/{userId}")
    public String showMyFeed(@PathVariable long userId) {
        return "my-feed";
    }
}
