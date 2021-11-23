<!DOCTYPE html>
<html lang="en">
<head>
  <title>teamFive Shoppingmall Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="css/index.css"/>
  <link rel="stylesheet" href="css/member/signin.css"/>

  <!--bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!--google font-->
  <link rel="preconnect" href="https://fonts.googleapis.com"/>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
  <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet"/>

  <style>
  /* .fakeimg {
    height: 200px;
    background: #aaa;
  } */
  </style>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0; background-color: aliceblue;">
  <div class="home_info">
    <div class="my_ul">
      <a class="blogin_btn" id="login_btn" href="/signin"><i class="fas fa-user"></i></a>
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
        <a class="nav-link"  href="#">OUTER</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">TOP</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">PANTS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">SKIRT</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">JEWERLY</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="#">BAG / SHOE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">PRODUCT REVIEW</a>
      </li>
    </ul>
  </div> 
  
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="검색어를 입력해주세요." aria-label="Search">
    <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
  </form> 
</nav>

<div class="container" style="margin:50px auto;">
    <main>
        <div class="login_wrap">
            <div class="title">LOGIN</div>
            <div class="login_btn_box">
                <button type="button" class="login_btn" style="background-color: #3c64ff;">google 로그인</button>
                <button type="button" class="login_btn" style="background-color: #fae100;">kakao 로그인</button>
                <button type="button" class="login_btn" style="background-color: #19ce60;">naver 로그인</button>
            </div>
        </div>
    </main>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer</p>
</div>
</body>
<script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
</html>
