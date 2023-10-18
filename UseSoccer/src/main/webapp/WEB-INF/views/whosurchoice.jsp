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
      <title>UseSoccer - WhosUrChoice</title>
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
   * {
   		box-sizing: border-box;
   }
   #choiceA {
   		cursor: pointer;
   }
   #choiceB {
   		cursor: pointer;
   }
   
   
   
   /* modal css */
   body.modal-open {
        overflow: hidden;
   }

   .modal {
        background: rgba(0, 0, 0, 0.5);
   }

   .modal.in {
        display: flex !important;
   }

   .modal-dialog {
        margin: auto;
        display: flex;
        flex-direction: column;
   }
   body.modal-open .animated {
    	animation-fill-mode: initial;
    	z-index: inherit;
   }
   
   
   .modal {
/*    		width: 600px; */
/*    		height: 350px; */
   		position: fixed;
	    top: 0;
	    right: 0;
	    bottom: 0;
	    left: 0;
	    z-index: 1050;
	    display: none;
	    overflow: hidden;
	    -webkit-overflow-scrolling: touch;
	    outline: 0;
   }

   .modal-dialog {
    	position: relative;
    	width: auto;
    	margin: 10px;
   }
   
   .modal-content {
   		width: 600px;
   		height: 250px;
   		background-clip: padding-box;
	    background-color: #fff;
	    border: 1px solid transparent;
	    border-radius: 4px;
	    box-shadow: 0 1px 3px rgba(0,0,0,.3);
	    outline: 0;
	    position: relative;
   }
   .animated {
    	-webkit-animation-duration: 1s;
    	animation-duration: 1s;
    	-webkit-animation-fill-mode: both;
    	animation-fill-mode: both;
   }
   .fadeIn {
   		-webkit-animation-name: fadeIn;
    	animation-name: fadeIn;
   }
   
   
   .inmodal .modal-header {
   		padding: 30px 15px;
    	text-align: center;
   }
   .modal-header {
   		padding: 15px;
    	border-bottom: 1px solid #e5e5e5;
    	height: 55px;
   }
/*    .inmodal .modal-icon { */
/*    		font-size: 84px; */
/*     	color: #e2e3e3; */
/*    } */
/*    .fa { */
/*    		display: inline-block; */
/* 	    font: normal normal normal 14px/1 FontAwesome; */
/* 	    font-size: inherit; */
/* 	    text-rendering: auto; */
/* 	    -webkit-font-smoothing: antialiased; */
/*    } */
   h4 {
   		display: block;
   		color: inherit;
   		font-weight: 600;
		font-family: inherit;
	    margin-block-start: 1.33em;
	    margin-block-end: 1.33em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
   }
   .modal-title {
   		margin: 0;
    	line-height: 1.42857143;
    	font-size: 26px;
   }
   
   
   .modal-body {
   		background: #f8fafb;
   		position: relative;
   }
   .row {
   		margin-right: -15px;
   		margin-left: -15px;
   }
   .form-control {
   		background-color: #fff;
	    background-image: none;
	    border: 1px solid #e5e6e7;
	    border-radius: 1px;
	    color: inherit;
	    display: block;
	    padding: 6px 12px;
	    transition: border-color .15s ease-in-out 0s,box-shadow .15s ease-in-out 0s;
	    width: 100%;
	    font-size: 14px;
   }
   .m-b {
   		margin-bottom: 15px;
   		font-size: 13px;
   }
   
   .modal-footer {
/*    		margin-top: 0; */
		padding: 15px;
    	text-align: right;
    	border-top: 1px solid #e5e5e5;
   }
   
   .btn {
/*    		border-radius: 3px; */
   		display: inline-block;
	    padding: 6px 12px;
	    margin-bottom: 0;
	    font-size: 14px;
	    font-weight: 400;
	    line-height: 1.42857143;
	    text-align: center;
	    white-space: nowrap;
	    vertical-align: middle;
	    -ms-touch-action: manipulation;
	    touch-action: manipulation;
	    cursor: pointer;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	    background-image: none;
	    border: 1px solid transparent;
	    border-radius: 4px;
   }
   .btn-primary {
   		background-color: #1ab394;
    	border-color: #1ab394;
    	color: #fff;
   }
   
   .col-xs-8 {
   		width: 72%;
   }
   .col-xs-3 {
   		width: 28%;
   }
   
   .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12,
   .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5,
   .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
    	float: left;
   }
   
   .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12,
   .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5,
   .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9,
   .col-md-1, .col-md-10, .col-md-11, .col-md-12,
   .col-md-2, .col-md-3, .col-md-4, .col-md-5,
   .col-md-6, .col-md-7, .col-md-8, .col-md-9,
   .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12,
   .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5,
   .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9,
   .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12,
   .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5,
   .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
	    position: relative;
	    min-height: 1px;
	    padding-right: 15px;
	    padding-left: 15px;
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
         <a href="/whatsmyteam">WhatsMyTeam</a>
         <a class="active" href="/whosurchoice">WhosUrChoice</a>
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
      
	<!-- start modal section -->
	<div class="modal inmodal in" id="divRound" tabindex="-1" role="dialog" aria-hidden="true">
	  <div id="myModal" class="modal-dialog" style="margin: 100px auto; max-width: 600px;">
		 <div class="modal-content animated fadeIn">
			<div class="modal-header" style="padding: 10px;">
