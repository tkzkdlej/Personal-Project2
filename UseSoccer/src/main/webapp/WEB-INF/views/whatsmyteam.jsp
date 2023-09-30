<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- site metas -->
      <title>UseSoccer - WhatsMyTeam</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- awesome fontfamily -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
      <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
   </head>
   
   <!-- style for css -->
   <style>
   .user-data-input {
   		border-radius: 5px;
   		width: 60px;
   		height: 30px;
   		padding: 4px;
   }
   .user-data-input-name {
   		border-radius: 5px;
   		width: 180px;
   		height: 30px;
   		padding: 4px;
   }
   .btn-for-search {
   		border-radius: 10px;
   		transition: all 0.5s;
   		cursor: pointer;
   }
   .btn-for-search:hover {
		background-color:#04B404;
   }
   
   .img-emblem {
   		height: 30px;
   		width: 40px;
   }
   
   .position_sel {
   		border-radius: 7px;
   		width: 140px;
   		height: 30px;
   }
   .foot_sel {
   		border-radius: 7px;
   		width: 70px;
   		height: 30px;
   }
   
   .backNum_sel {
   		border-radius: 5px;
   		width: 45px;
   		height: 30px;
   }
   .formation_sel {
   		border-radius: 5px;
   		width: 80px;
   		height: 30px;
   }
   .tactic_sel {
   		border-radius: 5px;
   		width: 120px;
   		height: 30px;
   }
   
   .userData_tbl {
   		width: 100%;
   }
   </style>
   
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="/images/loading.gif" alt="" /></div>
      </div>
      <!-- end loader -->
      <div id="mySidepanel" class="sidepanel">
         <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
         <a href="/main">Home</a>
         <a class="active" href="/whatsmyteam">Games</a>
      </div>
      
      <!-- header -->
      <header>
      
         <!-- header inner -->
         <div class="head-top">
            <div class="container-fluid">
               <div class="row d_flex">
                  <div class="col-sm-3">
                     <div class="logo">
                        <a href="/main"><img src="/images/logo.png" /></a>
                     </div>
                  </div>
                  <div class="col-sm-9">
                     <ul class="email text_align_right">
                        <li><a href="Javascript:void(0)"><i class="fa fa-user" aria-hidden="true"></i></a></li>
                        <li><a href="Javascript:void(0)"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                        <li> <button class="openbtn" onclick="openNav()"><img src="/images/menu_btn.png"></button></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!-- end header -->
      
      <!-- start slider section -->
      <div  class=" banner_main">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-12">
                  <div class="club">
                     <figure><img class="sm_n0" src="/images/bbnner.png"> <img class="tes_n0" src="/images/banner1.jpg"> </figure>
                     <div class="poa_t">
                        <h1>UseSoccer</h1>
                        <p>원하는 선수들의 정보를 검색하고 간단하게 선수생활을 즐겨보세요!</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end slider section -->
      
      <div class="footbol">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-12">
                  <div id="myCarousel" class="carousel slide" data-ride="carousel">
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                     </ol>
                     <div class="carousel-inner">
                        <div class="carousel-item active">
                           <div class="container-fluid">
                              <div class="carousel-caption relative">
                                 <div class="bluid">
                                    <div class="foot_imgs">
                                       <a href="https://www.transfermarkt.com/statistik/vertragslosespieler" target="_blank"><img src="/img/de gea.jpg" alt=""/></a><br><br>
                                       <a href="https://www.transfermarkt.com/statistik/vertragslosespieler" target="_blank"><b style="color:black">The most valuable free agents - from transfermarkt</b></a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container-fluid">
                              <div class="carousel-caption relative">
                                 <div class="bluid">
                                    <div class="foot_imgs">
                                       <a href="https://www.youtube.com/watch?v=33SLQTHPks8" target="_blank"><img src="/img/fergurson.jpg" alt=""/></a><br><br>
                                       <a href="https://www.youtube.com/watch?v=33SLQTHPks8" target="_blank"><b style="color:black">Why Evan Ferguson is the Premier League's most exciting young striker - from transfermarkt</b></a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container-fluid">
                              <div class="carousel-caption relative">
                                 <div class="bluid">
                                    <div class="foot_imgs">
                                       <a href="https://www.transfermarkt.com/spieler-statistik/wertvollstemannschaften/marktwertetop" target="_blank"><img src="/img/haaland.jpg" alt=""/></a><br><br>
                                       <a href="https://www.transfermarkt.com/spieler-statistik/wertvollstemannschaften/marktwertetop" target="_blank"><b style="color:black">Three teams worth over €1bn - The most valuable squads in the world - from transfermarkt</b></a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                     <i class="fa fa-angle-left" aria-hidden="true"></i>
                     <span class="sr-only">Previous</span>
                     </a>
                     <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                     <i class="fa fa-angle-right" aria-hidden="true"></i>
                     <span class="sr-only">Next</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <!-- searching player -->
      <div class="sports">
         <div class="container">
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <div class="titlepage text_align_center">
                     <h2 style="font-size:34px;">선호하는 스타일을 골라 자신의 팀을 알아보세요!</h2><br><br>
                  	 <table class="userData_tbl" align="center">
                  	 <thead>
                  	 	<tr>
                  	 		<th class=thnum>이름</th><th>키</th><th>몸무게</th><th>포지션</th><th>주발</th><th>등번호</th><th>포메이션</th><th>팀 전술1</th><th>팀 전술2</th>
                  	 	</tr>
                  	 </thead>

					 <tbody>
					 	<tr>
							<td> <!-- 사용자 이름 (영문으로) -->
								<input class="user-data-input-name" id="userE_Name" placeholder="영문으로 입력해주세요"></input>
							</td> 
									
							<td> <!-- 사용자 키 -->
								<input class="user-data-input" id="userHeight" placeholder="cm"></input></td> 
									
							<td> <!-- 사용자 몸무게 -->
								<input class="user-data-input" id="userWeight" placeholder="kg"></input>
							</td> 
	                     
	                     	<td> <!-- 사용자 선호 포지션 -->
	                     		<select class="position_sel" id="user_position"> 
			                     	<option value="GK">골키퍼</option>
			                     	<option value="LB">왼쪽 풀백</option>
			                     	<option value="LWB">왼쪽 윙백</option>
			                     	<option value="RB">오른쪽 풀백</option>
			                     	<option value="RWB">오른쪽 윙백</option>
			                     	<option value="CB">센터백</option>
			                     	<option value="DM">수비형 미드필더</option>
			                     	<option value="LM">왼쪽 미드필더</option>
			                     	<option value="RM">오른쪽 미드필더</option>
			                     	<option value="CM">중앙 미드필더</option>
			                     	<option value="AM">공격형 미드필더</option>
			                     	<option value="LW">왼쪽 윙어</option>
			                     	<option value="RW">오른쪽 윙어</option>
			                     	<option value="SS">세컨드 스트라이커</option>
			                     	<option value="CF">중앙 공격수</option>
	                     		</select>
	                     	</td>
	                     
	                     	<td> <!-- 사용자 주발 -->
	                     		<select class="foot_sel" id="user_foot"> 
			                     	<option value="오른발">오른발</option>
			                     	<option value="왼발">왼발</option>
			                     	<option value="양발">양발</option>
	                     		</select>
	                     	</td>
	                     
	                     	<td> <!-- 사용자 선호 등번호 -->
	                     		<select class="backNum_sel" id="user_backNumber" name="user_backNumber"> 
	                     			<!-- <option>1..99</option> -->
	                     		</select>
	                     	</td>
	                     
	                     	<td> <!-- 사용자 선호 포메이션 -->
	                     		<select class="formation_sel" id="user_formation"> 
			                     	<option value="4-3-3">4-3-3</option>
			                     	<option value="4-4-2">4-4-2</option>
			                     	<option value="4-2-3-1">4-2-3-1</option>
			                     	<option value="4-1-4-1">4-1-4-1</option>
			                     	<option value="4-5-1">4-5-1</option>
			                     	<option value="4-2-2-2">4-2-2-2</option>
			                     	<option value="4-3-1-2">4-3-1-2</option>
			                     	<option value="4-3-2-1">4-3-2-1</option>
			                     	<option value="4-2-4">4-2-4</option>
			                     	<option value="5-3-2">5-3-2</option>
			                     	<option value="5-4-1">5-4-1</option>
			                     	<option value="5-2-3">5-2-3</option>
			                     	<option value="3-5-2">3-5-2</option>
			                     	<option value="3-4-3">3-4-3</option>
			                     	<option value="3-4-2-1">3-4-2-1</option>
			                     	<option value="3-5-1-1">3-5-1-1</option>
			                     	<option value="3-1-4-2">3-1-4-2</option>
			                     	<option value="3-4-1-2">3-4-1-2</option>
	                     		</select>
	                     	</td>
	                     
	                     	<td> <!-- 사용자 선호 팀 전술 1 -->
	                     		<select class="tactic_sel" id="user_first_tactic"> 
			                     	<option value="티키타카">티키타카</option>
			                     	<option value="게겐프레싱">게겐프레싱</option>
			                     	<option value="카테나치오">카테나치오(빗장수비st)</option>
			                     	<option value="카운터어택">카운터어택</option>
	                     		</select>
	                     	</td>
	                     
	                     	<td> <!-- 사용자 선호 팀 전술 2 -->
	                     		<select class="tactic_sel" id="user_second_tactic"> 
	                     			<option value=""></option>
	                     		</select>
	                     	</td>
						</tr>
					</tbody>                     
                  	</table>
                  	
	                <br><br><button class="btn-for-search" style="width:100px; height: 36px;" id="btnSearch">Search</button><br><br>
	                
                  </div>
               </div>
            </div>
         </div>
      </div>
     
      <!-- footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-8 offset-md-2">
                     <h3>Follow Us</h3>
                     <ul class="social_icon text_align_center">
                        <li> <a href="Javascript:void(0)"><i class="fa fa-facebook-f"></i></a></li>
                        <li> <a href="Javascript:void(0)"><i class="fa fa-twitter"></i></a></li>
                        <li> <a href="Javascript:void(0)"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        <li> <a href="Javascript:void(0)"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        <li> <a href="Javascript:void(0)"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                     </ul>
                     <div class="conta text_align_center">
                        <ul>
                           <li> <a href="Javascript:void(0)"><img src="/images/call.png" alt="#"/> Call +01 1234567890
                              </a>
                           </li>
                           <li> <a href="Javascript:void(0)"><img src="/images/mall.png" alt="#"/> demo@gmail.com
                              </a>
                           </li>
                        </ul>
                     </div>
                  </div>
                  <div class="col-md-8 offset-md-2">
                     <div class="menu_bottom text_align_center">
                        <ul>
                           <li><a href="/main">Home</a></li>
                           <li><a href="/whatsmyteam">Games</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright text_align_center">
               <div class="container">
                  <div class="row">
                     <div class="col-md-8 offset-md-2">
                        <p>© 2023 All Rights Reserved. <a href="https://html.design/"> UseSoccer </a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      
   </body>
   
