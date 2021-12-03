<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="../include/index_include/manager_header.jsp"/>

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

</div>

<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>