<!-- 			   <img src="/img/vs logo.png" class="fa fa-vsLogo modal-icon" style="width: 40px; height: 40px;"> -->
			   <h4 class="modal-title" style="width: 100%;"><b>최애 축구선수 이상형 월드컵</b></h4>
<!-- 			   <small class="modal-desc">현시점 폼 기준, 유럽5대리그 기준으로 선정했습니다.</small> -->
			</div>
			<form role="form">
				<div class="modal-body" style="padding: 10px;">
					<div class="row">
						<div class="col-sm-12">
							<label><b>총 라운드를 선택하세요.</b></label>
							<select class="form-control" id="selRound" name="64">
								<option value="64">64강</option>
								<option value="32">32강</option>
								<option value="16">16강</option>
								<option value="8">8강</option>
								<option value="4">4강</option>
							</select>
							<div class="m-b" id="rtext"></div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" id="rstart" class="btn btn-primary col-xs-8">시작하기</button>
					<a href="/main" class="btn btn-white col-xs-3 cancel">취소</a>
				</div>
			</form>
		 </div>
	  </div>
	</div>
	<!-- end modal section -->
	
	<!-- start slider section -->
      <div  class=" banner_main">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-12">
                  <div class="club">
                     <figure><img class="sm_n0" src="/images/bbnner.png"> <img class="tes_n0" src="/images/banner1.jpg"> </figure>
                     <div class="poa_t">
                        <h1>UseSoccer</h1>
                        <p>당신의 최애선수는 누구인가요?</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
    <!-- end slider section -->
      
    <!-- choose player -->
      <div class="sports" style="background-color: black;">
         <div class="container">
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <div class="titlepage text_align_center">
					 <h1 id="whatRound"><b style="font-size: 50px; color: white;">최애 축구선수 이상형 월드컵 강</b></h1>
					 <br><br>
					 <div id="game">
						<h1 style="color: white;"></h1><br>
						<div id="matchup">
							<img id="choiceA" alt="ChoiceA" style="width: 422px; height: 478px;">&nbsp;&nbsp;&nbsp;
							<img src="/img/vs logo.png" style="width: 70px; height: 70px;">&nbsp;&nbsp;&nbsp;
							<img id="choiceB" alt="ChoiceB" style="width: 422px; height: 478px;">
						</div>
						<p id="result"></p>
					 </div>
				  </div>
               </div>
            </div>
         </div>
      </div>
     
   </body>
   
<!-- Javascript files-->
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/custom.js"></script>
<!-- end Javascript files -->

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>

$(document).ready(function() {
	
	$('#rtext').text("총 64명의 후보 중 무작위 64명이 대결합니다");
	
	// 모달을 페이지 로딩 시 나타나도록 설정
	$("#myModal").css("display", "block");
	
	// 모달 열기 버튼을 클릭하면 페이지 내용을 숨깁니다.
    $('#rstart').click(function() {
        $("#myModal").css("display", "none");
        $('body').removeClass('modal-open');
    });
	
	// 웹 페이지가 로딩될 때와 다른 이벤트(예: 버튼 클릭)에 이 함수를 호출하여 이미지를 변경
    randomizeImages();
});

