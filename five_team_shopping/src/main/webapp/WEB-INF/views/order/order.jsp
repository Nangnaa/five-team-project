<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/index.css">
  <link rel="stylesheet" href="css/payment/order.css">
  
    <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
  


  <!--bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <!--google font-->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet" />

  <!--swiper slider-->
  <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
  <style>
    /* .fakeimg {
      height: 200px;
      background: #aaa;
    } */
  </style>
</head>

<body>

<form>

<jsp:include page="../include/index_include/index_header.jsp"></jsp:include>

  <div class="main">
  <div class="container">
    <h2 class="order_sheet">주문서 작성</h2>
    <p class="item_ifm">상품정보</p>
    <div class="item_sheet">
    <table>
      <tr>
        <td class="thumb"><img src="images/img.jpg" style="width: 150px;" alt=""></td>
        <td class="product">
          <strong class="productname">톰스 아가일 카라니트</strong>
          <div class="price">34,000원</div>
          <div class="option">[옵션:베이지]</div>
          <p class="quantity">QTY:1</p>
        </td>
      </tr>
    </table>
   </div>

   <div class="header_in">
      <p >주문정보 </p>
      <p class="required">*필수입력사항</p>
    </div>
    <div class="item_tf">
      <input type="text" class="item_box" id="user_name" value="buyername" placeholder="주문하시는분">
    </div>
    <div class="item_add">
      <input type="text" class="item_box_add" placeholder="주소">
      <button type="button" class="add_btn">우편번호</button>
    </div>
    <div class="item_tf">
      <input type="text" class="item_box" placeholder="기본주소">
    </div>
    <div class="item_tf">
      <input type="text" class="item_box" placeholder="나머지주소(선택입력가능)">
    </div>
    <div class="item_tel" value="buyertel">
      <select name="tel" id="tel">
        <option value="tel_010">010</option>
      </select>
      - <input type="tel" placeholder="휴대전화 입력">
      - <input type="tel">
    </div>
    <div class="item_email" value="buyeremail">
      <input type="email" class="ip_email" placeholder="이메일 입력">
      @ <input type="email" class="ip_email">
        &nbsp;&nbsp;<select name="email" class="email_box" >
        <option value="email_box">naver.com</option>
        <option value="email_box">google.com</option>
        <option value="email_box">hanmail.net</option>
      </select>
    </div>

    <div class="shopping_user">
    <div class="shopping_if">
      <h3>배송정보</h3>
      <h3 class="">*필수입력사항</h3>
    </div>
    <div class="order_new_if">
      <input type="radio" name="order_add" class="order_same">
      <label for="">주문자 정보와 동일</label>
      <input type="radio" name="order_add" class="order_new">
      <label for="">새로운 배송지</label>
      <button type="button" class="add_btn" >주소록 보기</button>
    </div>

    <div>
      <input type="text" class="item_box_add" placeholder="받으시는분">
    </div>
    <div class="addrr">
            <input type="text" class="add_num" placeholder="주소">
            <button type="button" class="address_input_1" name="memberAddr1" readonly="readonly">우편번호</button>
          </div>
          <div>
            <input type="text" id="main_add" class="address_input_2" name="memberAddr2" readonly="readonly" placeholder="기본주소">
          </div>
          <div>
            <input type="text" id="sub_add" class="address_input_3" name="memberAddr2" readonly="readonly" placeholder="나머지주소">
          </div>
    <div class="item_tel">
      <select name="tel" id="tel">
        <option value="tel_010">010</option>
      </select>
      - <input type="tel" placeholder="휴대전화 입력">
      - <input type="tel">
    </div>
    <div class="text_area" >
    <textarea name="" id="text_area" cols="133" rows="4" placeholder="배송메시지"></textarea>
    </div>
    <p>결제수단</p>
    <div>
      <input type="text" placeholder="입급자명">
    </div>
    <div class="order_new_if">
      <input type="radio" name="" id="card_payment">
      <label for="">카드결제</label>
    </div>
    </div>

    <!-- 상품결제 확인내역 -->
    <div class="total_sheet">
      <div>
        <div class="price_name">상품금액</div>
        <div class="box">34,000원</div>
      </div>
      <div>
        <div class="price_name">배송비</div>
        <span>+</span>
        <span id="total_price_id">0원</span>
      </div>
      <!-- <div class="option" >
        <div class="price_name" >총 할인</ㅇ>
        <strong>-</strong>
        <strong class="sale_price">-</strong>
      </div> -->
      <div>
        <div class="price_name">최종 결제 금액</div>
        <div class="box">
          <strong>=</strong>
          <strong class="total_order_sale">121,600</strong>원
        </div>
        
      </div>
      <div class="check_order">
        <input type="checkbox">
        <label for="">결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
      </div>
      <button onclick="chargepay()"  class="payment">결제하기</button>
    </div>
  </div>
  </div>
</div>
    <jsp:include page="../include/index_include/index_footer.jsp"></jsp:include>
</form>
</body>
<script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script type="text/javascript" src="js/order.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".mySwiper", {
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
</script>

