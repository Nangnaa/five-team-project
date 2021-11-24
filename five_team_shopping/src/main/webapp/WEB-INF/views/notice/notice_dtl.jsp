<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/notice_dtl.css">
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
            <div class="notice_dtl_main">
            	<input type="hidden" id="notice_code" name="notice_code" value="${notice.notice_code }">
            	
                <ul class="nd_header_ul">
                    <li>${notice.notice_title } 제목</li>
                </ul>
                <ul class="nd_info_ul">
                    <li>작성자</li>
                    <li>${notice.notice_writer }</li>
                    <li>작성일</li>
                    <li>${notice.notice_date }</li>
                    <li>조회수</li>
                    <li>${notice.notice_count }</li>
                </ul>
                <ul class="nd_content_ul">
                    <li>
                        <pre>${notice.notice_content }</pre>
                    </li>
                </ul>
            </div>
            <div class="notice_dtl_footer">
                <div class="nd_footer_buttons">
                    <button type="button" class="notice_list_button">목록</button>
                    
                    <c:set var="admin_id" value="admin"></c:set>
	            	<c:set var="admin_user" value="${login_user.user_email }"></c:set>
	            	
                    <c:if test="${admin_id eq admin_user or notice.notice_writer eq 	login_user.user_name }">
                        <button type="button" class="notice_update_button">수정</button>
                        <button type="button" class="notice_delete_button">삭제</button>
                    </c:if>
                </div>
                <div class="nd_footer_pre_next">
                	<ul class="nd_footer_next">
                        <li class="next_title">다음 글</li>
                        <c:if test="${notice.nextNotice_code ne 0}">
                        	<a href="notice-dtl?notice_code=${notice.nextNotice_code }"><li>${notice.nextNotice_title }</li></a>
                        </c:if>
                    </ul>
                    <ul class="nd_footer_pre">
                        <li class="pre_title">이전 글</li>
                        <c:if test="${notice.preNotice_code ne 0}">
                        	<a href="notice-dtl?notice_code=${notice.preNotice_code }"><li>${notice.preNotice_title }</li></a>
                    	</c:if>
                    </ul>
                </div>
            </div>
        </main>
    </div>

    <jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>

    </body>
    <script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
</html>