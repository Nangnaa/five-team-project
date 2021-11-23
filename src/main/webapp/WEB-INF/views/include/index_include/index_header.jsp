<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <!--bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!--google font-->
  <link rel="preconnect" href="https://fonts.googleapis.com"/>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
  <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet"/>
  
  <!--swiper slider-->
  <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
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
  <!-- 
  <c:choose>
  	<c:when test="${empty user_id }">
  		<div class="my_ul">
      		<a class="blogin_btn" id="login_btn" href="/signin"><i class="fas fa-user"></i></a>
    	</div>
  	</c:when>
  	<c:otherwise>
  		<div class="my_ul">
	      <a href="#"><i class="fas fa-shopping-basket"></i></a>
	      <a href="#"><i class="fas fa-user-circle"></i></a>
	      <a href="#"><i class="fas fa-sign-out-alt"></i></a>
	    </div>
  	</c:otherwise>
  </c:choose>
     -->
  </div>
  <h1><a href="/index" class="logo">My Shopping mall</a></h1>
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
    </ul>
  </div> 
  
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="검색어를 입력해주세요." aria-label="Search">
    <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
  </form> 
</nav>