<script>
const itembox = documnet.querySelectorAll(".item_box");
const order_payment = documnet.querySelector(".payment");
const address_input_1 = document.querySelector(".address_input_1");
const address_input_2 = document.querySelector(".address_input_2");


    	/* 다음 주소 연동 */
    	function execution_daum_address(){
    		new daum.Postcode({
    	        oncomplete: function(data) {
    	        	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        addr += extraAddr;
                    
                    } else {
                    	addr += ' ';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    /*
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    */
                    $(".address_input_1").val(data.zonecode);
                    //$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
                    $(".address_input_2").val(addr);
                    //$("[name=memberAddr2]").val(addr);            // 대체가능
                    
                    // 커서를 상세주소 필드로 이동한다.
                    /*
                    document.getElementById("sample6_detailAddress").focus();
                    */
                    $(".address_input_3").attr("readonly",false);
                    $(".address_input_3").focus();
    	        }
    	    }).onclick();   
    	}

		executeButtons[0].onclick = () => { // 저장하기 버튼
    		const user_id = document.querySelector('#user_id');
    	
    		const user_name = document.querySelector('#user_name');
    		const address_input_1 = document.querySelector('#address_input_1');
    		const address_input_2 = document.querySelector('#address_input_2');
    		const address_input_3 = document.querySelector('#address_input_3');
    		const phone_number = document.querySelector('#phone-number');
    		let myaccountObj = {
    				"user_name":user_name.value,
    				"user_zipcode":address_input_1.value,
    				"user_address1":address_input_2.value,
    				"user_address2":address_input_3.value,
    				"user_tel":phone_number.value
    		}
    		if (confirm("회원정보를 갱신합니다.")) {
    			$.ajax({
        			type:"put",
        			url:"/myaccountupdate/" + user_id.value,
        			data: JSON.stringify(myaccountObj),
        			contentType:"application/JSON;charset=UTF-8",
        			dataType:"text",
        			success: function(data) {
        				if (data == 1) {
        					alert("회원정보를 갱신하였습니다.");
        					location.href='/index';
        				} else {
        					alert("갱신 진행중 오류가 발생하였습니다.");
        					location.href='/myaccount';
        				}
        			},
        			error: function() {
        				alert("알 수 없는 오류 발생");
        			}
        		})
    		}
    	}
		
		//기본 주문금액 계산
		function fn_allPrice(){
			
			var array1 = document.getElementsByName("goods_sell_price");
			var array2 = document.getElementsByName("option");
			var array3 = document.getElementsByName("ORDER_DETAIL_PRICE");
			
			var len = array2.length;
			var hap = 0;
			for (var i=0; i<len; i++){
				var sell = array1[i].value;
				var amt = array2[i].value;
				var pri = Number(sell)*Number(amt); //각 상품별 주문금액
				hap = Number(hap)+Number(pri); //주문금액 총합 구하기
				array3[i].value = pri;	
			}
			var fee = document.getElementById("ORDER_FEE").value;
			pay = Number(hap)+Number(fee);
			
			document.getElementById("ORDER_PRICE").value = hap; //총주문금액
			document.getElementById("ORDER_TOTAL_PRICE").value = pay; //최종결제금액			
		}
		//주문자정보와 동일
		function fn_chkinfo(){
			var chk = document.getElementById("chkinfo").checked;
			if(chk==true){
				document.getElementById("ORDER_NAME").value = "${map.MEMBER_NAME}";
				document.getElementById("ORDER_tel_1").value = "${map.user_tel_1}";
				document.getElementById("ORDER_tel_2").value = "${map.user_tel_2}";
				document.getElementById("ORDER_ADDR1").value = "${map.MEMBER_ADDR1}";
				document.getElementById("ORDER_ADDR2").value = "${map.MEMBER_ADDR2}";
			}else if(chk==false){
				document.getElementById("ORDER_tel_1").value 
				document.getElementById("ORDER_tel_2").value
				document.getElementById("ORDER_ADDR1").value
				document.getElementById("ORDER_ADDR2").value 
			}
		}
		
		//주문완료
		function fn_order_pay(){
			
				var f = document.orderWrite;
				
		 		if( f.ORDER_NAME.value=="" ){
		 			alert("주문자 이름을 입력해주세요.");
		 			f.ORDER_NAME.focus();
		 			return false;
		 		}
		 		if( f.ORDER_tel_1.value==""){
		 			alert("전화번호를 입력해주세요.");
		 			f.ORDER_tel_1.focus(); //커서자동클릭
		 			return false;
		 		}
		 		if( f.ORDER_tel_2.value==""){
		 			alert("전화번호를 입력해주세요.");
		 			f.ORDER_tel_2.focus(); //커서자동클릭
		 			return false;
		 		}
		 		if( f.ORDER_ZIPCODE.value=="" || f.ORDER_add_1.value=="" || f.ORDER_add_2.value==""){
		 			alert("주소를 정확히 입력해주세요.");
		 			return false;
		 		}
		 		if( document.getElementById("OPTION1").checked==false && document.getElementById("OPTION2").checked==false){
		 			alert("결제방법을 선택해주세요.");
		 			return false;
		 		}
				f.submit();
		}

		
		 IMP.init('imp75078442');
		 IMP.request_pay({
		     pg : 'inicis', // version 1.1.0부터 지원.
		     pay_method : 'card',
		     merchant_uid : '11111',
		     name : '주문명:결제테스트',
		     amount : 14000, //판매 가격
		     buyer_email : 'iamport@siot.do',
		     buyer_name : '구매자이름',
		     buyer_tel : '010-1234-5678',
		     buyer_addr : '서울특별시 강남구 삼성동',
		     buyer_postcode : '123-456'
		 }, function(rsp) {
		     if ( rsp.success ) {
		         var msg = '결제가 완료되었습니다.';
		         msg += '고유ID : ' + rsp.imp_uid;
		         msg += '상점 거래ID : ' + rsp.merchant_uid;
		         msg += '결제 금액 : ' + rsp.paid_amount;
		         msg += '카드 승인번호 : ' + rsp.apply_num;
		     } else {
		         var msg = '결제에 실패하였습니다.';
		         msg += '에러내용 : ' + rsp.error_msg;
		     }
		     onclick(msg);
		 });


payment.onclick = () => {
    index(); //임의설정
}
</script>

</html>