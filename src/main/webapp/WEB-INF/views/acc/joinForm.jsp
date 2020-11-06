<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>

<script type="text/javascript" src="/resources/js/jquery-3.4.1.js"></script>
<style rel="stylesheet">
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
* {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}


body .container {
  position: relative;
  overflow: hidden;
  width: 700px;
  height: 1000px;
  margin: 80px auto 00;
}
body .container h1 {
  font-size: 30px;
  font-weight: 700;
  margin-bottom: 23px;
  text-align: center;
  text-indent: 6px;
  letter-spacing: 7px;
  text-transform: uppercase;
  color: #263238;
}
body .container .tabs {
  width: 100%;
  margin-bottom: 29px;
  border-bottom: 1px solid #d9d9d9;


}


body .container .tabs .tab {
  display: inline-block;
  width:30%;
  margin-bottom: -1px;

  padding-bottom: 10px;


  letter-spacing: 0;
  border-bottom: 1px solid #d9d9d9;
  transition: all 0.1s ease-in-out;
  color: #263238;
  font-size: 11px;
}
body .container .tabs span{
  text-align: center;

}



body .container .content form {
  position: relative;
  height: 287px;
}

body .container .content div #email_float {
   float: left;
}
body .container .content label:first-of-type, body .container .content input:first-of-type, body .container .content .more:first-of-type {
  -moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label:nth-of-type(2), body .container .content input:nth-of-type(2), body .container .content .more:nth-of-type(2) {
  -moz-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label:nth-of-type(3), body .container .content input:nth-of-type(3), body .container .content .more:nth-of-type(3) {
  -moz-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container .content label {
  font-size: 12px;
  color: #263238;
  -moz-user-select: -moz-none;
  -ms-user-select: none;
  -webkit-user-select: none;
  user-select: none;
}
body .container .content label:not([for='remember']) {
  display: none;
}

body .container .content span.explain {
   font-size: 15px;
   margin: 0px 0px 12px 40px;
}

body .container .content span.check {
  font-size: 14px;
  width: 40%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
}
body .container .content input.inpt {
  font-size: 14px;
  width: 40%;
  height: 42px;
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
body .container .content input.inpt2 {
  font-size: 14px;
  width: 40%;
  height: 42px;
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
body .container .content input.Aname {
  font-size: 14px;
  width: 22%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}




body .container .content input.emailpt {
  font-size: 14px;
  width: 18%;
  height: 42px;
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

body .container .content input.emailpt2 {
  font-size: 14px;
  width: 22%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}
body .container .content select.emailpt3 {
  font-size: 14px;
  width: 22%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}

body .container .content input.emailCertify {
  font-size: 12px;
  line-height: 20px;
  width: 17%;
  height: 42px;
  padding: 5px 13px;
  margin-bottom: 2px;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #5a60c5;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 5px;
}

body .container .content input.phoneStyle {
  font-size: 14px;
  width: 10%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 40px;
}

body .container .content input.phoneStyle2 {
  font-size: 14px;
  width: 13%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}
body .container .content input.phoneStyle3 {
  font-size: 14px;
  width: 13%;
  height: 42px;
  margin-bottom: 12px;
  padding: 5px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}
body .container .content input.Address {
  font-size: 14px;
  width: 40%;
  height: 42px;
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
body .container .content input.Address2 {
  font-size: 14px;
  width: 40%;
  height: 42px;
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

body .container .content input.Address4 {
  font-size: 14px;
  width: 40%;
  height: 42px;
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
body .container .content input.schoolpt {
  font-size: 14px;
  width: 30%;
  height: 42px;
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
body .container .content input.schoolbt {
  font-size: 12px;
  line-height: 20px;
  width: 20%;
  height: 42px;
  padding: 5px 13px;
  margin-bottom: 2px;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #5a60c5;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 5px;
}
body .container .content input.departpt {
  font-size: 14px;
  width: 30%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin: 0px 0px 12px 5px;
}
body .container .content input.studentcodept {
  font-size: 14px;
  width: 40%;
  height: 42px;
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
body .container .content select.sept {
  font-size: 14px;
  width: 120%;
  height : 42px;
  margin: 0px 0px 12px 5px;
}
body .container .content input.inpt::-webkit-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:-moz-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt::-moz-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:-ms-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container .content input.inpt:focus {
  border-color: #999999;
}
body .container .content input.submit {
  font-size: 12px;
  line-height: 42px;
  display: block;
  width: 100%;
  height: 42px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #263238;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  margin-top: 30px;
  float : center;
}
body .container .content  input.duch {
  font-size: 12px;
  line-height: 20px;
  width: 17%;
  height: 42px;
  margin-bottom: 2px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #5a60c5;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 5px;
}
body .container .content input.submit:hover {
  background-color: #263238;
  color: #ffffff;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
}
body .container .content input:focus {
  outline: none;
}


body .container .content .checkbox {
  margin-top: 4px;
  overflow: hidden;
  clip: rect(0 0 0 0);
  width: 0;
  height: 0;
  margin: 17px -1px;
  padding: 0;
  border: 0;
}
body .container .content .checkbox + label {
  vertical-align: middle;
  display: inline-block;
  width: 50%;
}
body .container .content .checkbox + label:before {
  content: "\A";
  color: #999999;
  font-family: Verdana;
  font-weight: bold;
  font-size: 8px;
  line-height: 10px;
  text-align: center;
  display: inline-block;
  vertical-align: middle;
  position: relative;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  background: transparent;
  border: 1px solid #d9d9d9;
  width: 11px;
  height: 11px;
  margin: -2px 8px 0 0;

}
body .container .content .checkbox:checked + label:before {
  content: "✓";
}
body .container .content .submit-wrap {
  bottom: 0;
  width: 100%;
}
body .container .content .submit-wrap a {
  font-size: 12px;
  display: block;
  margin-top: 20px;
  text-align: center;
  text-decoration: none;
  color: #999999;
}
body .container .content .submit-wrap a:hover {
  text-decoration: underline;
}
body .container .content .signup-cont {
  display: none;
}

@keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
}
@-webkit-keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
}

</style>

<!DOCTYPE HTML>
<!--
   Industrious by TEMPLATED
   templated.co @templatedco
   Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<script type="text/javascript">
 var idCheckflag = false;
   $(function(){
      $("#acc_id").keyup(function(e){
         idCheckflag = false;

      })
   })
/*   $(function(){
      $("#acc_pw2s").keyup(function(e){
         var data = $(this).val();
         var data2 = $("#acc_password").val();

         if(data != data2){
            $("#pwcheck").css("color","red");
            $("#pwcheck").text("비밀번호가 일치하지 않습니다.");
         } else {
            $("#pwcheck").css("color", "green");
            $("#pwcheck").text("비밀번호가 일치합니다.");
         }
         

      })
   }) */
      

   function formCheck(){
      var acc_id = document.getElementById("acc_id").value;
      var acc_pw = document.getElementById("acc_pw").value;
      var acc_pw2 = document.getElementById("acc_pw2").value;
      var acc_name = document.getElementById("acc_name").value;
      var phone1 = document.getElementById("phone1").value;
      var phone2 = document.getElementById("phone2").value;
      var phone3 = document.getElementById("phone3").value;
      var email1 = document.getElementById("email1").value;
      var email2 = document.getElementById("email2").value;
      /* var selectStyle = document.getElementById("selectStyle").value; */
 	
	  document.getElementById("acc_phone").value=phone1+"-"+phone2+"-"+phone3;
	  document.getElementById("acc_email").value=email1+"@"+email2;
      if(acc_id == ''){
            alert("아이디를 입력해 주세요.");
            return false;
      }
      if(acc_id.length < 3 || acc_id.length > 8){
            alert("아이디는 3~8글자로 작성해 주세요.");
            return false;
      }
      if(acc_pw == ''){
            alert("비밀번호를 입력해 주세요.");
            return false;
      }
      if(acc_pw.length < 3 || acc_pw.length > 11){
            alert("비밀번호는 3~10자리로 작성해 주세요.");
            return false;
      }
      if(acc_pw != acc_pw2){
            alert("비밀번호가 동일하지 않습니다.");
            return false;
      }
      if(acc_name == ''){
            alert("이름을 입력해 주세요.");
            return false;
      }
      if(phone1 == ''){
            alert("번호를 적어주세요.");
            return false;
      }
      if(phone2 == ''){
            alert("번호를 적어주세요.");
            return false;
      }
      if(phone3 == ''){
            alert("번호를 적어주세요.");
            return false;
      } 
      if(email1 == ''){
            alert("이메일을 입력해 주세요.");
            return false;
      }
      return true;
   }
     function SetEmailTail(emailValue) {
        var email = document.all("acc_email");    // 사용자 입력
        var emailTail = document.all("email2"); // Select box
        if ( emailValue == "notSelected" )
         return;
        else if ( emailValue == "etc" ) {
         emailTail.readOnly = false;
         emailTail.value = "";
         emailTail.focus();
        } else {
         emailTail.readOnly = true;
         emailTail.value = emailValue;
         document.getElementsById("acc_email").value() = emailValue; 
        }
   } 
     $(function(){
		$("#selectStyle").keyup(function(){
			if(this.value != "etc"){
				document.getElementById("email2").value=selectStyle;
			}

		});
      });

   
  	  $(function() {
          $(".phoneStyle").keyup (function () {
              var charLimit = $(this).attr("maxlength");
              if (this.value.length >= charLimit) {
                  $(this).next('.phoneStyle2').focus();
                  return false;
              }
         });

         $(".phoneStyle2").keyup (function() {
            var charLimit = $(this).attr("maxlength");
            if( this.value.length >= charLimit) {
               $(this).next('.phoneStyle3').focus();
               return false;
            }

         });
   });
 
   /* function numkeyCheck(e) {
      var keyValue = event.keyCode;
      if( ((keyValue >= 48 ) && (keyValue <= 57))) return true;
      else { alert("숫자만 입력하실 수 있습니다."); return false;}

   } */

   /* function idCheck2() {
      $.ajax({
         url: "/idCheck",
         type: "post",
         data: { member_id: $("#member_id").val() },
         success: function(data) {
            if(data == "1"){
               alert("사용할 수 있는 아이디입니다.");
               idCheckflag = true;
            } else {
               alert("사용할 수 없는 아이디입니다.");
               idCheckflag = false;
            }
         },
         error: function(e) {
            alert("통신실패...");
            console.log(e);
         }

      }); 
   }*/

   /* function childForm(){
      var parentForm = window.open('/searchSchool','학교검색',left='+(screen.availWidth-1000)/2+',top='+(screen.availHeight-600)/2+',
            'width=1000,height=600,location=center,status=no,scrollbars=yes');
      document.getElementById("parentForm").value = document.getElementById("childForm").value; 
      } */
   function goPopup(){
         // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
          var pop = window.open("/popup/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
          
         // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
          //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
      }
      /** API 서비스 제공항목 확대 (2017.02) **/
      function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
                        , detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
         // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
         document.form.roadAddrPart1.value = roadAddrPart1;
         document.form.roadAddrPart2.value = roadAddrPart2;
         document.form.addrDetail.value = addrDetail;
         document.form.zipNo.value = zipNo;
      }

</script>
   

   </head>
<body>


<section class="container">
   <article class="login_header">
        <h1>회원가입</h1>
         <div class="tabs"></div>
            <div class="content">
                <div class="signin-cont cont">
                      <form action="/account/join" method="post" onsubmit="return formCheck()">
                            <span class="explain">아이디</span>
                            <br>
                            
                             <input type="text" name="acc_id" id="acc_id" class="inpt"  placeholder="아이디를 입력해 주세요." >
                              <input type="button" value="중복 확인" class="duch" onclick="idCheck2();">
                              <br>
                              
                              <span class="explain">비밀번호</span>
                             <br>                          
                             <input type="password" name="acc_pw" id="acc_pw" class="inpt2"  placeholder="비밀번호를 입력해 주세요.">
                           <br>
                            <span class="explain">비밀번호 확인</span>
                             <br>
                             <input type="password" id="acc_pw2" placeholder="비밀번호를 확인해 주세요." class="inpt2">
                             <span id="pwcheck" class="check"></span>
                             <br>
                             
                             <span class="explain">이름</span>
                             <br>
                             
                             <input type="text" name="acc_name" id="acc_name" placeholder="이름을 입력해 주세요." class="Aname">
                             <br>
                             
                              
                                
                             
         
                         	<span class="explain" >우편번호</span>
                        	 <br>
                         	 <input type="hidden" id="confmKey" name="confmKey" value=""  >
                         	 <input type="text" id="zipNo" name="acc_add" readonly style="width:100px" class="Address">
                          	 <input type="button" value="주소검색" onclick="goPopup();">
							 <br>	                          
                          
                        	<span class="explain">도로명주소</span>
                         	<br>  
                         	<input type="text" id="roadAddrPart1" name="acc_add2" style="width:60%" class="Address4">
                        
                        	 <br>	
                         	 <span class="explain">상세주소</span>
                         	 <br>
                             <input type="text" id="addrDetail" name="acc_add3" style="width:60%" value="" class="Address2">
                              
                         
                        	  <br>
                             <span class="explain">핸드폰 번호</span>
                             <br>
                             
                             <input type="text" class="phoneStyle" size=3 maxlength="3" id="phone1" onKeyPress="return numkeyCheck(event)"> - 
                             <input type="text" class="phoneStyle2" size=4 maxlength="4" id="phone2" onKeyPress="return numkeyCheck(event)"> - 
                             <input type="text" class="phoneStyle3" size=4 maxlength="4" id="phone3" onKeyPress="return numkeyCheck(event)">
                             <input type="hidden" name="acc_phone" id="acc_phone"> 
                             <br>
                             
                             <span class="explain">이메일</span>
                             <br>
                             
                             <input type="text" class="emailpt" id="email1">
                             <b> @</b>
                             <input type="text" id="email2" value="" ReadOnly="true" class="emailpt2">
		                        <select name="emailCheck" id="selectStyle" onchange="SetEmailTail(emailCheck.options[this.selectedIndex].value)" class="emailpt3">
		                           <option value="notSelected" >::선택하세요::</option>
		                           <option value="etc">직접입력</option>
		                           <option value="naver.com">naver.com</option>
		                           <option value="nate.com">nate.com</option>
		                           <option value="empal.com">empal.com</option>
		                           <option value="hotmail.com">hotmail.com</option>
		                           <option value="lycos.co.kr">lycos.co.kr</option>
		                           <option value="msn.com">msn.com</option>
		                           <option value="hanmail.net">hanmail.net</option>
		                           <option value="yahoo.com">yahoo.com</option>
		                           <option value="korea.com">korea.com</option>
		                           <option value="kornet.net">kornet.net</option>
		                           <option value="yahoo.co.kr">yahoo.co.kr</option>
		                           <option value="kebi.com">kebi.com</option>
		                           <option value="orgio.net">orgio.net</option>
		                           <option value="paran.com">paran.com</option>    
		                           <option value="gmail.com">gmail.com</option>
		                        </select>
                        
                        <input type="hidden" id="acc_email" name="acc_email">
                     
                        <input type="button" value="이메일 인증" class="emailCertify">
                        <br>
                                 
                        <div class="submit-wrap">
                  <input type="submit" value="회원가입" class="submit" >
                   </div>
              </form>
          </div>
      </div>
   </article>
</section>

   </body>
</html>