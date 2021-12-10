const middlespace_left_info_price = document.querySelectorAll('.middlespace_left_info_price');
const quantity_button_number = document.querySelectorAll('.quantity_button_number');
const total_price = document.querySelector('.total_price');
const total_price_delivery = document.querySelector('.total_price_delivery');
var totalprice = 0;

// 상품 합계금액 계산식
for (var i = 0; i<middlespace_left_info_price.length; i++) {
	totalprice += (parseInt(middlespace_left_info_price[i].innerText.slice(0,-1) * parseInt(quantity_button_number[i].innerText)));
}

total_price.innerHTML = totalprice + "원";
total_price_delivery.innerHTML = totalprice + 2500 + "원"; // 총 주문합계(상품 합계금액 + 배송비)

function execution_cart_deleteOne(cart_id){ // 특정상품 삭제
	const seqnum = document.querySelector('#seqnum');
	
	if (confirm("해당 상품을 장바구니에서 삭제합니다.")) {
    	$.ajax({
        	type:"delete",
        	url:"/cart/deletecart/cartid:" + cart_id,
        	dataType:"text",
        	success: function(data) {
        		if (data == 1) {
        			location.href="/cart/" + seqnum.value
        		} else {
        			alert("항목 삭제중 오류가 발생하였습니다.");
        			location.href="/cart/" + seqnum.value;
        		}
        	},
        	error: function() {
        		alert("알 수 없는 오류 발생");
        	}
       	})
   	}
}

function execution_cart_deleteAll(user_id){ // 장바구니 비우기
	const seqnum = document.querySelector('#seqnum');
	
	if (confirm("장바구니를 모두 비우시겠습니까?")) {
    	$.ajax({
        	type:"delete",
        	url:"/cart/deletecartall/userid:" + user_id,
        	dataType:"text",
        	success: function(data) {
        		if (data >= 1) {
        			location.href="/cart/" + seqnum.value;
        		} else {
        			alert("장바구니가 이미 비어있습니다.");
        			location.href="/cart/" + seqnum.value;
        		}
        	},
        	error: function() {
        		alert("알 수 없는 오류 발생");
        	}
       	})
   	}
}

function execution_cart_minus(quantity, cart_id) { // 특정상품 수량+1
	const seqnum = document.querySelector('#seqnum');
	if (quantity > 1) {
		$.ajax({
	        	type:"put",
	        	url:"/cart/cartoneminus/cartid:" + cart_id,
	        	dataType:"text",
	        	success: function(data) {
	        		if (data == 1) {
	        			location.href="/cart/" + seqnum.value;
	        		} else {
	        			alert("알 수 없는 오류 발생.");
	        			location.href="/cart/" + seqnum.value;
	        		}
	        	},
	        	error: function() {
	        		alert("알 수 없는 오류 발생");
	        	}
	       	})
	}
}
function execution_cart_plus(quantity, cart_id) { // 특정상품 수량-1
	const seqnum = document.querySelector('#seqnum');
	if (quantity < 5) {
		$.ajax({
        	type:"put",
        	url:"/cart/cartoneplus/cartid:" + cart_id,
        	dataType:"text",
        	success: function(data) {
        		if (data == 1) {
        			location.href="/cart/" + seqnum.value;
        		} else {
        			alert("알 수 없는 오류 발생.");
        			location.href="/cart/" + seqnum.value;
        		}
        	},
        	error: function() {
        		alert("알 수 없는 오류 발생");
        	}
       	})
	} else {
		alert("5개를 초과할 수 없습니다.");
	}
}