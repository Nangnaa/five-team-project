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
		alert("????????? 10~200??? ????????? ??????????????????.");
	} else {
		let reviewObj = {
    	"review_content":reviewWrite_Content.value,
    	"sales_id":review_salesid.value,
    	"user_id":reviewWrite_userid.value,
    	"review_score":star_score.value,
    	"ip":"" // ????????? controller?????? ?????????
	    }
	    $.ajax({
	    	type:"post",
	    	url:"/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value + "/writeReview",
	    	data: JSON.stringify(reviewObj),
	    	contentType:"application/JSON;charset=UTF-8",
	    	dataType:"text",
	    	success: function(data) {
	    		if (data == 1) {
	    			alert("????????? ?????????????????????.");
	    			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
	    		} else {
	    			alert("?????? ????????? ????????? ?????????????????????.");
	    			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
	    		}
	    	},
	    	error: function() {
	    		alert("??? ??? ?????? ?????? ??????");
	    	}
	    }) 
	}
}

function execution_review_delete(review_id){
	
    if (confirm("???????????? ????????? ???????????????.")) {
    	$.ajax({
        	type:"delete",
        	url:"/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value + "/deleteReview:" + review_id,
        	dataType:"text",
        	success: function(data) {
        		if (data == 1) {
        			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
        		} else {
        			alert("?????? ????????? ????????? ?????????????????????.");
        			location.href="/category/" + currentCategory.value + "/salesview/salesid:" + review_salesid.value;
        		}
        	},
        	error: function() {
        		alert("??? ??? ?????? ?????? ??????");
        	}
       	})
   	}
}