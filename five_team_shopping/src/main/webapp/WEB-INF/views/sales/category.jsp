<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>teamFive Shoppingmall Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/css/index.css">
  <link rel="stylesheet" href="/css/sales/category.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet">
  <style>
  /* .fakeimg {
    height: 200px;
    background: #aaa;
  } */
  </style>
</head>
<body>
<jsp:include page="../include/index_include/index_header.jsp"/>
<div class="container" style="margin:50px auto;">
  <main>
    <div class="category">${fn:toUpperCase(salesCategory) }</div>
    <div class="d-flex">
    
    <c:forEach var="sales" items="${salesList }">
      <div class="p-2 flex-fill">
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="images/pic1.jpg" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title">${sales.sales_title }</h5>
            <p class="card-text">${sales.sales_price }원</p>
          </div>
        </div>
      </div>
     </c:forEach>
     
    </div>
  </main>
</div>
<jsp:include page="../include/index_include/index_footer.jsp"/>

</body>
<script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
</html>
