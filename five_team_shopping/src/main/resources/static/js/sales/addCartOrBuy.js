const payButtons = document.querySelectorAll('.dtl_btn');
const user_id = document.querySelector('#reviewWrite_userid');
const quantity_button_number = document.querySelector('.quantity_button_number');
const quantity_button_minus = document.querySelector('.quantity_button_minus');
const quantity_button_plus = document.querySelector('.quantity_button_plus');
// currentCategory, review_salesid 변수는 review.js에 포함됨.

quantity_button_minus.onclick = () => {
	if (parseInt(quantity_button_number.innerText) > 1) {
		var currentNumber = parseInt(quantity_button_number.innerText);
		currentNumber -= 1;
		quantity_button_number.innerText = currentNumber;
	}
}

quantity_button_plus.onclick = () => {
	if (parseInt(quantity_button_number.innerText) < 5) {
		var currentNumber = parseInt(quantity_button_number.innerText);
		currentNumber += 1;
		quantity_button_number.innerText = currentNumber;
	} else {
		alert("5개를 초과할 수 없습니다.");
	}
}

payButtons[0].onclick = () => {
	const select_color = document.querySelector('#select_color');
	const select_size = document.querySelector('#select_size');
	const seqnum = document.querySelector('#seqnum');
	
	if (user_id == null) {
		alert("로그인 바랍니다.");
		location.href="/signin";
	} else if (select_color.options[select_color.selectedIndex].value == "blank" || select_size.options[select_size.selectedIndex].value == "blank" ) {
		alert("필수 옵션을 지정해 주세요.");
	} else {
			let cartObj = {
	    	"user_id":user_id.value,
	    	"sales_id":review_salesid.value,
	    	"sales_quantity":parseInt(quantity_button_number.innerText),
	    	"sales_color":select_color.options[select_color.selectedIndex].value,
	    	"sales_size":select_size.options[select_size.selectedIndex].value,
		    }
		    
		    $.ajax({
		    	type:"post",
		    	url:"/cart/writeCart",
		    	data: JSON.stringify(cartObj),
		    	contentType:"application/JSON;charset=UTF-8",
		    	dataType:"text",
		    	success: function(data) {
		    		if (data == 1) {
						if (confirm("장바구니에 항목을 추가하였습니다.\n장바구니를 확인해 보시겠습니까?")) {
							location.href="/cart/" + seqnum.value;
		    			}
		    		} else {
		    			alert("장바구니 추가중 오류가 발생하였습니다.");
		    			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
		    		}
		    	},
		    	error: function() {
		    		alert("알 수 없는 오류 발생");
		    	}
		    })
	}
}

payButtons[1].onclick = () => {
	
	if (user_id == null) {
		alert("로그인 바랍니다.");
		location.href="/signin";
	} else if (select_color.options[select_color.selectedIndex].value == "blank" || select_size.options[select_size.selectedIndex].value == "blank" ) {
		alert("필수 옵션을 지정해 주세요.");
	} else {
		location.href="/order/order";
	}
}