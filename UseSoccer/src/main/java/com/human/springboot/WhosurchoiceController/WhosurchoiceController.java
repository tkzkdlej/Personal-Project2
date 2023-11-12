package com.human.springboot.WhosurchoiceController;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class WhosurchoiceController {
	@Autowired 
	private WhosurchoiceDAO whosurchoicedao;
	
	@GetMapping("/whosurchoice")
    public String showWhosUrChoice() {
    	return "whosurchoice";
    }
	
	@GetMapping("/showmatch")
    @ResponseBody
    public String showNewMatch(@RequestParam String whatround) {
        ArrayList<WhosurchoiceDTO> showMatch = whosurchoicedao.showMatch(whatround);
        
        System.out.println(whatround);
        JSONArray ja = new JSONArray();
        
        for (int i = 0; i < showMatch.size(); i++) {
            JSONObject jo = new JSONObject();
            
            jo.put("player_name", showMatch.get(i).getPlayer_name());
            jo.put("player_pic", showMatch.get(i).getPlayer_pic());
            
            ja.put(jo);
        }

        return ja.toString();
    }
	
	
	
}
