const reviewWriteButton = document.querySelector("#reviewWriteButton");
const currentCategory = document.querySelector("#currentCategory");
const review_salesid = document.querySelector("#review_salesid");
const star_score = document.querySelector("#star_score");
const reviewWrite_stars = document.querySelectorAll(".reviewWrite_stars");

reviewWrite_stars[0].onclick = () => {
	reviewWrite_stars[0].src = "/images/star_selected.png";
	reviewWrite_stars[1].src = "/images/star.png";
	reviewWrite_stars[2].src = "/images/star.png";
	reviewWrite_stars[3].src = "/images/star.png";
	reviewWrite_stars[4].src = "/images/star.png";
	star_score.value = 1;
}
reviewWrite_stars[1].onclick = () => {
	reviewWrite_stars[0].src = "/images/star_selected.png";
	reviewWrite_stars[1].src = "/images/star_selected.png";
	reviewWrite_stars[2].src = "/images/star.png";
	reviewWrite_stars[3].src = "/images/star.png";
	reviewWrite_stars[4].src = "/images/star.png";
	star_score.value = 2;
}
reviewWrite_stars[2].onclick = () => {
	reviewWrite_stars[0].src = "/images/star_selected.png";
	reviewWrite_stars[1].src = "/images/star_selected.png";
	reviewWrite_stars[2].src = "/images/star_selected.png";
	reviewWrite_stars[3].src = "/images/star.png";
	reviewWrite_stars[4].src = "/images/star.png";
	star_score.value = 3;
}
reviewWrite_stars[3].onclick = () => {
	reviewWrite_stars[0].src = "/images/star_selected.png";
	reviewWrite_stars[1].src = "/images/star_selected.png";
	reviewWrite_stars[2].src = "/images/star_selected.png";
	reviewWrite_stars[3].src = "/images/star_selected.png";
	reviewWrite_stars[4].src = "/images/star.png";
	star_score.value = 4;
}
reviewWrite_stars[4].onclick = () => {
	reviewWrite_stars[0].src = "/images/star_selected.png";
	reviewWrite_stars[1].src = "/images/star_selected.png";
	reviewWrite_stars[2].src = "/images/star_selected.png";
	reviewWrite_stars[3].src = "/images/star_selected.png";
	reviewWrite_stars[4].src = "/images/star_selected.png";
	star_score.value = 5;
}

reviewWriteButton.onclick = () => {
	const reviewWrite_Content = document.querySelector("#reviewWrite_Content");
	const reviewWrite_userid = document.querySelector("#reviewWrite_userid");
	
	if (reviewWrite_Content.value.length > 200 || reviewWrite_Content.value.length < 10) {
		alert("리뷰는 10~200자 내외로 작성바랍니다.");
	} else {
		let reviewObj = {
    	"review_content":reviewWrite_Content.value,
    	"sales_id":review_salesid.value,
    	"user_id":reviewWrite_userid.value,
    	"review_score":star_score.value,
    	"ip":"" // 나중에 controller에서 추가됨
	    }
	    $.ajax({
	    	type:"post",
	    	url:"/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value + "/writeReview",
	    	data: JSON.stringify(reviewObj),
	    	contentType:"application/JSON;charset=UTF-8",
	    	dataType:"text",
	    	success: function(data) {
	    		if (data == 1) {
	    			alert("리뷰를 작성하셨습니다.");
	    			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
	    		} else {
	    			alert("리뷰 등록중 오류가 발생하였습니다.");
	    			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
	    		}
	    	},
	    	error: function() {
	    		alert("알 수 없는 오류 발생");
	    	}
	    }) 
	}
}

function execution_review_delete(){
	const review_reviewid = document.querySelector('#review_reviewid');
	
    if (confirm("작성하신 리뷰를 삭제합니다.")) {
    	$.ajax({
        	type:"delete",
        	url:"/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value + "/deleteReview:" + review_reviewid.value,
        	dataType:"text",
        	success: function(data) {
        		if (data == 1) {
        			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
        		} else {
        			alert("리뷰 삭제중 오류가 발생하였습니다.");
        			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
        		}
        	},
        	error: function() {
        		alert("알 수 없는 오류 발생");
        	}
       	})
   	}
}