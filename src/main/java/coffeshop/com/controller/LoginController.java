package coffeshop.com.controller;


import coffeshop.com.service.impl.MyUserDetailsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class LoginController {
    @Autowired
    MyUserDetailsService myUserDetailsService;

    @RequestMapping(value = {"/login"})
    public String login(@RequestParam(value = "error", required = false) final String error, final Model model) {
        if (error != null) {
            model.addAttribute("message", "Login Failed!");
        }
        return "login";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "home";
    }

    @RequestMapping("/user")
    public String user() {
        return "home";
    }

    @RequestMapping("/logout")
    public String logout(final Model model) {
        model.addAttribute("message", "Logged out!");
        return "login";
    }
}