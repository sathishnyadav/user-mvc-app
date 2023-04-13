package org.jsp.usermvcapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
public class LogoutController {
	@RequestMapping("/logout")
	public String logout(HttpSession session, Model model) {
		model.addAttribute("msg", "You are Logged Out");
		session.invalidate();
		return "login";
	}
}
