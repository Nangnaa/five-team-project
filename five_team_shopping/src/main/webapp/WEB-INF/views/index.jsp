<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>teamFive Shoppingmall Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="css/index.css"/>
  <script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<!-- header include -->
<jsp:include page="include/index_include/index_header.jsp"></jsp:include>

<div class="container" style="margin: 50px auto;">
	<main>
		<!-- Swiper -->
		<div class="swiper mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="images/look2.jpg" alt="" />
				</div>
				<div class="swiper-slide">
					<img src="images/opensale.jpg" alt="" />
				</div>
				<div class="swiper-slide">Slide 3</div>
				<div class="swiper-slide">Slide 4</div>
				<div class="swiper-slide">Slide 5</div>
				<div class="swiper-slide">Slide 6</div>
				<div class="swiper-slide">Slide 7</div>
				<div class="swiper-slide">Slide 8</div>
				<div class="swiper-slide">Slide 9</div>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</main>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <div class="footer_title">5조 프로젝트</div>
  <div class="footer_box">
      <div class="footer_names">
      <div class="team_name">황성희</div>
      <div class="team_name">이청우</div>
      <div class="team_name">김예성</div>
      <div class="team_name">강동욱</div>
    </div>
    <div class="">문의사항✉ none@gmail.com</div>
  </div>
</div>
</body>
<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".mySwiper", {
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
</script>
</html>
