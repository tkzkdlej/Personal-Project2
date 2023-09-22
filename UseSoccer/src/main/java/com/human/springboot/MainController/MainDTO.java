package com.human.springboot.MainController;

import lombok.Data;

@Data
public class MainDTO {
	// For info
	int playerseq;
	String name;
	String article;
	String picture;
	String video;
	String highlight;
	String article_name;
	
	// For player
	int playerseqno;
	String p_name;
	String birth;
	String height;
	String weight;
	String team;
	String emblem;
	String position;
	String foot;
	int backnumber;
	String emblemlink;
}
