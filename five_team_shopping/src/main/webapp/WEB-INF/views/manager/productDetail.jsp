<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>teamFive Shoppingmall Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="css/index.css"/>
  <link rel="stylesheet" href="css/manager/manager.css"/>

 <!--bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!--google font-->
  <link rel="preconnect" href="https://fonts.googleapis.com"/>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
  <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet"/>
  
</head>
<body>
  <!--header start-->
<div class="jumbotron text-center" style="margin-bottom:0; background-color: aliceblue;">
  <div class="home_info">
    <div class="my_ul">
      <a href="#"><i class="fas fa-user-cog"></i><span>MANAGER</span></a>
      <a href="/logout"><i class="fas fa-sign-out-alt"></i></a>
    </div>
  </div>
  <h1>My Shopping mall</h1>
</div>

<nav class="navbar navbar-expand-sm navbar-dark" style="background-color: #99d2fc;">
  <!-- <a class="navbar-brand" href="#"><i class="fas fa-home"></i></a> -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link"  href="/manager">상품 리스트</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">상품 등록</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">회원 관리</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">판매 현황</a>
      </li>
    </ul>
  </div> 
   <!--header end-->
  <form class="form-inline">
    <input class="form-control mr-sm-2" id="search" type="search" placeholder="검색어를 입력해주세요." aria-label="Search">
    <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
  </form> 
</nav>

<div class="container" style="margin:50px auto;">
    <main>
        <div class="img-part">
            <img src="/images/${productEntity.category}_list/${productEntity.productImg}" alt="상세이미지">
        </div>
        <div class="info-part">
            <h4>${productEntity.productName}</h4>
            <hr class="bold_hr"/>
            <fieldset>
                <legend class="hid">제품 정보</legend>
                <div class="product_view_info">
                  <div class="product_info_head">
                    <p class="tit">제품 정보</p>
                  </div>
                  <div class="product_info_content">
                   
                  </div>
                   <hr />
                   <div class="product_price_box">
                     <h6>가격 : ${productEntity.price}</h6>
                   </div>
                    <div class="edit-btn-box">
                      <div class="edit-btn">
                        <a href="/manager/product/${productEntity.id}">수정</a>
                      </div>
                      <div class="edit-btn">
                        <form action="/manager/deleteProduct/${productEntity.id}" method="post">
                        <button>삭제</button>
                        </form>
                      </div>
                    </div>
                  </div>
                </fieldset>
        </div>
    </main>
</div>

<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
</html>
