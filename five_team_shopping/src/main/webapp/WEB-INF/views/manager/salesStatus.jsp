<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/index_include/manager_header.jsp"/>

<main>
    <div class="container" style="margin:50px auto;">
        <div class="manageUser-page-box">
            <div class="sub_tit_wrap">
                <div class="sub_tit_inner">
                <h2>판매현황</h2>
                </div>
            </div><!--sub_tit_wrap end-->
            <hr/>

            <div class="m_main_content">
                <div class="top_box">
                    <div class="category-area-box">
                        <div class="category-box">
                        <form onsubmit="categorySearch()">
                            <select id="category" class="category-select">
                                <option value="">-----카테고리-----</option>
                                <option value="outer">OUTER</option>
                                <option value="top">TOP</option>
                                <option value="pants">PANTS</option>
                                <option value="skirt">SKIRT</option>
                                <option value="jewerly">JEWERLY</option>
                                <option value="bagandshoes">BAG / SHOES</option>
                            </select>
                            <div class="search-btn-box">
                                <button name="search_btn" type="submit" value="검색"><i class="fas fa-search"></i></button>
                            </div>
                        </form>
                        </div> <!-- end cateogry-box-->
                    </div> <!-- end search-area-box-->

                    <div class="search-area-box">
                        <form onsubmit="saledItemByName()">
                        <div class="search-input-box">
                            <input id="name" type="text" name="name" placeholder="검색어를 입력해주세요." />
                        </div>
                        <div class="search-btn-box">
                            <button name="search_btn" type="submit" value="검색"><i class="fas fa-search"></i></button>
                        </div>
                        </form>
                    </div> <!-- end search-area-box-->
                </div>
                
                <div class="user-list-area-box">
                    <table class="userlist-tb">
                        <colgroup>
                            <col width="10%">
                            
                            <col width="20%">
                            <col width="30%">
                            <col width="20%">
                            <col width="*">
                        </colgroup>
                        <c:choose>
                            <c:when test="${!empty saledItemsEntity}">
            
                                <thead>
                                    <tr>
                                        <th scope="col">No.</th>
                                        <th scope="col">구매자</th>
                                        <th scope="col">상품명</th>
                                        <th scope="col">구매 날짜</th>
                                        <th scope="col">상품 가격</th>
                                        <th scope="col">상품 수량</th>
                                    </tr>
                                </thead>
                            <tbody id="notice">
                                <c:forEach var="saleditems" items="${saledItemsEntity.content}">
                                <tr>     
                                    <td>${saleditems.id}</td>     
                                    <td>${saleditems.user.name}</td>
                                    <td class="left"><a>${saleditems.product.productName}</a></td>     
                                    <td>${saleditems.date}</td>     
                                    <td>${saleditems.product.price}</td> 
                                    <td>1</td>
                                </tr> 
                                </c:forEach>
                                
                                <tr class="last_tr">      
                                    <td>No.</td>     
                                    <td>구매자</td> 
                                    <td>상품명</td>     
                                    <td>구매일</td>     
                                    <td>총 액 : ${totalPrice}</td> 
                                    <td>총 판매수량 : ${amount}</td>
                                </tr>
            
                        
                            </c:when>
                        <c:otherwise>
                            <thead>
                            <tr>
                                <th scope="col">No.</th>
                                <th scope="col">구매자</th>
                                <th scope="col">상품명</th>
                                <th scope="col">구매 날짜</th>
                                <th scope="col">상품 가격</th>
                                <th scope="col">상품 수량</th>
                            </tr>
                            </thead>
                            <tbody id="notice">
                                <tr class="last_tr">      
                                    <td>No.</td>     
                                    <td>구매자</td> 
                                    <td>상품명</td>     
                                    <td>구매일</td>     
                                    <td>총 액 : 0</td> 
                                    <td>총 판매수량 : 0</td>
                                </tr>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                    </table>
                </div>  <!-- end user-list-area-box-->

            </div>

            <div class="pagination-box">
                <ul class="pagination">
                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                  </ul>
                  
            </div>

        </div>
    </div>
</main>
<!-- footer include -->
<jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
<script src="/js/search.js"></script>
</html>