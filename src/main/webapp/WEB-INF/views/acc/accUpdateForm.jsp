<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>


<html>
   <head>
      <title>니꺼내꺼</title>
      <link href="../resources/css/style.css" rel='stylesheet' type='text/css' />
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="shortcut icon" type="image/x-icon" href="../resources/images/fav-icon.png" />
      <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
      

<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
      
      <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Center Modal</title>

        <style>
           body input.inpt::-webkit-input-placeholder {
           font-size: 14px;
           color: #999999;
           font-family: 'Lato', sans-serif;
         }
         body input.inpt:-moz-placeholder {
           font-size: 14px;
           color: #999999;
           font-family: 'Lato', sans-serif;
         }
         body input.inpt::-moz-placeholder {
           font-size: 14px;
           color: #999999;
           font-family: 'Lato', sans-serif;
         }
         body input.inpt:-ms-input-placeholder {
           font-size: 14px;
           color: #999999;
           font-family: 'Lato', sans-serif;
         }
         body input.inpt:focus {
           border-color: #999999;
         }
         
         body h1.login_header {
           font-size: 30px;
           font-weight: 700;
           margin-bottom: 23px;
           text-align: center;
           text-indent: 6px;
           letter-spacing: 7px;
           text-transform: uppercase;
           color: #1e1f76;
         }
         body input.inpt {
            text-align:center;
             font-size: 14px;
             width: 50%;
             height: 15px;
             margin-bottom: 12px;
             padding: 14px 22px;
             color: #999999;
             border: 3px solid #d1d8fe;
             background: transparent;
             -moz-border-radius: 2px;
             -webkit-border-radius: 2px;
             border-radius: 10px;
             margin: 0px 0px 12px 0px;
             outline: 0px solid #d1d8fe;
         }
        
         body span.explain {
            font-size: 15px;
            margin: 0px 0px 17px 40px;
            color: #1e1f76;
         }
         body .loginform{
            text-align: center;
         }
         body .storebox{
            text-align: left;
            font-size: 13px;
            margin: 0px 0px 0px 135px;
            color: #999999;
         }
         body .container .content input.inpt {
           font-size: 14px;
           width: 40%;
           height: 22px;
           margin-bottom: 12px;
           padding: 16px 13px;
           color: #999999;
           border: 1px solid #d9d9d9;
           background: transparent;
           -moz-border-radius: 2px;
           -webkit-border-radius: 2px;
           border-radius: 2px;
           margin: 0px 0px 12px 40px;
         }
         
         body input.loginbutton{
            text-align: center;
            font-size: 17px;
            width: 58%;
            margin-bottom: 40px;
            height: 40px;
            color: #1b1620;
            background-color: #7687ba;
            outline: 0px solid #7687ba;
            border-radius: 5px;
         }
                    /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #ebebeb;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 37%; /* Could be more or less, depending on screen size */
            -moz-border-radius: 15px;
            -webkit-border-radius: 15px;
            border-radius: 15px;                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        
        .menu a{cursor:pointer;}
        .menu .hide{display:none;}
        
        .acc_menu{
        	text-align:center;
        }
        
        .acc_name{

        	font-size: 35px;
        	margin-left : 10px;
        }
        
        .photo_box{
        	text-align : center;

        }
        
        .photo{
        	width : 650px;
        	height : 500px;
        	border-radius : 20px;
        }

        .acc_info{


        	height : 50px;
        	width : 60%;
        	right : 300px;
        	top : -20px;
        	margin-right : 500px;
        	margin-left : 300px;
        	
        }

		.user_img{
			border-radius : 70%;
		}
		
		.acc_info2{
			position : relative;
			display : inline;
			top : -50px;
			left : 110px;
		}
		
		.acc_info3{
			float : right;
		}
        .item_title{
       		text-align : center;
			font-size : 35px;
			font-border : 500;
			margin-top : 15px;
			margin-bottom : 30px;
       	}
       	.item_contents{
       		width : 800px;
       		height : 900px;
       		font-size : 20px;
       		font-border : 3px;
       		margin-left : 290px;

       	}
         .acc_name{
			color : black;
        	font-size: 35px;
        	margin-left : 10px;
        }
        
        .hold{
        	position : relative;
        	top : -300px;
        	left : 300px;
        	width : 800px;
        	height : 50px;
        }
      
        .left{
        	text-align : left;
			width : 50px;
		
        }
        .right{
        	text-align : right;
			width : 100px;
        }  
        .main_design{
        	margin: 0 auto; 
       		width:350px;
       		font-family:"Georgia";
			background-color: #f89a4445;
			padding: 100px;
			font-size:24px;
			
        } 
        .bt {
			float: left; /* 플롯 중요 - 플롯 요소는 문서상 부유(흐르지만)하지만 다음 요소에 영향을 미치게 된다. */
			width: 100%; /* 부모 400px 영역 안의 100% 사용 */
			text-align: center;
			margin-top: 100px;
			border: 4px solid #f89a444f;
			background-color: #e87261a6;
			color:white;
			font-size:24px;
			padding-top:22px;
			padding-bottom:22px;
			-webkit-transition: all 0.3s;
			-moz-transition: all 0.3s;
			transition: all 0.3s;
			box-sizing: border-box;
			text-decoration: none;
			}
		.bt:hover {
			/* 버튼에 마우스 오버한 경우에 ::after 요소의 컬러를 애니메이션하기 위해 투명도로 변경 */
			background-color: transparent;
			/* or background-color: rgba(0,0,0,0); */
			color: #0B93BD;
			
		}
		.text1{
			align: left;
			font-size:"나눔고딕";
			width: 400px;
			font-size:20px;
			
			
		}
		.text2{
			
			width: 280px;
			font-size:20px;
			
			
		}
		.text3{
			color:#465f65;
			font-weight:bold;
		}
        </style>
        
      <!----webfonts---->
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
      <!----//webfonts---->
      <!-- Global CSS for the page and tiles -->
        <link rel="stylesheet" href="../resources/css/main.css">
        <!-- //Global CSS for the page and tiles -->
      <!---start-click-drop-down-menu----->
      <script src="../resources/js/jquery.min.js"></script>
        <!----start-dropdown--->
         <script type="text/javascript">
         var $ = jQuery.noConflict();
            $(function() {
	               	$('#activator').click(function(){
	                	$('#box').animate({'top':'0px'},500);
	               	});
	               	$('#boxclose').click(function(){
	               		$('#box').animate({'top':'-700px'},500);
	               	});
            	});
	            $(document).ready(function(){
		            //Hide (Collapse) the toggle containers on load
		            $(".toggle_container").hide(); 
		            //Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
		            $(".trigger").click(function(){
		            	$(this).toggleClass("active").next().slideToggle("slow");
		                return false; //Prevent the browser jump to the link anchor
	            	});
                           
        	});

            $(function() {
                $('#activator2').click(function(){
                   $('#box2').animate({'top':'0px'},500);
                });
                $('#boxclose2').click(function(){
                	$('#box2').animate({'top':'-700px'},500);
                });
             });
             $(document).ready(function(){
             //Hide (Collapse) the toggle containers on load
             $(".toggle_container").hide(); 
             //Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
             $(".trigger").click(function(){
                $(this).toggleClass("active").next().slideToggle("slow");
                   return false; //Prevent the browser jump to the link anchor
             });
                            
          });



         $(document).ready(function(){
                // Get the modal
              var login_Modal = document.getElementById("login_Modal");
       
              // Get the button that opens the modal
              var login = document.getElementById("login");
       
              // Get the <span> element that closes the modal
              var span = document.getElementsByClassName("close")[0];                                          
       
              // When the user clicks on the button, open the modal 
              login.onclick = function() {
                 login_Modal.style.display = "block";
                }
       
              // When the user clicks on <span> (x), close the modal
              span.onclick = function() {
                  login_Modal.style.display = "none";
              }
       
              // When the user clicks anywhere outside of the modal, close it
              window.onclick = function(event) {
                  if (event.target == login_Modal) {
                      login_Modal.style.display = "none";
                  }
              }
         });

         function loginCheck(){
            var acc_id = document.getElementById("acc_id").value;
            var acc_pw = document.getElementById("acc_pw").value;

            if(acc_id == ''){
               alert("아이디를 입력 해 주세요.");
               return false;
            }
            if(acc_pw == ''){
               alert("비밀번호를 입력 해 주세요.");
               return false;
            }

            document.getElementById("loginForm").submit;
         }

		function pre_index(){
			var file_index = document.getElementById("file_index").value;
			var fileNum = document.getElementById("fileNum").value;
			if(file_index > 1){
				$.ajax({
					url:"/board/preIndex",
					type:"get",
					datatype: "json",
					data: { file_index: $("#file_index").val()
							,item_no: $("#item_no").val()},
					success: function(data){
						$("#saved_file").val(data.savedfile);
						$("#file_index").val(data.file_index);
						var changeimg = document.getElementById("saved_file").value;

						document.getElementById("img").src = "<c:url value='/resources/boardfile/"+changeimg+"'></c:url>";
					},
					error:function(e){
						alert("통신 실패...");
					}
				});
				if(file_index != fileNum+1){
					$(".right").show();
				}
				if (file_index == 2){
					$(".left").hide();
				}
			}

		}
		function miri(){
			$(".left").hide();
		}
        function next_index(){
			var fileNum = document.getElementById("fileNum").value;
			var file_index = document.getElementById("file_index").value; 
            if(file_index < fileNum){
				$.ajax({
					url:"/board/nextIndex",
					type:"get",
					datatype: "json",
					data: { file_index: $("#file_index").val()
							,item_no: $("#item_no").val() },
					success: function(data){
						$("#saved_file").val(data.savedfile);
						$("#file_index").val(data.file_index);
						var changeimg = document.getElementById("saved_file").value;
						document.getElementById("img").src = "<c:url value='/resources/boardfile/"+changeimg+"'></c:url>";
					},
					error:function(e){
						alert("통신 실패...");
						console.log(e);
					}
				});
				if (file_index == fileNum-1){
					$(".right").hide();
				}
				if	(file_index > 0) {
					$(".left").show();
				}
            }
	     }

      </script>
      <script type="text/javascript">
			function formCheck(){
				var acc_pw = document.getElementById("acc_pw").value;
				var acc_name = document.getElementById("acc_name").value;
				var acc_add = document.getElementById("acc_add").value;
				var acc_add2 = document.getElementById("acc_add2").value;
				var acc_add3 = document.getElementById("acc_add3").value;
				var acc_phone = document.getElementById("acc_phone").value; 
				var acc_email = document.getElementById("acc_email").value;
		
				if(acc_pw == ''){
						alert("비밀번호를 입력해 주세요.");
						return false;
				}
				if(acc_name == ''){
						alert("이름을 입력해 주세요.");
						return false;
				}
				if(acc_add == ''){
				    alert("우편번호를 입력해 주세요.");
				    return false;
				}
				if(acc_add2 == ''){
				    alert("주소를 입력해 주세요.");
				    return false;
				}
				if(acc_add3 == ''){
				    alert("상세주소를 입력해 주세요.");
				    return false;
				}
				if(acc_phone == ''){
				    alert("번호를 입력해 주세요.");
				    return false;
				}
				if(acc_email == ''){
				    alert("이메일을 입력해 주세요.");
				    return false;
				}
				return true;
				}
		</script>
      
        <!----//End-dropdown--->
      <!---//End-click-drop-down-menu----->
      
      
   </head>
   
   <body onload="miri();">
   
       <!---start-wrap---->
         <!---start-header---->
         <div class="header">
            <div class="wrap">
            <div class="logo">
               <a href="/"><img src="../resources/images/logo.png" title="pinbal" /></a>
            </div>
            <div class="nav-icon">
                <a href="#" class="right_bt" id="activator"><span> </span> </a>
            </div>
             <div class="box" id="box">
                <div class="box_content">                                                
                  <div class="box_content_center">
                      <div class="form_content">
                        <div class="menu_box_list">
                           <ul>
                              <li><a href="/board/boardAllList"><span>전체</span></a></li>
                              <li><a href="/board/boardAllList?item_option=ticket"><span>티켓</span></a></li>
                              <li><a href="/board/boardAllList?item_option=album"><span>앨범</span></a></li>
                              <li><a href="/board/boardAllList?item_option=clothes"><span>의류</span></a></li>
                              <li><a href="/board/boardAllList?item_option=goods"><span>goods</span></a></li>
                              <li><a href="#"><span>Contact</span></a></li>
                              <div class="clear"> </div>
                           </ul>
                        </div>
                        <a class="boxclose" id="boxclose"> <span> </span></a>
                     </div>                                  
                  </div>    
               </div> 
            </div>            
            
            <div class="top-searchbar">
               <form>
                  <input type="text" /><input type="submit" value="" />
               </form>
            </div>
            <c:choose>
			<c:when test="${not empty sessionScope.loginID }">
            	<div class="userinfo">
            		<div class="user">
            		<a href="#" id="activator2" class="right_bt"><img src="../resources/images/user-pic.png" title="user-name" /><span class="acc_name">${sessionScope.loginNick }</span></a>
            		             <div class="box2" id="box2">
					                <div class="box_content">                                                
					                  <div class="box_content_center">
					                      <div class="form_content">
					                        <div class="menu_box_list">
					                           <ul>
					                              <li><a href="/board/myBoard"><span>나의 판매 목록</span></a></li>
					                              <li><a href="#"><span>찜 목록</span></a></li>
					                              <li><a href="#"><span>개인정보 관리</span></a></li>
					                              <li><a href="/board/logout"><span>로그아웃</span></a></li>
					                              <li><a href="contact.html"><span>Contact</span></a></li>
					                              <div class="clear"> </div>
					                           </ul>
					                        </div>
					                        <a class="boxclose2" id="boxclose2"><span></span></a>
					                     </div>                                  
					                  </div>    
					               </div> 
					            </div>         
 <%--            			<ul>
							<li class="menu"><a href="#" class="right_bt"><img src="../resources/images/user-pic.png" title="user-name" /><span>${sessionScope.loginNick }</span></a>
							<ul class="hide">
							<li class="acc_menu">내 정보</li>
							<li class="acc_menu">내가 쓴글</li>
							<li class="acc_menu">찜 목록</li>
						</ul> --%>
					</div>
				</div>
            </c:when>
            <c:otherwise>
            <div class="userinfo">
               <div class="user">
                  <ul>
                     <li><a href="#" id="login"><img src="../resources/images/user-pic.png" title="user-name" /><span>Login</span></a></li>
  
                  </ul>
                      <!-- Trigger/Open The Modal -->
 
                   <!-- The Modal -->
                   <div id="login_Modal" class="modal">
                
                     <!-- Modal content -->
                     <div class="modal-content">
                       <span class="close">&times;</span>
                       <h1 class="login_header">Login To Your Account</h1>                                                               
                       <br>
                       <div class="loginform">
                       <form id="loginForm" action="/account/login" method="post">
                          <input type="text" id="acc_id" name="acc_id" placeholder="아이디를 입력 해 주세요." class="inpt">
                          <br>
                          <input type="password" id="acc_pw" name="acc_pw" placeholder="비밀번호를 입력 해 주세요." class="inpt">
                          <br>
                          <div class="storebox">
                          <input type="checkbox">아이디/비밀번호 저장
                          </div>
                          <br>
                          <input type="submit" value="로그인" class="loginbutton" onclick="loginCheck();">
                      </form>
                         <a href="/account/joinForm">회원가입</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a>아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a>비밀번호 찾기</a>
                      </div>     
                     </div>
                
                   </div>
               </div>
            </div>
            </c:otherwise>
            </c:choose>
            <div class="clear"> </div>
         </div>
      </div>
      <!---//End-header---->
		<div class="content">
			<div class="wrap">
				<div id="main" role="main" class="main_design">
					<form action="/account/accountUpdate" method="post" onsubmit="return formCheck()">
						<input type="hidden" value="${sessionScope.loginID }" >
						<input type="hidden" value="${list.acc_id }" name = "acc_id">
						<div class="text1">
						<span class="text3">아이디:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <input type="text" class="text2"value="${list.acc_id }" readonly="readonly">
						<br>
						<span class="text3">비밀번호:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>  <input type="password" class="text2"id="acc_pw" name= "acc_pw" value="${list.acc_pw }">
						<br>
						<span class="text3">이름:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" class="text2"id="acc_name" name="acc_name" value="${list.acc_name }">
						<br>
						<span class="text3">우편번호:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" class="text2"id="acc_add" name="acc_add" value="${list.acc_add }">
						<br>
						<span class="text3">주소:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" class="text2"id="acc_add2" name="acc_add2" value="${list.acc_add2 }">
						<br>
						<span class="text3">상세주소:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" class="text2"id="acc_add3" name="acc_add3" value="${list.acc_add3 }">
						<br>
						 <span class="text3">핸드폰 번호:&nbsp;&nbsp;</span><input type="text" class="text2"id="acc_phone" name="acc_phone" value="${list.acc_phone }">
						<br>
						<span class="text3">email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" class="text2"id="acc_email" name="acc_email" value="${list.acc_email }">
						<br>
						</div>
						<input type="submit" value="수정하기" class="bt">

					</form>
				</div>
			</div>
		</div>
   </body>
</html>