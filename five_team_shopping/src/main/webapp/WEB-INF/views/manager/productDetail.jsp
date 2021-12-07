<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../include/index_include/manager_header.jsp"/>

<div class="container" style="margin:50px auto;">
 <div class="sub_tit_wrap">
        <div class="sub_tit_inner">
        <h2>상세 정보</h2>
        </div>
    </div><!--sub_tit_wrap end-->
    <hr/>
    <main class="detail_main">
    
        <div class="img-part">
            <img src="/images/${salesEntity.category}_list/${salesEntity.salesImg}" alt="상세이미지">
        </div>
        <div class="info-part">
            <h4>${salesEntity.sales_title}</h4>
            <hr class="bold_hr"/>
            <fieldset>
                <legend class="hid">제품 정보</legend>
                <div class="product_view_info">
                  <div class="product_info_head">
                    <p class="tit">${salesEntity.sales_content}</p>
                  </div>
                  <div class="product_info_content">
                   
                  </div>
                   <hr />
                   <div class="product_price_box">
                     <h6>가격 : ${salesEntity.sales_price}</h6>
                   </div>
                    <div class="edit-btn-box">
                      <div class="edit-btn">
                        <a href="/manager/product/${salesEntity.sales_id}">수정</a>
                      </div>
                      <div class="delete-btn">
                        <form action="/manager/deleteProduct/${salesEntity.sales_id}" method="post">
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
