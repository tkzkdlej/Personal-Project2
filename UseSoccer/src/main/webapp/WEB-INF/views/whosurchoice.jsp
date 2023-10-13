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
   .user-data-input-name {
   		border-radius: 5px;
   		width: 100%;
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
   
   .league-logo {
   		height: 300px; 
    	width: 50%;
   } 
   .img-emblem {
    	height: 240px; 
    	width: 240px; 
   } 
   .img-uniform {
   		height: 300px; 
    	width: 300px; 
   }
   
   .position_sel {
   		border-radius: 7px;
   		width: 100%;
   		height: 30px;
   }
   
   .backNum_sel {
   		border-radius: 5px;
   		width: 100%;
   		height: 30px;
   }
   .formation_sel {
   		border-radius: 5px;
   		width: 100%;
   		height: 30px;
   }
   .tactic_sel {
   		border-radius: 5px;
   		width: 100%;
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
					 <form method="post" action="/choose">
						<label>메시 <input type="radio" name="choice" value="메시"></label><br>
						<label>펠레 <input type="radio" name="choice" value="펠레"></label><br>
						<input type="submit" value="선택">
					 </form>				 
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
		loadMyTeamData();
})


// 사용자가 입력한 내용을 바탕으로 맞는 팀을 select
function loadMyTeamData(){
	
	let selectedPosition = document.getElementById("user_position").value;
	let selectedFormation = document.getElementById("user_formation").value;
	let selectedTactics = document.getElementById("user_tactics").value;
	
	$('#tbl_for_myTeam').empty();
	$.ajax({url:'/showmyteam',type:'get',data:{ 
												formation: selectedFormation,
												tactics: selectedTactics},
										dataType:'json',
		success:function(data){
			if(data=='' || data==null) {
				let str='<tbody><tr><td><b>해당하는 정보의 팀이 없습니다.</b></td></tr></tbody>';
				
				$('#tbl_for_myTeam').append(str);
			} else {
				
				for(let i=0; i<data.length; i++){
					
					let str="<tbody><tr><td colspan=3><img src='"+data[i]['league_logo']+"' class='league-logo' alt=''></td></tr>";
					str+="<tr><td><img src='"+data[i]['amblem_logo']+"' class='img-emblem' alt=''></td><td style='color: black; v-align: center;'><b>"+data[i]['team_name']+"</b></td><td><img src='"+data[i]['team_uniform']+"' class='img-uniform' alt=''></td></tr></tbody>";
					
					$('#tbl_for_myTeam').append(str);
					
				}
			}
		}})
		return false;
}


</script>
</html>