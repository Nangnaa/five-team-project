  var IMP = window.IMP; // 생략 가능 */
  IMP.init("imp75078442"); // 예: imp00000000s
  // IMP.request_pay(param, callback) 결제창 호출
  function chargepay() {
  IMP.request_pay(
    {
      // param
      // param
      pg: "html5_inicis",
      pay_method: "card",
     // merchant_uid: "merchant_" + new Date().getTime(), // 주문번호
      //name: produtname,
      //amount: price, // 값
      //buyer_email: buyeremail, // session 값
      //buyer_name: buyername, // session 값
      //buyer_tel: buyertel, // session 값
      merchant_uid: "ORD20180131-0000011",
    	 name: "노르웨이 회전 의자",
     	 amount: 64900,
         buyer_email: "gildong@gmail.com",
         buyer_name: "홍길동",
         buyer_tel: "010-4242-4242"
    },
    (rsp) => {
      // callback
      if (rsp.success) {
        console.log("결제 성공");
        console.log(rsp);
        // 결제 성공 시 로직,
        successCharge(payreqDto);

      
      } else {
        console.log(rsp);
        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
      }
    }
  );
}

payment.onclick = () => {
	alert('on');
	IMP.request_pay();
}