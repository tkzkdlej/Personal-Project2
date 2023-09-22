package com.human.springboot.MainController;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainDAO {
	ArrayList<MainDTO> InfoList(String name);
	ArrayList<MainDTO> playerList(String name);
}
