<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
   <!-- dfhk --> 
</nav>

<div class="container" style="margin:50px auto;">

  <div class="sub_tit_wrap">
    <div class="sub_tit_inner">
      <h2>상품 리스트</h2>
    </div>
  </div><!--sub_tit_wrap end-->
  <div class="m_main_content">
    <div class="m_main_subtit">
      <div class="m_main_subtit_txt">OUTER</div>
    </div>

<!-- c:forEach 사용하기 -->

    <div class="d-flex">
      <div class="p-2 flex-fill">
        <a href="/manager/detail/${product.id}" class="card" style="width: 18rem;">
          <img class="card-img-top" src="images/pic1.jpg" alt="Card image cap">
          <!-- <img src="/images/${product.category}_list/${product.productImg}" alt=""/>-->
          <div class="card-body">
            <h5 class="card-title">${product.productName}</h5>
            <p class="card-tdivext">${product.producPrice}</p>
          </div>
        </a>
        <div class="p-2 flex-fill">
          <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="images/pic1.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">제품 이름</h5>
              <p class="card-text">35000원</p>
            </div>
          </div>
        </div>

        
      </div>

     
    </div>

  </div>


</>

<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
</html>
