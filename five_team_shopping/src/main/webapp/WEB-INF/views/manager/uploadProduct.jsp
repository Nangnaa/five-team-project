<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/index_include/manager_header.jsp"/>
<main>
    <div class="container" style="margin:50px auto;">
        <div class="manageUser-page-box">
            <div class="sub_tit_wrap">
                <div class="sub_tit_inner">
                <h2>상품등록</h2>
                </div>
            </div><!--sub_tit_wrap end-->
            <hr/>

            <div class="m_upload_content">
              <form action="/manager/upload" method="post" enctype="multipart/form-data">
                <div class="category-box">
                    <select name="category" class="category-select">
                        <option value="">--카테고리--</option>
                        <option value="outer">OUTER</option>
                        <option value="top">TOP</option>
                        <option value="pants">PANTS</option>
                        <option value="skirt">SKIRT</option>
                        <option value="jewerly">JEWERLY</option>
                        <option value="bagandshoes">BAG / SHOES</option>
                    </select>
                </div> <!-- end cateogry-box-->

                <div class="productUpload-part">
                <div class="productImageupload-box">
                  <div class="productImage-box">
                      <img src="/images/preview.png" id="img_section" style="width: 300px; height: 400px;">
                  </div> <!-- end productImage-->
  
                  <div class="imageupload-btn-box">
                      <div class="imageupload-btn">
                          <input type="file" name="productImage" id="upload_file" accept="image/*" required=true value="업로드">
                      </div> <!-- end imageupload-btn-->
                  </div> <!-- end imageupload-btn-box-->
              </div> <!-- end productImageupload-box-->

              <div class="productUpload-dtl-part">
              <div class="product-name-area-box">
                <div class="product-title-box">
                    <a>제품 이름</a>
                </div>
                <div class="product-name-input-box">
                    <input name="productName" type="text" name="productName" placeholder="제품 이름을 입력하세요." />
                </div>
                
                <div class="product-title-box">
                    <a>제품 가격</a>
                </div>
                <div class="product-name-input-box">
                    <input name="price" type="number" placeholder="상품 가격을 입력하세요" value="${productEntity.price}" />
                </div>
            </div> <!-- end product-name-area-box-->

            <div class="product-detail-area-box">
              <div class="product-title-box">
                  <a>제품 상세 설명</a>
              </div>
              <div class="product-content-box">
                  <textarea  name="productInfo" cols="60" rows="8" placeholder="제품 상세 설명을 입력해주세요."></textarea>
              </div>
          </div> <!-- end product-detail-area-box-->
        </div>
        </div>
          <div>
            <div class="savebtn-box">
                <a href="/manager">
                    <input type="submit" name="saveBtn" value="등록">
                </a>
            </div>
        </div>
              </form>
            </div>

            

        </div>
    </div>
</main>
<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>