$(document)
const imagePaths = [
			            "/img/리오넬 메시.jpg","/img/손흥민.jpg","/img/프렝키 더용.jpg","/img/로드리.jpg",
			            "/img/더 브라위너.jpg","/img/호날두.jpg","/img/레반도프스키.jpg","/img/홀란드.jpg",
			            "/img/네이마르.jpg","/img/김민재.jpg","/img/그리즈만.jpg","/img/반다이크.jpg",
			            "/img/리스 제임스.jpg","/img/외데고르.jpg","/img/벨링엄.jpg","/img/음바페.jpg",
			            "/img/그바르디올.jpg","/img/노이어.jpg","/img/디발라.jpg","/img/라우타로.jpg",
			            "/img/라이스.jpg","/img/로메로.jpg","/img/로이스.jpg","/img/루카쿠.jpg",
			            "/img/마운트.jpg","/img/메디슨.jpg","/img/무시알라.jpg","/img/뮐러.jpg",
			            "/img/미토마.jpg","/img/베실바.jpg","/img/벤제마.jpg","/img/부스케츠.jpg",
			            "/img/브페.jpg","/img/비수마.jpg","/img/살라.jpg","/img/소보슬라이.jpg",
			            "/img/수아레스.jpg","/img/아라우호.jpg","/img/알리송.jpg","/img/알바.jpg",
			            "/img/알바레스.jpg","/img/에데르송.jpg","/img/에릭센.jpg","/img/엔조.jpg",
			            "/img/오시멘.jpg","/img/이강인.jpg","/img/제수스.jpg","/img/지루.jpg",
			            "/img/칸셀루.jpg","/img/케인.jpg","/img/쿠르투아.jpg","/img/쿠보.jpg",
			            "/img/쿤데.jpg","/img/키미히.jpg","/img/테어슈테겐.jpg","/img/테오.jpg",
			            "/img/페드리.jpg","/img/펠릭스.jpg","/img/폰지.jpg","/img/하베르츠.jpg",
			            "/img/하키미.jpg","/img/황희찬.jpg","/img/후벤 디아스.jpg","/img/히샬리송.jpg"		            
			            // 추가 이미지 경로를 배열에 계속 추가
        		   ];

const choices = [
		            { name: "리오넬 메시", image: "/img/리오넬 메시.jpg" },{ name: "손흥민", image: "/img/손흥민.jpg" },{ name: "프렝키 더용", image: "/img/프렝키 더용.jpg" },{ name: "로드리", image: "/img/로드리.jpg" },
		            { name: "케빈 더 브라위너", image: "/img/더 브라위너.jpg" },{ name: "크리스티아누 호날두", image: "/img/호날두.jpg" },{ name: "로베르토 레반도프스키", image: "/img/레반도프스키.jpg" },{ name: "엘링 홀란드", image: "/img/홀란드.jpg" },
		            { name: "네이마르", image: "/img/네이마르.jpg" },{ name: "김민재", image: "/img/김민재.jpg" },{ name: "앙투안 그리즈만", image: "/img/그리즈만.jpg" },{ name: "버질 반다이크", image: "/img/반다이크.jpg" },
		            { name: "리스 제임스", image: "/img/리스 제임스.jpg" },{ name: "마르틴 외데고르", image: "/img/외데고르.jpg" },{ name: "주드 벨링엄", image: "/img/벨링엄.jpg" },{ name: "킬리안 음바페", image: "/img/음바페.jpg" },
		            { name: "요수코 그바르디올", image: "/img/그바르디올.jpg" },{ name: "마누엘 노이어", image: "/img/노이어.jpg" },{ name: "파울로 디발라", image: "/img/디발라.jpg" },{ name: "라우타로 마르티네스", image: "/img/라우타로.jpg" },
		            { name: "데클란 라이스", image: "/img/라이스.jpg" },{ name: "크리스티안 로메로", image: "/img/로메로.jpg" },{ name: "마르코 로이스", image: "/img/로이스.jpg" },{ name: "로멜루 루카쿠", image: "/img/루카쿠.jpg" },
		            { name: "메이슨 마운트", image: "/img/마운트.jpg" },{ name: "제임스 메디슨", image: "/img/메디슨.jpg" },{ name: "자말 무시알라", image: "/img/무시알라.jpg" },{ name: "토마스 뮐러", image: "/img/뮐러.jpg" },
		            { name: "미토마 카오루", image: "/img/미토마.jpg" },{ name: "베르나르두 실바", image: "/img/베실바.jpg" },{ name: "카림 벤제마", image: "/img/벤제마.jpg" },{ name: "세르히오 부스케츠", image: "/img/부스케츠.jpg" },
		            { name: "브루노 페르난데스", image: "/img/브페.jpg" },{ name: "이브 비수마", image: "/img/비수마.jpg" },{ name: "모하메드 살라", image: "/img/살라.jpg" },{ name: "도미니크 소보슬라이", image: "/img/소보슬라이.jpg" },
		            { name: "루이스 수아레스", image: "/img/수아레스.jpg" },{ name: "로날드 아라우호", image: "/img/아라우호.jpg" },{ name: "알리송 베커", image: "/img/알리송.jpg" },{ name: "조르디 알바", image: "/img/알바.jpg" },
		            { name: "훌리안 알바레스", image: "/img/알바레스.jpg" },{ name: "에데르송", image: "/img/에데르송.jpg" },{ name: "크리스티안 에릭센", image: "/img/에릭센.jpg" },{ name: "엔조 페르난데스", image: "/img/엔조.jpg" },
		            { name: "빅터 오시멘", image: "/img/오시멘.jpg" },{ name: "이강인", image: "/img/이강인.jpg" },{ name: "가브리엘 제수스", image: "/img/제수스.jpg" },{ name: "올리비에 지루", image: "/img/지루.jpg" },
		            { name: "주앙 칸셀루", image: "/img/칸셀루.jpg" },{ name: "해리 케인", image: "/img/케인.jpg" },{ name: "티보 쿠르투아", image: "/img/쿠르투아.jpg" },{ name: "쿠보 다케후사", image: "/img/쿠보.jpg" },
		            { name: "쥘 쿤데", image: "/img/쿤데.jpg" },{ name: "조슈아 키미히", image: "/img/키미히.jpg" },{ name: "마크 안드레 테어 슈테겐", image: "/img/테어슈테겐.jpg" },{ name: "테오 에르난데스", image: "/img/테오.jpg" },
		            { name: "페드리", image: "/img/페드리.jpg" },{ name: "주앙 펠릭스", image: "/img/펠릭스.jpg" },{ name: "알폰소 데이비스", image: "/img/폰지.jpg" },{ name: "카이 하베르츠", image: "/img/하베르츠.jpg" },
		            { name: "아치라프 하키미", image: "/img/하키미.jpg" },{ name: "황희찬", image: "/img/황희찬.jpg" },{ name: "후벵 디아스", image: "/img/후벤 디아스.jpg" },{ name: "히샬리송", image: "/img/히샬리송.jpg" }
		            // 추가 이상형을 배열에 계속 추가
        		];

