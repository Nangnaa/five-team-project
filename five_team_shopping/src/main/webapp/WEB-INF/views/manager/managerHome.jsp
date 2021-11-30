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

 <!-- header include -->
<jsp:include page="../include/index_include/index_header.jsp"></jsp:include>

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


    <div class="d-flex">
      <div class="p-2 flex-fill">
        
        <div class="p-2 flex-fill">
          <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="images/pic1.jpg" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">제품 이름</h5>
              <p class="card-text">35000원</p>
            </div>
          </div>
        </div>

        <a href="/manager/detail/${product.id}" class="card" style="width: 18rem;">
          <img class="card-img-top" src="images/pic1.jpg" alt="Card image cap">
          <!-- <img src="/images/${product.category}_list/${product.productImg}" alt=""/>-->
          <div class="card-body">
            <h5 class="card-title">${product.productName}</h5>
            <p class="card-text">${product.producPrice}</p>
          </div>
        </a>
      </div>

     
    </div>

  </div>


</div>

<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>