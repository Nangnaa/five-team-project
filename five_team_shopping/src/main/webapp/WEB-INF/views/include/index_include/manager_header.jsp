<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>teamFive Shoppingmall Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="/css/index.css"/>
  <link rel="stylesheet" href="/css/manager/manager.css"/>

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
      <a href="#"><i class="fas fa-user-cog"></i></a>
      <a href="/manager/logout"><i class="fas fa-sign-out-alt"></i></a>
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
        <a class="nav-link" href="/manager/upload-product">상품 등록</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/manager/userlist">회원 관리</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/manager/sales-status">판매 현황</a>
      </li>
    </ul>
  </div> 
  </nav>
   <!--header end-->