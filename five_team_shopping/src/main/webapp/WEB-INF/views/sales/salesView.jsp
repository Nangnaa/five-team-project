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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/index.css">
  <link rel="stylesheet" href="/css/sales/salesView.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:wght@100;300;600&display=swap" rel="stylesheet">
    <title>item_view</title>
</head>
<body>
    <jsp:include page="../include/index_include/index_header.jsp"/>

    <div class="container">
      <div class="inner_header">
        <span class="root_path"><a href="/index">HOME</a></span>
        <span>></span>
        <span class="current_path"><a href="/category/${currentCategory }">${fn:toUpperCase(currentCategory) }</a></span>
      </div>
            <div class="inner_box">
                <div class="img_part">
                    <img class="card-img-top" src="/images/${sales.category}_list/${sales.salesImg}" alt="image cap" width="478px" height="645px">
                </div>
                <div class="info_part">
                    <div class="info_box">
                        <div class="title_box">
                            <div class="info_title">
                                ${sales.sales_title}
                            </div>
                            <p class="info_price">
                                ${sales.sales_price}원
                            </p>
                        </div>
                       <div class="select_box">
                           <div class="color_select">
                                <div class="select_title">
                                    COLOR
                                </div>
                                <div class="option_box">
                                    <select name="color_select" id="color_select">
                                        <option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
                                        <option value="**" disabled="" link_image="">-----------------------<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option></option>
                                        <c:forEach items="${sales_color }" var="sales_color">
	                                        <option value="${sales_color }" link_image="">${sales_color }</option>
                                        </c:forEach>
                                    </select>
                                </div>
                           </div>
                           <div class="size_select">
                                <div class="select_title">
                                    SIZE
                                </div>
                                <div class="option_box">
                                    <select name="color_select" id="color_select">
                                        <option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option>
                                        <option value="**" disabled="" link_image="">-----------------------<option value="*" selected="" link_image="">- [필수] 옵션을 선택해 주세요 -</option></option>
                                        <c:forEach items="${sales_size }" var="sales_size">
	                                        <option value="${sales_size }" link_image="">${sales_size }</option>
                                        </c:forEach>
                                    </select>
                                </div>
                           </div>
                       </div>
                       <div class="dtl_btn_box">
                           <button class="dtl_btn">쇼핑백 담기</button>
                           <button class="dtl_btn">구매하기</button>
                       </div>
                    </div>
                </div>
            </div>
            ${sales.sales_content }
    </div>
    
    <hr>
    
    <div class="container">
    <h5>총 리뷰 수: ${reviewCount }</h5>
    <input type="hidden" id="review_salesid" value="${sales.sales_id }">
		<ul>
		 <c:forEach items="${review }" var="review">
		 	<li>
		        <div>
		        	<input type="hidden" id="review_reviewid" value="${review.review_id }">
		            ${review.user_name } / <fmt:formatDate value="${review.create_date}" pattern="yyyy-MM-dd" /> / 
		            
		           	<c:choose>
						<c:when test="${review.review_score eq 1 }">
							<img src="/images/star_selected.png" class="review_stars" width="14px" height="14px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
						</c:when>
						<c:when test="${review.review_score eq 2 }">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
						</c:when>
						<c:when test="${review.review_score eq 3 }">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
						</c:when>
						<c:when test="${review.review_score eq 4 }">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star.png" class="review_stars" width="18px" height="18px">
						</c:when>
						<c:otherwise>
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
							<img src="/images/star_selected.png" class="review_stars" width="18px" height="18px">
						</c:otherwise>
					</c:choose>
					
					<c:if test="${ principal.user.user_id == review.user_id || principal.user.user_role == 'ROLE_MANAGER'}"><a class="review_delete" onclick="execution_review_delete()">삭제하기</a></c:if>

		            <textarea rows="5" cols="50" style="width: 100%; height: 88px; resize: none; outline: none; border: 0px solid #dddddd" readonly="readonly" maxlength="512" name="content">${review.review_content }</textarea>
		        </div>
		    </li>
		 </c:forEach>
		</ul>
	</div>
	<c:if test="${!empty principal.user }">
		<div>
		   	<div class="container">
			    <label for="commentContent">리뷰 작성하기(10~200자 내외)</label>
			    <textarea rows="5" cols="50" style="width: 100%; height: 88px; resize: none; outline: none; border: 1px solid #dddddd" maxlength="512" id="reviewWrite_Content"></textarea>
			    <input type="hidden" id="reviewWrite_userid" value="${principal.user.user_id }">
			    별점 : <img src="/images/star_selected.png" class="reviewWrite_stars" width="28px" height="28px"><img src="/images/star_selected.png" class="reviewWrite_stars" width="28px" height="28px"><img src="/images/star_selected.png" class="reviewWrite_stars" width="28px" height="28px"><img src="/images/star.png" class="reviewWrite_stars" width="28px" height="28px"><img src="/images/star.png" class="reviewWrite_stars" width="28px" height="28px">
			    <input type="hidden" id="star_score" value="3">
			    <button type="button" class="btn btn-primary" id="reviewWriteButton" >리뷰 작성</button>
			    <input type="hidden" id="currentCategory" value="${currentCategory }">
		    </div>
		</div>
	</c:if>
	<jsp:include page="../include/index_include/index_footer.jsp"/>
    </body>
    <script src="https://kit.fontawesome.com/e4d94e4dfb.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/sales/review.js"></script>
</html>