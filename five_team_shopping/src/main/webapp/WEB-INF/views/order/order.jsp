<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/index.css">
  <link rel="stylesheet" href="css/order.css">
  <link rel="stylesheet" href="css/style.css">
  
    <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
  


  <!--bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <!--google font-->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet" />

  <!--swiper slider-->
  <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
  <style>
    /* .fakeimg {
      height: 200px;
      background: #aaa;
    } */
  </style>
</head>

<body>

<form>

<jsp:include page="../include/index_include/index_header.jsp"></jsp:include>

  <div class="main">
  <div class="container">
    <h2 class="order_sheet">주문서 작성</h2>
    <p class="item_ifm">상품정보</p>
    <div class="item_sheet">
    <table>
      <tr>
        <td class="thumb"><img src="images/img.jpg" style="width: 150px;" alt=""></td>
        <td class="product">
          <strong class="productname">톰스 아가일 카라니트</strong>
          <div class="price">34,000원</div>
          <div class="option">[옵션:베이지]</div>
          <p class="quantity">QTY:1</p>
        </td>
      </tr>
    </table>
   </div>

   <div class="header_in">
      <p >주문정보 </p>
      <p class="required">*필수입력사항</p>
    </div>
    <div class="item_tf">
      <input type="text" class="item_box" id="user_name" value="buyername" placeholder="주문하시는분">
    </div>
    <div class="item_add">
      <input type="text" class="item_box_add" placeholder="주소">
      <button type="button" class="add_btn">우편번호</button>
    </div>
    <div class="item_tf">
      <input type="text" class="item_box" placeholder="기본주소">
    </div>
    <div class="item_tf">
      <input type="text" class="item_box" placeholder="나머지주소(선택입력가능)">
    </div>
    <div class="item_tel" value="buyertel">
      <select name="tel" id="tel">
        <option value="tel_010">010</option>
      </select>
      - <input type="tel" placeholder="휴대전화 입력">
      - <input type="tel">
    </div>
    <div class="item_email" value="buyeremail">
      <input type="email" class="ip_email" placeholder="이메일 입력">
      @ <input type="email" class="ip_email">
        &nbsp;&nbsp;<select name="email" class="email_box" >
        <option value="email_box">naver.com</option>
        <option value="email_box">google.com</option>
        <option value="email_box">hanmail.net</option>
      </select>
    </div>

    <div class="shopping_user">
    <div class="shopping_if">
      <h3>배송정보</h3>
      <h3 class="">*필수입력사항</h3>
    </div>
    <div class="order_new_if">
      <input type="radio" name="order_add" class="order_same">
      <label for="">주문자 정보와 동일</label>
      <input type="radio" name="order_add" class="order_new">
      <label for="">새로운 배송지</label>
      <button type="button" class="add_btn" >주소록 보기</button>
    </div>

    <div>
      <input type="text" class="item_box_add" placeholder="받으시는분">
    </div>
    <div class="addrr">
      <input type="text" class="add_num" placeholder="주소">
      <button type="button" class="add_btns">우편번호</button>
    </div>
    <div>
      <input type="text" class="item_box_add" placeholder="기본주소">
    </div>
    <div>
      <input type="text" class="item_box_add" placeholder="나머지주소">
    </div>
    <div class="item_tel">
      <select name="tel" id="tel">
        <option value="tel_010">010</option>
      </select>
      - <input type="tel" placeholder="휴대전화 입력">
      - <input type="tel">
    </div>
    <div class="text_area" >
    <textarea name="" id="text_area" cols="133" rows="4" placeholder="배송메시지"></textarea>
    </div>
    <p>결제수단</p>
    <div>
      <input type="text" placeholder="입급자명">
    </div>
    <div class="order_new_if">
      <input type="radio" name="" id="card_payment">
      <label for="">카드결제</label>
    </div>
    </div>

    <!-- 상품결제 확인내역 -->
    <div class="total_sheet">
      <div>
        <div class="price_name">상품금액</div>
        <div class="box">34,000원</div>
      </div>
      <div>
        <div class="price_name">배송비</div>
        <span>+</span>
        <span id="total_price_id">0원</span>
      </div>
      <!-- <div class="option" >
        <div class="price_name" >총 할인</ㅇ>
        <strong>-</strong>
        <strong class="sale_price">-</strong>
      </div> -->
      <div>
        <div class="price_name">최종 결제 금액</div>
        <div class="box">
          <strong>=</strong>
          <strong class="total_order_sale">121,600</strong>원
        </div>
        
      </div>
      <div class="check_order">
        <input type="checkbox">
        <label for="">결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
      </div>
      <button onclick="chargepay()"  class="payment">결제하기</button>
    </div>
  </div>
  </div>
</div>
    <jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
</form>
</body>
<script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script type="text/javascript" src="js/order.js"></script>

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