const authReqButton = document.querySelector("#auth-req-button");
    	const authButton = document.querySelector("#auth-button");
    	const user_name = document.querySelector("#user_name");
    	const address_input_1 = document.querySelector(".address_input_1");
    	const address_input_2 = document.querySelector(".address_input_2");
    	const phone_number = document.querySelector("#phone-number");
    	
    	// 갱신하기, 취소하기, 회원탈퇴 버튼들
    	const executeButtons = document.querySelectorAll(".footer_b");
    	
    	// 전화번호 인증 입력란 및 버튼
    	const auth_number = document.querySelector("#auth-number");
    	const auth_button = document.querySelector("#auth-button");
    	
    	// 오류 및 성공메세지
    	const msg_user_name_1 = document.querySelector(".msg_user_name_1");
    	const msg_user_name_2 = document.querySelector(".msg_user_name_2");
    	const msg_user_address = document.querySelector(".msg_user_address");
    	const msg_user_tel_1 = document.querySelector(".msg_user_tel_1");
    	const msg_user_tel_2 = document.querySelector(".msg_user_tel_2");
    	const msg_user_tel_3 = document.querySelector(".msg_user_tel_3");
    	const msg_user_tel_4 = document.querySelector(".msg_user_tel_4");
    	const msg_user_tel_5 = document.querySelector(".msg_user_tel_5");
    	const msg_user_tel_6 = document.querySelector(".msg_user_tel_6");
    	
    	// 기존에 저장된 전화번호를 저장(비교용)
    	var currentPhoneNumber = null;
    	if (phone_number.value != "") {
    		currentPhoneNumber = phone_number.value;
    	}
    	
    	// 전화번호 인증하기 버튼 누름의 유무
    	var authReqButtonPressed = false;
    	var authButtonPressed = false;
    	
    	// 전화번호 인증성공의 유무
    	var authSucceed = false;
    	
    	var authCode = "";
    	
    	$(document).ready(function() { // 창이 열리기 직후 실행
    		empty_values_alert();
    	});
    	
    	function empty_values_alert(){
    		if (address_input_1.value == "" || address_input_2.value == "" || phone_number.value == "") {
    			alert("올바른 배송처리를 위하여 주소와 전화번호를 기입해 주시기 바랍니다.");
    		}
    	}
    	
    	// 인증요청 버튼
    	authReqButton.onclick = () => {
    		const phoneNumberObj = document.querySelector('#phone-number');
    		let phoneNumber = phoneNumberObj.value;
    		
    		if (phone_number.value == "") {
				alert("전화번호를 먼저 입력해주세요.");
			} else if(phone_number.value.length != 11) {
				alert("전화번호가 올바른 형식이 아닙니다.\n010XXXXXXXX와 같이 '-' 를 제외하여 11자리로 입력바랍니다.");
			} else {
				$.ajax({
	    			type:"get",
	    			url:"/check/sendSMS",
	    			data: {
	    				"phoneNumber" : phoneNumber
	    			},
	    			dataType: "text",
	    			success: function(data) {
	    				authCode = data;
	    				auth_number.disabled = false;
	    				auth_button.disabled = false;
	    				authReqButtonPressed = true;
	    				alert("인증번호가 해당 전화번호로 전송되었습니다.");
	    			},
	    			error: function() {
	    				alert("비동기 처리 오류");
	    			}
	    		})
			}
    	}
    	
    	// 인증하기 버튼
    	authButton.onclick = () => {
    		const authNumberObj = document.querySelector('#auth-number');
    		let authNumber = authNumberObj.value;
    		authButtonPressed = true;
    		
    		if(authNumber == authCode) {
    			authSucceed = true;
    			msg_user_tel_1.style.display='none';
    			msg_user_tel_2.style.display='none';
    			msg_user_tel_3.style.display='none';
    			msg_user_tel_4.style.display='none';
    			msg_user_tel_5.style.display='none';
    			msg_user_tel_6.style.display='block';
    			alert("인증 성공");
    		} else {
    			authSucceed = false;
    			msg_user_tel_1.style.display='none';
    			msg_user_tel_2.style.display='none';
    			msg_user_tel_3.style.display='none';
    			msg_user_tel_4.style.display='none';
    			msg_user_tel_5.style.display='block';
    			msg_user_tel_6.style.display='none';
    			alert("인증 실패");
    		}
    	}
    	
    	// 성명 검증함수 (문제 : 반환 0, 성공 : 반환 1)
    	function verificateName(user_name) {
    		if (user_name.value == "") {
				msg_user_name_1.style.display='block';
				msg_user_name_2.style.display='none';
				return 0;
			} else if (user_name.value.length >= 21 || user_name.value.length <= 1) {
				msg_user_name_1.style.display='none';
				msg_user_name_2.style.display='block';
				return 0;
			} else {
				msg_user_name_1.style.display='none';
				msg_user_name_2.style.display='none';
				return 1;
			}
    	}
    	
    	// 주소 검증함수 (문제 : 반환 0, 성공 : 반환 1)
    	function verificateAddress(address_input_1, address_input_2) { 
    		if (address_input_1.value == "" || address_input_2.value == "") {
    			msg_user_address.style.display='block';
				return 0;
			} else {
				msg_user_address.style.display='none';
				return 1;
			}
    	}
    	
    	// 전화번호 검증 함수
    	function verificateTel(phone_number) {
    		if (phone_number.value == "") { // 전화번호 입력을 아예 하지 않았는가
    			msg_user_tel_1.style.display='block';
    			msg_user_tel_2.style.display='none';
    			msg_user_tel_3.style.display='none';
    			msg_user_tel_4.style.display='none';
    			msg_user_tel_5.style.display='none';
    			msg_user_tel_6.style.display='none';
				return 0;
			} else if (currentPhoneNumber == phone_number.value) { // 기존에 저장된 전화번호에서 수정을 하지 않았는가
				msg_user_tel_1.style.display='none';
				msg_user_tel_2.style.display='none';
    			msg_user_tel_3.style.display='none';
    			msg_user_tel_4.style.display='none';
    			msg_user_tel_5.style.display='none';
    			msg_user_tel_6.style.display='none';
				return 1;
			} else if (phone_number.value.length != 11) { // 전화번호가 11자리가 아닌가
    			msg_user_tel_1.style.display='none';
    			msg_user_tel_2.style.display='block';
    			msg_user_tel_3.style.display='none';
    			msg_user_tel_4.style.display='none';
    			msg_user_tel_5.style.display='none';
    			msg_user_tel_6.style.display='none';
				return 0;
			} else {
				if(authReqButtonPressed == false) { // 인증요청 버튼을 누르지 않았는가
					msg_user_tel_1.style.display='none';
	    			msg_user_tel_2.style.display='none';
	    			msg_user_tel_3.style.display='block';
	    			msg_user_tel_4.style.display='none';
	    			msg_user_tel_5.style.display='none';
	    			msg_user_tel_6.style.display='none';
					return 0;
				} else {
					if(authButtonPressed == false) { // 인증하기 버튼을 누르지 않았는가
						msg_user_tel_1.style.display='none';
		    			msg_user_tel_2.style.display='none';
		    			msg_user_tel_3.style.display='none';
		    			msg_user_tel_4.style.display='block';
		    			msg_user_tel_5.style.display='none';
		    			msg_user_tel_6.style.display='none';
						return 0;
					} else {
						if (authSucceed == false) { // 잘못된 인증번호로 인하여 인증이 실패하였는가
							msg_user_tel_1.style.display='none';
			    			msg_user_tel_2.style.display='none';
			    			msg_user_tel_3.style.display='none';
			    			msg_user_tel_4.style.display='none';
			    			msg_user_tel_5.style.display='block';
			    			msg_user_tel_6.style.display='none';
			    			return 0;
						} else { // 최종 인증성공
							msg_user_tel_1.style.display='none';
			    			msg_user_tel_2.style.display='none';
			    			msg_user_tel_3.style.display='none';
			    			msg_user_tel_4.style.display='none';
			    			msg_user_tel_5.style.display='none';
			    			msg_user_tel_6.style.display='block';
			    			return 1;
						}
					}
				}
			}
    	}
    	
    	executeButtons[0].onclick = () => { // 저장하기 버튼
    		if (confirm("회원정보를 갱신합니다.")) {
    			
    			var result = 0;
        		result += verificateName(user_name);
        		result += verificateAddress(address_input_1, address_input_2);
        		result += verificateTel(phone_number);
        		
    			if(result >= 3) { // 3 단계의 검증(이름,주소,전화번호) 를 다 거친 후 결과가 3 이상이면
    				updatingAccount();
    			} else {
    				alert("누락된 항목을 확인하세요.");
    			}	
    		}
    	}
    	
    	executeButtons[1].onclick = () => { // 취소 버튼
    		location.href='/index';
    	}
    	
    	executeButtons[2].onclick = () => { // 회원탈퇴 버튼
    		const user_id = document.querySelector('#user_id');
    		if (confirm("정말로 탈퇴하시겠습니까? 탈퇴 이후에도 주문하신 건은 처리되오니 안심하셔도 됩니다.")) {
    			$.ajax({
        			type:"delete",
        			url:"/myaccountdelete/" + user_id.value,
        			dataType:"text",
        			success: function(data) {
        				if (data == 1) {
        					alert("그동안 이용해주셔서 감사합니다.");
        					location.href='/logout';
        				} else {
        					alert("탈퇴 진행중 오류가 발생하였습니다.");
        					location.href='/myaccount';
        				}
        			},
        			error: function() {
        				alert("알 수 없는 오류 발생");
        			}
        		})
    		}
    	}
    	
    	// 회원정보 갱신 함수
    	function updatingAccount() {
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
                    $(".address_input_3").focus();
    	        }
    	    }).open();   
    	}