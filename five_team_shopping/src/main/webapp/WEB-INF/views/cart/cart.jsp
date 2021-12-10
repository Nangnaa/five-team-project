<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/payment/cart.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
</head>
<body>
    <div class="container">
        <header>
            <div class="title">
                SHOPPING BAG <div class="title_quantity">(1)</div>
            </div>
            <c:when test="${map.count == 0 }">
        장바구니가 비었습니다.
        </c:when>
        </header>
        <main>
        
            <div class="middlespace">

                <div class="middlespace_left">
                    <hr>
                    <div class="middlespace_left_content">

                        <div class="middlespace_left_content_west">
                            <div class="middlespace_left_checkbox">
                                <input type="checkbox" name="xxx" value="yyy" checked>
                            </div>
                            <div class="middlespace_left_photo">
                                <img src="" width="100"; height="120">
                            </div>
                            <div class="middlespace_left_info">
                            <c:forEach  items="${map.list}">
                                <div class="middlespace_left_info_">${product_name }</div>
                                <div class="middlespace_left_info_price"><fmt:formatNumber value="${product_price}" pattern="#,###,###" /></div>
                                <div class="middlespace_left_info_option">
                                    <div>${option}</div><div class="middlespace_left_info_optionmodify">변경</div>
                                </div>

                                <div class="middlespace_left_info_quantitybutton">
                                    <div class="quantity_button_number">
                                    <c:forEach begin:"1" end="10" var="i">
                                    <option value="${i}">${i}</option>
                                    </c:forEach>
                                    </div><div class="quantity_button_minus">-</div><div class="quantity_button_plus">+</div>
                                </div>
                            </div>
                        </div>
					
                        
                        <div class="middlespace_left_content_east">
                            <div class="middlespace_left_deletebutton">
                                <a href="${path}/cart/cart/delete.do?cartId=${row.cartId}">삭제</a>
                            </div>
                        </div>

                    </div>
                    <hr>
                </div>

                <div class="middlespace_right">
                    <hr>
                    <div class="middlespace_right_info">
                        <div class="salesprice">
                            <div>상품 합계금액</div><div>
                            <fmt:formatNumber value="${sumMoney}" pattern="#,###,###" />
                            </div>
                        </div>
                        <div class="deliveryprice">
                            <div>배송비</div><div>${delivery_pay }</div>
                        </div>
                        <div class="totalprice">
                            <div><strong>전체금액</strong></div><div><fmt:formatNumber value="${AllSum }" pattern="#,###,###" /></div>
                        </div>
                    </div>
                    <hr>
                    <div class="middlespace_right_buttons">
                        <div class="button_allclear">
                            	<input type="button" name="all_basket_delete" value="쇼핑백 비우기" onclick="fn_allDelete()">
                        </div>
                        <div class="button_specificclear">
                            <input type="button" name="basket_delete" value="삭제" onclick="fn_delete(${status.index})">
                        </div>
                        <div class="button_specificorder">
                            <input type="button" name="select_order" value="선택상품주문" onclick="fn_select_order()">
                        </div>
                        <div class="button_allorder">
                           <input type="button" name="all_order" value="전체주문" onclick="fn_all_order()">
                        </div>
                    </div>
              
                </div>
            </div>
        </main>
        <footer>

        </footer>
        
    </div>
    <script type="text/javascript">
//상품선택
function fn_allchk(){
	
	var chk = document.getElementById("allchk").checked; //값: true,false
	var arraychk = document.getElementsByName("chk"); //basket_no
	var len = arraychk.length;
		for(var i=0; i<len; i++){
			arraychk[i].checked = chk; //chk가 true면 arraychk도 true
		}
}
function fn_amount(index){ //장바구니 상품수량 변경
	var array8 = document.getElementsByName("goods_att_amount"); //재고수량
	var array1 = document.getElementsByName("basket_goods_amount"); //수량
	var array4 = document.getElementsByName("chk");
	var att = Number(array8[index].value); 
	var amount = Number(array1[index].value);
	var basket_no = array4[index].value;
	var result = (amount<=att);
	
	if(amount=!null && amount>0){
		if(result==true){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/basket/basketModify.do' />");
			comSubmit.addParam("BASKET_GOODS_AMOUNT", array1[index].value);
			comSubmit.addParam("BASKET_NO", basket_no);
			comSubmit.submit();
		}else{
			alert("재고가 부족합니다.");	
			return false;
		}
	}else{
		alert("유효한 숫자가 아닙니다.");	
		return false;
	}
}
//상품 삭제
function fn_delete(index){
	var array4 = document.getElementsByName("chk");
	var basket_no = array4[index].value;
	if(confirm("삭제하시겠습니까?")){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/basket/basketDelete.do' />");
		comSubmit.addParam("BASKET_NO", basket_no);
		comSubmit.submit();
	}
	return false;
}
//전체삭제
function fn_allDelete(){
	var array9 = document.getElementsByName("member_no");
	var member_no = array9[0].value;
	if(confirm("삭제하시겠습니까?")){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/basket/basketAllDelete.do' />");
		comSubmit.addParam("MEMBER_NO", member_no);
		comSubmit.submit();
	}
	return false;
}
function fn_allPrice(){ //전체주문금액구하기
	var array1 = document.getElementsByName("goods_sell_price"); //상품가격
	var array2 = document.getElementsByName("basket_goods_amount"); //장바구니 수량
	var array3 = document.getElementsByName("order_price"); //주문 가격
	var len = array2.length;
	var hap = 0;
	for (var i=0; i<len; i++){
		var sell = array1[i].value; 
		var amt = array2[i].value;
		var pri = Number(sell)*Number(amt); //각 상품별 주문금액
		hap = Number(hap)+Number(pri); //주문금액 총합 구하기
		array3[i].value = pri;
	}
	var fee = document.getElementById("order_fee").value;
	pay = Number(hap)+Number(fee);
	document.getElementById("all_price").value = hap; //상품금액
	document.getElementById("pay_price").value = pay; //상품금액+배송비
	document.getElementById("all_order_price").value = pay;
	
}
    </script>
</body>
</html>