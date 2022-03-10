<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<c:set var="path" value ="${ pageContext.request.contextPath }"/>   
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/join.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/css.css" /> 
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/header.css" />
	<title>join</title>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
</head>
<body>
<section class="sub-contents wrap-login">
		<h2 class="wrap-tit">회원가입</h2>
		<div class="login-box box-shadow">
			<div class="login-note">
<form action="" id="joinForm">
            <ul class="join_box">
            
<div class="wrap wd668">
<div class="container">
<div class="form_txtInput">
<h2 class="sub_tit_txt">회원가입</h2>
<p class="exTxt">회원가입시 이메일 인증을 반드시 진행하셔야 합니다.</p>
<div class="join_form">
<table>
<colgroup>
<col width="30%"/>
<col width="auto"/>
</colgroup>
<tbody>
<tr>
<th><span>아이디</span></th>
<td><input type="text" placeholder="ID 를 입력하세요."></td>
</tr>
<tr>
<th><span>이름</span></th>
<td><input type="text" placeholder=""></td>
</tr>
<tr>
<th><span>비밀번호</span></th>
<td><input type="text" placeholder="비밀번호를 입력해주세요."></td>
</tr>
<tr>
<th><span>비밀번호 확인</span></th>
<td><input type="text" placeholder="비밀번호를 확인하세요"></td>
</tr>
<tr class="email">
<th><span>이메일</span></th>
<td>
<input type="text"  class="email" placeholder=""><span class="mar10">@</span>
<input type="text"  class="email email2" placeholder="">
<a href="javascript:;" class="btn_confirm">인증번호 발송</a>
</td>
</tr>
<tr>
<th><span>인증번호 확인</span></th>
<td><input type="text" class="send_number" placeholder="10:00">
<a href="javascript:;" class="btn_confirm">인증번호 발송</a>
</td>
</tr>
<tr>
<th><span>휴대폰 번호</span></th>
<td><input type="text" placeholder="ID 를 입력하세요."></td>
</tr>
</tbody>
</table>
<div class="exform_txt"><span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span></div>
</div><!-- join_form E  -->
<div class="agree_wrap">
<div class="checkbox_wrap">
        <input type="checkbox" id="news_letter" name="news_letter" class="agree_chk">
        <label for="news_letter">[선택]뉴스레터 수신동의</label>
      </div>
<div class="checkbox_wrap mar27">
        <input type="checkbox" id="marketing" name="marketing" class="agree_chk">
        <label for="marketing">[선택]마케팅 목적 개인정보 수집 및 이용에 대한 동의</label>
<ul class="explan_txt">
<li><span class="red_txt">항목 : 성별, 생년월일</span></li>
<li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br/>
대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br/>
다만 이때 회원 대상 서비스가 제한될 수 있습니다.
</li>
</ul>
      </div>
</div>
<div class="btn_wrap">
<a href="javascript:;">다음</a>
</div>
</div>
</div>
</section>
</body>
</html>
