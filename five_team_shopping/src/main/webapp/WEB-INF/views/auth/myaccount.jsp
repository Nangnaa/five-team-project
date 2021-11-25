<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/auth/myaccount.css">
</head>
<body>
<jsp:include page="../include/index_include/index_header.jsp"></jsp:include>

    <div class="container">
        <div class="mypage-content">
            <div class="header">
                <h1>My Account</h1>
            </div>
            <div class="header_in">
                <h3>INFORMATION</h3>
                <h3 class="header_i">*필수입력사항</h3>
            </div>
            <div class="item_tf">
                <input type="text" class="item_box" id="user_id" value="${principal.user.user_id }" placeholder="아이디">
            </div>
            <div class="item_tf">
                <input type="password" class="item_box" value="${principal.user.user_password }" placeholder="비밀번호">
            </div>
            <div class="item_msg">
                <span class="msg1"></span>
            </div>
            <div class="item_tf">
                <input type="password" class="item_box"  placeholder="비밀번호 확인">
            </div>
            <div class="item_msg">
                <!-- <span class="msg1">비밀번호가 일치하지 않습니다.</span> -->
            </div>
            <!-- <div class="item_tf">
                <input type="hidden" id="user_name" value="">
                <label class="item_lb" for=""></label>
            </div> -->
            <div class="item_tf">
                <input type="text" class="item_box" id="user_name" value="${principal.user.user_name }" placeholder="이름" >
            </div>
            <div class="item_add">
                <input type="text" class="item_box_add" placeholder="주소">
                <button type="button" class="add_btn">우편번호</button>
            </div>
            <div class="item_tf">
                <input type="text" class="item_box" placeholder="기본주소" >
            </div>
            <div class="item_tf">
                <input type="text" class="item_box" placeholder="나머지주소(선택입력가능)" >
            </div>
        
            <div class="item_tel">
                <select name="tel" id="tel">
                    <option value="tel_010">010</option>
                </select>
                - <input type="tel"  placeholder="휴대전화 입력">
                - <input type="tel" >
            </div>
            <button class="footer_b" type="button">회원정보수정</button>
            <button class="footer_b" type="button">취소</button>
            <button class="footer_b" type="button">회원탈퇴</button>
        </div>
    </div>
    <jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
</body>

</html>