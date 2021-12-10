<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/payment/cart.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../include/index_include/index_header.jsp"/>
	<main>
    <div class="container">
        <div class="title">
            SHOPPING BAG <div class="title_quantity">(${cartCount })</div>
        </div>
            <div class="middlespace">
                <div class="middlespace_left">
                    <hr>
                    <c:forEach var="cartSales" items="${cartList }">
	                    <div class="middlespace_left_content">
		
	                        <div class="middlespace_left_content_west">
	                            <div class="middlespace_left_checkbox">
	                                <input type="checkbox" name="xxx" value="yyy" checked>
	                            </div>
	                            <div class="middlespace_left_photo">
	                            	<img src="/images/${cartSales.category}_list/${cartSales.salesImg}" width="100" height="120">
	                            </div>
	                            <div class="middlespace_left_info">
	                                <div class="middlespace_left_info_">${cartSales.sales_title }</div>
	                                <div class="middlespace_left_info_price">${cartSales.sales_price }원</div>
	                                <div class="middlespace_left_info_option">
	                                    <div>[색상:${cartSales.sales_color }]</div><div>[사이즈:${cartSales.sales_size }]</div>
	                                </div>
	                                <input type="hidden" id="seqnum" value="${cartSales.seqnum}">
	                                <div class="middlespace_left_info_quantitybutton">
	                                    <div class="quantity_button_number">${cartSales.sales_quantity }</div><div class="quantity_button_minus" onclick="execution_cart_minus(${cartSales.sales_quantity },${cartSales.cart_id})">-</div><div class="quantity_button_plus" onclick="execution_cart_plus(${cartSales.sales_quantity },${cartSales.cart_id})">+</div><div class="middlespace_left_info_optionmodify"></div>
	                                </div>
	                            </div>
	                        </div>
	                        
	                        <div class="middlespace_left_content_east">
	                            <div class="middlespace_left_deletebutton">
	                           		<a class="cart_deleteOne" onclick="execution_cart_deleteOne(${cartSales.cart_id})">삭제</a>
	                            </div>
	                        </div>
	                    </div>
                    </c:forEach>
                    <hr>
                </div>

                <div class="middlespace_right">
                    <hr>
                    <div class="middlespace_right_info">
                        <div class="salesprice">
                            <div>상품 합계금액</div><div class="total_price"></div>
                        </div>
                        <div class="deliveryprice">
                            <div>배송비</div><div>2500원</div>
                        </div>
                        <div class="totalprice">
                            <div><strong>총 주문합계</strong></div><div class="total_price_delivery"></div>
                        </div>
                    </div>
                    <hr>
                    <div class="middlespace_right_buttons">
                        <div class="button_allclear" onclick="execution_cart_deleteAll('${principal.user.user_id}')">
                            쇼핑백비우기
                        </div>
                        <div class="button_specificclear">
                            선택상품삭제
                        </div>
                        <div class="button_specificorder">
                            선택상품주문
                        </div>
                        <div class="button_allorder" onclick="location.href='/index'">
                            전체상품주문
                        </div>
                    </div>
                    <div>
                        <div><strong>쇼핑백 이용안내</strong><br></div>
                        <div class="info">쇼핑백에 담긴 상품은 30일동안 보관됩니다. 보관된 상품은 30일 이후에 삭제되오니 쇼핑백에서 삭제된 경우 다시 쇼핑백에 담아주시기 바랍니다.</div>
                    </div>
                </div>
            </div>
    	</div>
     </main>
    <jsp:include page="../include/index_include/index_footer.jsp"/>
    <script type="text/javascript" src="/js/payment/cart.js"></script>
</body>
</html>