<!-- Javascript files-->
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/custom.js"></script>
<!-- end Javascript files -->

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
$(document)

// 사용자의 선호 등번호 select part
const backNumberSel = document.getElementById("user_backNumber");

for (let i = 1; i <= 99; i++) {
    const option = document.createElement("option");
    option.value = i;
    option.text = i;
    backNumberSel.add(option);
}
// end 등번호 select part

$(document)
.on('click','#btnSearch',function(){
	if($('#player_info').val()==null || $('#player_info').val()=='') {
		alert('선수이름을 입력해주세요.');
	} else {
		loadPlayerData();
		loadInfoData();
	}
})


// 사용자가 입력한 선수 기본정보들 select
function loadPlayerData(){
	$('#tblPlayer').empty();
	$.ajax({url:'/playerSel',type:'get',data:{ name: $('#player_info').val() },
										dataType:'json',
		success:function(data){
			for(let i=0; i<data.length; i++){
				
				let str='<thead><tr><th class=thnum>이름</th><th>생년월일</th><th>키</th><th>몸무게</th><th>소속 팀</th><th>포지션</th><th>주발</th><th>등번호</th></tr></thead>';
				str+='<tbody><tr><td><b>'+data[i]['name']+'</b></td>';
				str+='<td><b>'+data[i]['birth']+'</b></td>';
				str+='<td><b>'+data[i]['height']+'</b></td>';
				str+='<td><b>'+data[i]['weight']+'</b></td>';
				str+="<td><a href='"+data[i]['emblemlink']+"'target='_blank'><img src='"+data[i]['emblem']+"' class='img-emblem' alt=''>&nbsp;"+data[i]['team']+"</a></td>";
				str+='<td><b>'+data[i]['position']+'</b></td>';
				str+='<td><b>'+data[i]['foot']+'</b></td>';
				str+='<td><b>'+data[i]['backnumber']+'</b></td></tr></tbody>';
				$('#tblPlayer').append(str);
				
			}
		}})
		return false;
}