let currentRound = 0;
let currentMatch = 0;
let selectedChoices = [];

const choiceA = document.getElementById("choiceA");
const choiceB = document.getElementById("choiceB");
const result = document.getElementById("result");

choiceA.addEventListener("click", () => {
    selectedChoices.push(choices[currentMatch * 2]);
    nextMatch();
});

choiceB.addEventListener("click", () => {
    selectedChoices.push(choices[currentMatch * 2 + 1]);
    nextMatch();
});

document.addEventListener("DOMContentLoaded", function () {
    // select 요소와 텍스트 업데이트를 위한 div 요소 가져오기
    const selRound = document.getElementById("selRound");
    const rtext = document.getElementById("rtext");

    // select 요소의 변경 이벤트 감지
    selRound.addEventListener("change", function () {
        // 선택된 옵션 값 가져오기
        const selectedValue = selRound.value;

        // 업데이트할 텍스트 생성
        const text = "총 64명의 후보 중 무작위 "+selectedValue+"명이 대결합니다.";

        // 텍스트를 업데이트할 div에 적용
        rtext.textContent = text;
    });
});

//"모달 닫기" 버튼 클릭 시 모달을 숨김
// $("#modal-cancel").on("click", function() {
// 	  $("#myModal").css("display", "none");
// });



// 이미지 소스를 랜덤하게 변경하는 함수
function randomizeImages() {
    // 이미지 경로를 랜덤으로 선택
    const randomIndexA = Math.floor(Math.random() * imagePaths.length);
    let randomIndexB;
    do {
        randomIndexB = Math.floor(Math.random() * imagePaths.length);
    } while (randomIndexB === randomIndexA);

    // 이미지 소스 변경
    choiceA.src = imagePaths[randomIndexA];
    choiceB.src = imagePaths[randomIndexB];
}   
   
function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
}

// 배열을 랜덤하게 섞기
shuffleArray(choices);

function startNewMatch() {
    choiceA.src = choices[currentMatch * 2].image;
    choiceB.src = choices[currentMatch * 2 + 1].image;
    currentMatch++;
}

// 다음 매치 또는 라운드로 이동
function nextMatch() {
    if (currentMatch >= Math.pow(2, 4 - currentRound) - 1) {
        currentRound++;
        currentMatch = 0;
        if (currentRound < 4) {
        	// 새 라운드 시작
            shuffleArray(imagePaths); // 이미지 섞기
            randomizeImages();       // 이미지 랜덤 선택
//             startNewMatch();
        } else {
        	showWinner();
        }
    } else {
    	randomizeImages();
//         startNewMatch();
    }
}

function showWinner() {
    choiceA.style.display = "none";
    choiceB.style.display = "none";
    result.innerHTML = `최종 선택지: ${selectedChoices[0].name}`;
}


</script>
</html>