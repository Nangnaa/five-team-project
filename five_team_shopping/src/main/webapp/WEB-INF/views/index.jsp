<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="css/index.css"/>
  <script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<!-- header include -->
<jsp:include page="include/index_include/index_header.jsp"></jsp:include>

<div class="container" style="margin:50px auto;">
  <main>
    <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="images/look2.jpg" alt=""/></div>
        <div class="swiper-slide"><img src="images/opensale.jpg" alt=""/></div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
  </main>
</div>

<!-- footer include -->
<jsp:include page="include/index_include/index_footer.jsp"></jsp:include>
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
