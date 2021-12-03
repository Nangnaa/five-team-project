<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../include/index_include/manager_header.jsp"/>

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