// 사용자가 입력한 선수 관련 자료들 select
function loadInfoData() {
  $('#tblInfo').empty();
  $.ajax({
    url: '/infoSel',
    type: 'get',
    data: { name: $('#player_info').val() },
    dataType: 'json',
    success: function (data) {
      if (!data || data.length === 0) {
        let noInfo = '<tr><td>해당 선수의 관련 정보가 없습니다.</td></tr>';
        $('#tblInfo').append(noInfo);
        $('#player_info').val('');
      } else {
        for (let i = 0; i < data.length; i++) {
          let table = '<tbody>';
          table += "<tr><td><a href='" + data[i]['article'] + "' target='_blank'>" + data[i]['article_name'] + "</a></td></tr>";
          table += "<tr><td><img src='" + data[i]['picture'] + "' class='img-resize' alt=''></td></tr>";

          // AJAX 호출을 이용하여 YouTube 썸네일 이미지 가져오기
          $.ajax({
            url: 'https://www.googleapis.com/youtube/v3/videos',
            method: 'GET',
            data: {
              part: 'snippet',
              id: getYoutubeVideoId(data[i]['video']), // URL에서 비디오 ID 추출
              id2: getYoutubeVideoId(data[i]['highlight']), // URL에서 하이라이트 ID 추출
              key: 'AIzaSyAhFFbfs9k7deCHW_uR_XvWwTTx38Nsjq0' // 본인의 YouTube API 키로 설정
            },
            success: function (response) {
              // 썸네일 이미지 URL 설정
              var thumbnailUrlVideo = '';
              var thumbnailUrlHigh = '';

              if (response && response.items && response.items.length > 0) {
                thumbnailUrlVideo = response.items[0].snippet.thumbnails.default.url;
              }

              if (response && response.items && response.items.length > 1) {
                thumbnailUrlHigh = response.items[1].snippet.thumbnails.default.url;
              }

              console.log(thumbnailUrlVideo);
              console.log(thumbnailUrlHigh);
              // 해당 비디오의 썸네일 이미지를 설정
              table += "<tr><td><a href='" + data[i]['video'] + "' target='_blank'><img src='" + thumbnailUrlVideo + "' alt='YouTube Thumbnail Video for player'></a></td></tr>";
              // 나머지 데이터 처리
              table += "<tr><td><a href='" + data[i]['highlight'] + "' target='_blank'><img src='" + thumbnailUrlHigh + "' alt='YouTube Thumbnail Highlight for player'></a></td></tr></tbody>";

              // 테이블에 추가
              $('#tblInfo').append(table);
            },
            error: function () {
              console.error('YouTube API 오류 발생');
            }
          });
        }
      }
    },
    error: function () {
      console.error('서버 오류 발생'); // 서버 오류가 발생한 경우 적절한 오류 처리를 추가합니다.
    }
  });
  return false;
}

// YouTube 동영상 URL에서 비디오 ID를 추출하는 함수
function getYoutubeVideoId(url) {
  var videoId = url.split('v=')[1];
  var ampersandPosition = videoId.indexOf('&');
  if (ampersandPosition != -1) {
    videoId = videoId.substring(0, ampersandPosition);
  }
  return videoId;
}

</script>
</html>