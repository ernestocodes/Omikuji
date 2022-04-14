package com.ernesto.omikujiform;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	@GetMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}

	@PostMapping("/create")
	public String createOmikuji(@RequestParam(value = "time") String time, @RequestParam(value = "city") String city,
			@RequestParam(value = "person") String person, @RequestParam(value = "activity") String activity,
			@RequestParam(value = "livingThing") String livingThing, @RequestParam(value = "comment") String comment,
			HttpSession session) {
		session.setAttribute("time", time);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("activity", activity);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("comment", comment);
		return "redirect:/show";
	}

	@GetMapping("/show")
	public String showOmikuji() {
		return "show.jsp";
	}
}
