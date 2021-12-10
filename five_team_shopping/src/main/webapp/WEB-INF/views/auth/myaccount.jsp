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
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/auth/myaccount.css">
    <script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<jsp:include page="../include/index_include/index_header.jsp"/>
        <div class="container">
        <div class="mypage-content">
        	<input type="hidden" id="user_id" name="user_id" value="${principal.user.user_id }">
            <div class="header">
                <h1>My Account</h1>
            </div>
            <div class="header_in">
                <h3>INFORMATION</h3>
                <h3 class="header_i">*필수입력사항</h3>
            </div>
            <div class="item_tf">
                <input type="text" class="item_box" id="user_name" value="${principal.user.user_name }" placeholder="이름*" >
                <div class="item_msg">
                    <span class="msg_user_name_1">성함은 필수 입력사항입니다.</span>
                    <span class="msg_user_name_2">성함은 2~20자까지 입력 가능합니다.</span>
                </div>    
            </div>
            
            <div class="item_add">
                <input type="text" class="address_input_1" id="address_input_1" name="memberAddr1" readonly="readonly" value="${principal.user.user_zipcode }" placeholder="주소* (오른쪽의 '주소 찾기' 버튼을 이용하세요)">
                <button type="button" class="add_btn" onclick="execution_daum_address()">주소 찾기</button>
            </div>
            <div class="item_msg">
                <span class="msg_user_address">주소는 필수 입력사항입니다. 오른쪽의 '주소 찾기' 버튼을 이용하세요</span>
            </div>
            
            
            <div class="item_tf">
                <input type="text" class="address_input_2" id="address_input_2" name="memberAddr2" readonly="readonly" value="${principal.user.user_address1 }" placeholder="기본주소*" >
            </div>
            <div class="item_tf">
                <input type="text" class="address_input_3" id="address_input_3" name="memberAddr3" value="${principal.user.user_address2 }" placeholder="나머지주소(선택입력)" >
            </div>
        
            <div class="item_tel">
                <div class="item_tel_numberinput">
                   	<input type="tel" id="phone-number" value="${principal.user.user_tel }" placeholder="휴대전화번호* ('-' 제외)">
                    <button type="button" id="auth-req-button" class="add_btn">인증요청</button>
                </div>
                <div class="item_tel_authinput">
                   	<input type="tel" id="auth-number" disabled='disabled' placeholder="인증번호 입력">
                    <button type="button" id="auth-button" disabled='disabled' class="add_btn">인증확인</button>
                </div>
            </div>
            <div class="item_msg">
                <span class="msg_user_tel_1">전화번호는 필수 사항입니다. 전화번호를 입력하시어 인증을 거치십시오.</span>
                <span class="msg_user_tel_2">올바른 전화번호 형태가 아닙니다. '01012345678' 과 같이 숫자로만 11자 입력바랍니다.</span>
                <span class="msg_user_tel_3">인증을 거치지 않았습니다. '인증요청' 버튼을 클릭 후 받아온 인증번호로 인증을 거치십시오.</span>
                <span class="msg_user_tel_4">인증확인을 하지 않으셨습니다. 받아온 인증번호로 인증확인을 거치십시오.</span>
                <span class="msg_user_tel_5">잘못된 인증번호입니다. 빠른 시간 내에 다시 입력하거나, '인증요청' 버튼을 클릭하여 인증번호를 재발급 받으십시오.</span>
                <span class="msg_user_tel_6">인증이 완료되었습니다.</span>
            </div>
            <div>
                <button class="footer_b" type="button">저장하기</button>
                <button class="footer_b" type="button">취소</button>
                <button class="footer_b" type="button">회원탈퇴</button>
            </div>   
        </div>
    </div>
    <jsp:include page="../include/index_include/index_footer.jsp"/>
    <script type="text/javascript" src="js/auth/myaccount.js"></script>
</body>
</html>