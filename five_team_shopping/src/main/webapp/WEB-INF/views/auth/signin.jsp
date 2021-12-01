<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>teamFive Shoppingmall Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="css/index.css"/>
  <link rel="stylesheet" href="css/auth/signin.css"/>
  <script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
 <!-- header include -->
<jsp:include page="../include/index_include/index_header.jsp"></jsp:include>

<div class="container" style="margin:50px auto;">
    <main>
        <div class="login_wrap">
            <div class="title">LOGIN</div>
            <div class="login_btn_box">
                <button type="button" class="login_btn" style="background-color: #3c64ff;">google 로그인</button>
                <button type="button" class="login_btn" style="background-color: #fae100;">kakao 로그인</button>
                <button type="button" class="login_btn" style="background-color: #19ce60;">naver 로그인</button>
                <div class="managerlogin_btn_box">
                	<a class="managerlogin_btn" href="auth/manager/signin">manager 로그인</a>
                </div>
              </div>
        </div>
    </main>
</div>

<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>

</body>

</html>
