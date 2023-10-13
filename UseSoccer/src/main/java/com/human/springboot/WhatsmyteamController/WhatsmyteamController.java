package com.human.springboot.WhatsmyteamController;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WhatsmyteamController {
	
	@Autowired
    private MyteamDAO myteamdao;
	
	@GetMapping("/whatsmyteam")
    public String showWhatsMyTeam() {
    	return "whatsmyteam";
    }
	
    @GetMapping("/showmyteam")
    @ResponseBody
    public String showMyTeam(@RequestParam String formation, String tactics) {
        ArrayList<MyteamDTO> showTeam = myteamdao.showMyTeam(formation, tactics);
        
        System.out.println(formation);
        System.out.println(tactics);
        
        JSONArray ja = new JSONArray();
        
        for (int i = 0; i < showTeam.size(); i++) {
            JSONObject jo = new JSONObject();
//            String birth = showTeam.get(i).getBirth();
//            String subBirth = birth.substring(0, 10);
            String team_name = showTeam.get(i).getTeam_name();
            System.out.println(team_name);
//            jo.put("birth", subBirth);
            jo.put("team_name", showTeam.get(i).getTeam_name());
//            jo.put("team_tactics", showTeam.get(i).getTeam_tactics());
//            jo.put("team_formation", showTeam.get(i).getTeam_formation());
            jo.put("amblem_logo", showTeam.get(i).getAmblem_logo());
            jo.put("team_uniform", showTeam.get(i).getTeam_uniform());
            jo.put("league_logo", showTeam.get(i).getLeague_logo());
            
            ja.put(jo);
        }

        return ja.toString();
    }
	
}
