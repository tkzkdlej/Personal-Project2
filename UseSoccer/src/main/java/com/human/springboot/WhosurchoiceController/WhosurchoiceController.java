package com.human.springboot.WhosurchoiceController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WhosurchoiceController {
	@Autowired 
	private WhosurchoiceDAO whosurchoicedao;
	
	@GetMapping("/whosurchoice")
    public String showWhosUrChoice() {
    	return "whosurchoice";
    }
	
	@PostMapping("/choose")
    public String makeChoice(@RequestParam String choice, Model model) {
        model.addAttribute("selectedChoice", choice);
        return "result"; // result.html로 포워딩
    }
	
}
