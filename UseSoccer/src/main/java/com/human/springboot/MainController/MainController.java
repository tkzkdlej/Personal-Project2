package com.human.springboot.MainController;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

//import jakarta.servlet.http.HttpServletRequest;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
//import java.util.Optional;

@Controller
public class MainController {

    @Autowired
    private MainDAO maindao;
    
    private static final String API_KEY = "AIzaSyAhFFbfs9k7deCHW_uR_XvWwTTx38Nsjq0";
    
    @GetMapping("/main")
    public String showMain() {
        return "main";
    }
    
    // 선수관련 기사,동영상,사진 select
    @GetMapping("/infoSel")
    @ResponseBody
    public String getInfoSel(@RequestParam String name) {
        ArrayList<MainDTO> infoList = maindao.InfoList(name);

        JSONArray ja = new JSONArray();

        for (int i = 0; i < infoList.size(); i++) {
            JSONObject jo = new JSONObject();
            jo.put("article", infoList.get(i).getArticle());
            jo.put("picture", infoList.get(i).getPicture());
            jo.put("video", infoList.get(i).getVideo());
            jo.put("highlight", infoList.get(i).getHighlight());
            jo.put("article_name", infoList.get(i).getArticle_name());

            // 추가: YouTube 썸네일 정보를 가져오기
            String videoThumbnailUrl = getYouTubeThumbnail(infoList.get(i).getVideo());
            String highlightThumbnailUrl = getYouTubeThumbnail(infoList.get(i).getHighlight());

            jo.put("videoThumbnail", videoThumbnailUrl);
            jo.put("highlightThumbnail", highlightThumbnailUrl);

            ja.put(jo);
        }

        return ja.toString();
    }

    // 선수관련 기본정보 select
    @GetMapping("/playerSel")
    @ResponseBody
    public String getPlayerSel(@RequestParam String name) {
        ArrayList<MainDTO> infoList = maindao.playerList(name);

        JSONArray ja = new JSONArray();
        
        for (int i = 0; i < infoList.size(); i++) {
            JSONObject jo = new JSONObject();
            String birth = infoList.get(i).getBirth();
            String subBirth = birth.substring(0, 10);
            
            jo.put("name", infoList.get(i).getName());
            jo.put("birth", subBirth);
            jo.put("height", infoList.get(i).getHeight());
            jo.put("weight", infoList.get(i).getWeight());
            jo.put("team", infoList.get(i).getTeam());
            jo.put("emblem", infoList.get(i).getEmblem());
            jo.put("position", infoList.get(i).getPosition());
            jo.put("foot", infoList.get(i).getFoot());
            jo.put("backnumber", infoList.get(i).getBacknumber());
            jo.put("emblemlink", infoList.get(i).getEmblemlink());
            
            ja.put(jo);
        }

        return ja.toString();
    }
    
    
    
    
    
    // YouTube 동영상 URL에서 비디오 ID를 추출하는 함수
    private String getYoutubeVideoId(String url) {
        String videoId = url.split("v=")[1];
        int ampersandPosition = videoId.indexOf('&');
        if (ampersandPosition != -1) {
            videoId = videoId.substring(0, ampersandPosition);
        }
        return videoId;
    }

    // YouTube 썸네일 이미지 URL을 가져오는 메소드
    private String getYouTubeThumbnail(String videoUrl) {
//        String apiKey = ""; // 본인의 YouTube API 키로 설정

        // YouTube 비디오 ID 추출
        String videoId = getYoutubeVideoId(videoUrl);

        // YouTube API 요청 URL 생성
        String apiUrl = "https://www.googleapis.com/youtube/v3/videos?key=" + API_KEY
                + "&part=snippet&id=" + videoId;

        RestTemplate restTemplate = new RestTemplate();
        String jsonResponse = restTemplate.getForObject(apiUrl, String.class);

//        // JSON 응답 데이터에서 썸네일 URL 추출
        String thumbnailUrl = extractThumbnailUrlFromJson(jsonResponse);

        return thumbnailUrl;
    }
    
    private String extractThumbnailUrlFromJson(String jsonResponse) {
        try {
            // JSON 문자열을 JsonNode로 파싱
            ObjectMapper objectMapper = new ObjectMapper();
            JsonNode jsonNode = objectMapper.readTree(jsonResponse);

            // JsonNode를 사용하여 썸네일 URL 추출
            JsonNode itemsNode = jsonNode.get("items");
            if (itemsNode != null && itemsNode.isArray() && itemsNode.size() > 0) {
                JsonNode defaultThumbnailNode = itemsNode.get(0).get("snippet").get("thumbnails").get("default");
                if (defaultThumbnailNode != null && defaultThumbnailNode.has("url")) {
                    String thumbnailUrl = defaultThumbnailNode.get("url").asText();
                    return thumbnailUrl;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "DEFAULT_THUMBNAIL_URL"; // 예외 발생 시 기본값 반환
    }

}
