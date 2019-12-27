package coffeshop.com.controller;


import coffeshop.com.entity.Employee;
import coffeshop.com.entity.Role;
import coffeshop.com.service.impl.MyUserDetailsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.util.Collection;
import java.util.List;


@Controller
@RequestMapping("")
public class LoginController {
    @Autowired
    MyUserDetailsService myUserDetailsService;

    @RequestMapping(value = { "/", "/login" })
    public String login(@RequestParam(required = false) String message, final Model model) {
        if (message != null && !message.isEmpty()) {
            if (message.equals("logout")) {
                model.addAttribute("message", "Logout!");
            }
            if (message.equals("error")) {
                model.addAttribute("message", "Login Failed!");
            }
        }
        return "login";
    }


    @RequestMapping("/user")
    public String user(Principal  principal) {
        UserDetails userDetails = myUserDetailsService.loadUserByUsername(principal.getName());
        Collection<? extends GrantedAuthority> roles = userDetails.getAuthorities();
        for (GrantedAuthority grantedAuthority: roles
             ) {
            if (grantedAuthority.getAuthority().equalsIgnoreCase("ROLE_ADMIN")){
                return "redirect:/admin/information";
            }
        }
        return "redirect:/user/home";
    }
    @RequestMapping("/admin")
    public String admin() {
        return "redirect:/admin/generality";
    }
    @RequestMapping("/403")
    public String accessDenied() {
        return "403";
    }

}