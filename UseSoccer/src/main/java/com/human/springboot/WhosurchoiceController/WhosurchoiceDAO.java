package com.human.springboot.WhosurchoiceController;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface WhosurchoiceDAO {
	
	ArrayList<WhosurchoiceDTO> showMatch(String whatround);
}
