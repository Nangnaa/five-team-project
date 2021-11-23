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
    <link rel="stylesheet" href="css/itemview.css">
    <link rel="stylesheet" href="css/notice.css">
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
    <div class="jumbotron text-center" style="margin-bottom:0; background-color: aliceblue;">
        <div class="home_info">
          <div class="my_ul">
            <a href="#"><i class="fas fa-shopping-basket"></i></a>
            <a href="#"><i class="fas fa-user-circle"></i></a>
            <a href="#"><i class="fas fa-sign-out-alt"></i></a>
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
              <a class="nav-link" href="#">OUTER</a>
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

    <div class="container">
        <main>
            <div class="inner_container">
                <div class="notice_header">
                  <ul>
                    <li class="notice_num">번호</li>
                    <li class="notice_title">제목</li>
                    <li class="notice_writer">작성자</li>
                    <li class="notice_date">작성일</li>
                    <li class="notice_count">조회수</li>
                  </ul>
                </div>

                <div class="notice_main">
                  <c:forEach var="notice" items="${noticeList }">
                    <a href="notice-dtl?notice_code=${notice.notice_code }">
                          <ul>
                              <li class="notice_num">${notice.notice_code }</li>
                              <li class="notice_title">${notice.notice_title }</li>
                              <li class="notice_writer">${notice.notice_writer }</li>
                              <li class="notice_date">${notice.notice_date }</li>
                              <li class="notice_count">${notice.notice_count }</li>
                          </ul>
                      </a>
                  </c:forEach>
                </div>

                <div class="notice_footer">
                  <c:if test="${not empty login_user }">
                    <div class="notice_insert_div">
                      <button type="button" class="notice_insert_button" onclick="location.href='notice-insert'">글쓰기</button>
                    </div>
                  </c:if>
                  <ul>
                    <a href="notice?pageNumber=${noticeBean.startPage - 1 eq 0 ? 1 : noticeBean.pageNumber - 1 }"><li><i class="fas fa-arrow-circle-left"></i></li></a>
                    
                    <c:forEach var="i" begin="${noticeBean.startPage }" end="${noticeBean.endPage }">
                      <a href="notice?pageNumber=${i }"><li>${i }</li></a>
                    </c:forEach>
                    
                    <a href="notice?pageNumber=${noticeBean.totalPage eq noticeBean.pageNumber ? noticeBean.totalPage : noticeBean.pageNumber + 1 }"><li><i class="fas fa-arrow-circle-right"></i></li></a>
                  </ul>
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