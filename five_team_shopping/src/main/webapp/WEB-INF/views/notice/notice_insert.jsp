<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/notice_insert.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet">
    <title>상품후기</title>
</head>
<body>
    <jsp:include page="../include/index_include/index_header.jsp"></jsp:include>
	    <div class="container">
	        <main>
	            <div class="notice_insert_header">리뷰 작성</div>
	
	            <div class="notice_insert_main">
	                <form id="insert_form">
	                    <ul class="ni_title_ul">
	                        <li class="ni_title_li">제목</li>
	                        <li><input type="text" class="notice_title" name="notice_title"></li>
	                    </ul>
	                    <ul class="ni_info_ul">
	                        <li>작성자</li>
	                        <input type="hidden" class="notice_writer" name="notice_writer" value="${login_user.user_name }">
	                        <li>${login_user.user_name }</li>
	                        <li>작성일</li>
	                        <li><fmt:formatDate value="${now }" pattern="yyyy-MM-dd"/> </li>
	                    </ul>
	                    <ul class="ni_content_ul">
	                        <li>
	                            <textarea class="notice_content" name="notice_content"></textarea>
	                        </li>
	                    </ul>
						
						<div class="insert_btn">
		                    <button type="button" class="notice_submit">작성완료</button>
		                    <button type="reset" class="notice_reset">다시쓰기</button>
	                    </div>
	                </form>
	            </div>
	        </main>
	    </div>
	<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
    <script src="https://kit.fontawesome.com/b633b9875d.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/notice_insert.js"></script>
</body>
</html>