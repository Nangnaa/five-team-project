<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/notice_update.css">
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
	            <div class="notice_update_header">리뷰 업데이트</div>
	            <div class="notice_update_main">
	                <form action="notice-update" method="post">
	                	<input type="hidden" name="notice_code" value="${notice.notice_code }">
	                    <ul class="nu_title_ul">
	                        <li class="nu_title_li">제목</li>
	                        <li><input type="text" class="notice_title" name="notice_title" value="${notice.notice_title }"></li>
	                    </ul>
	                    <ul class="nu_info_ul">
	                        <li>작성자</li>
	                        <input type="hidden" class="notice_writer" name="notice_writer" value="${login_user.name }">
	                        <li>${login_user.name }</li>
	                        <li>작성일</li>
	                        <li>${notice.notice_date }</li>
	                    </ul>
	                    <ul class="nu_content_ul">
	                        <li>
	                            <textarea class="notice_content" name="notice_content">${notice.notice_content }</textarea>
	                        </li>
	                    </ul>
	                    
	                    <div class="update_btn">
		                    <button type="button" class="notice_submit">수정완료</button>
		                    <button type="reset" class="notice_reset">다시쓰기</button>
	                    </div>
	                  </form>
	            </div>
	        </main>
	    </div>
	<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
    <script src="https://kit.fontawesome.com/b633b9875d.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/notice_update.js"></script>
</body>
</html>